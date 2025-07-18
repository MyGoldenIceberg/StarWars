using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using OpenIddict.Abstractions;
using OpenIddict.Server.AspNetCore;
using OpenIddict.Validation.AspNetCore;
using star_wars.entity.DTOs;
using star_wars.entity.Models;
using System.Security.Claims;
using static OpenIddict.Abstractions.OpenIddictConstants;

namespace star_wars_api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthController : ControllerBase
    {
        private readonly SignInManager<ApplicationUser> _signInManager;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly IOpenIddictTokenManager _tokenManager;

        public AuthController(
            SignInManager<ApplicationUser> signInManager,
            UserManager<ApplicationUser> userManager,
            IOpenIddictTokenManager tokenManager)
        {
            _signInManager = signInManager;
            _userManager = userManager;
            _tokenManager = tokenManager;
        }

        [HttpPost("~/api/connect/token"), Produces("application/json")]
        [AllowAnonymous]
        public async Task<IActionResult> Token()
        {
            var request = HttpContext.GetOpenIddictServerRequest();
            if (request == null || !request.IsPasswordGrantType())
                return BadRequest("Unsupported grant type");

            var user = await _userManager.FindByNameAsync(request.Username);
            if (user == null || !await _userManager.CheckPasswordAsync(user, request.Password))
                return Forbid();

            var principal = await _signInManager.CreateUserPrincipalAsync(user);

            // Add subscription claim from TokenService
            var identity = (ClaimsIdentity)principal.Identity!;

            //  Add the required 'sub' claim for OpenIddict
            identity.AddClaim(new Claim(OpenIddictConstants.Claims.Subject, user.Id.ToString()));

            principal.SetScopes(Scopes.OpenId, Scopes.Email, Scopes.Profile, Scopes.OfflineAccess);
            principal.SetResources("resource_server");

            return SignIn(principal, OpenIddictServerAspNetCoreDefaults.AuthenticationScheme);
        }

        [HttpPost("logout")]
        [Authorize(AuthenticationSchemes = OpenIddictValidationAspNetCoreDefaults.AuthenticationScheme)]
        public async Task<IActionResult> Logout(CancellationToken cancellationToken)
        {
            var result = await HttpContext.AuthenticateAsync(OpenIddictValidationAspNetCoreDefaults.AuthenticationScheme);
            if (!result.Succeeded || result.Principal == null)
                return Unauthorized();

            var principal = result.Principal;

            // Get the token ID from the current principal
            var tokenId = principal.GetTokenId();
            if (string.IsNullOrEmpty(tokenId))
                return BadRequest("Token ID not found in principal.");

            // Revoke the token
            var token = await _tokenManager.FindByIdAsync(tokenId);
            if (token == null)
                return BadRequest("Token not found.");

            var success = await _tokenManager.TryRevokeAsync(token, cancellationToken);

            return Ok(new
            {
                message = success ? "Successfully logged out." : "Token was already revoked or invalid."
            });
        }

        [HttpPost("register")]
        [AllowAnonymous]
        public async Task<IActionResult> Register([FromBody] RegisterDto model)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            var existingUser = await _userManager.FindByEmailAsync(model.Email);
            if (existingUser != null)
                return BadRequest(new { message = "User with this email already exists." });

            var user = new ApplicationUser
            {
                UserName = model.Email,
                Email = model.Email
            };

            var result = await _userManager.CreateAsync(user, model.Password);

            if (!result.Succeeded)
            {
                return BadRequest(new
                {
                    message = "Registration failed.",
                    errors = result.Errors.Select(e => e.Description)
                });
            }

            return Ok(new { message = "User registered successfully." });
        }
    }
}
