using AspNet.Security.OpenIdConnect.Primitives;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using OpenIddict.Abstractions;
using OpenIddict.Core;
using OpenIddict.EntityFrameworkCore.Models;
using OpenIddict.Validation.AspNetCore;
using star_wars.entity.Context;
using star_wars.entity.DI;
using star_wars.entity.DTOs;
using star_wars.entity.Models;
using star_wars.entity.Services;
using star_wars.entity.Services.Interface;
using System.IdentityModel.Tokens.Jwt;
using System.Text;

var builder = WebApplication.CreateBuilder(args);

var authority = builder.Configuration["AuthSettings:Authority"];

// DbContext
builder.Services.AddDbContext<StarWarsDbContext>(options =>
{
    options.UseSqlServer(
        builder.Configuration.GetConnectionString("DefaultConnection"),
        sqlOptions => sqlOptions.EnableRetryOnFailure()
        );
    options.UseOpenIddict();
});

// Identity
builder.Services.AddIdentity<ApplicationUser, IdentityRole<Guid>>(options =>
{
    options.Password.RequireDigit = true;
    options.Password.RequiredLength = 6;
})
.AddEntityFrameworkStores<StarWarsDbContext>()
.AddDefaultTokenProviders();

builder.Services.AddOpenIddict()
    .AddCore(opt => opt.UseEntityFrameworkCore().UseDbContext<StarWarsDbContext>())
    .AddServer(opt =>
    {
        opt.AllowPasswordFlow()
           .AllowRefreshTokenFlow()
           .SetTokenEndpointUris("api/connect/token");
        opt.AcceptAnonymousClients();
        opt.AddDevelopmentEncryptionCertificate();
        opt.AddDevelopmentSigningCertificate();
        opt.UseAspNetCore().EnableTokenEndpointPassthrough();

        var server = opt.UseAspNetCore()
            .EnableTokenEndpointPassthrough();

        // Disable HTTPS requirement only in development
        server.DisableTransportSecurityRequirement();
        opt.DisableAccessTokenEncryption();

    });

builder.Services.AddOpenIddict()
    .AddValidation(opt =>
    {
        opt.UseLocalServer();
        opt.UseSystemNetHttp();
        opt.UseAspNetCore();
    });


builder.Services.AddAuthentication(options =>
{
    options.DefaultAuthenticateScheme = OpenIddictValidationAspNetCoreDefaults.AuthenticationScheme;
    options.DefaultChallengeScheme = OpenIddictValidationAspNetCoreDefaults.AuthenticationScheme;
})
.AddBearerToken()
.AddJwtBearer(JwtBearerDefaults.AuthenticationScheme, jwtOptions =>
    {
        jwtOptions.Authority = authority;
        jwtOptions.Audience = builder.Configuration["AuthSettings:Audience"];
        jwtOptions.RequireHttpsMetadata = false;
        jwtOptions.TokenValidationParameters = new TokenValidationParameters
        {
            ValidateIssuer = false,
            ValidateAudience = false,
            ValidIssuer = authority,
            IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(builder.Configuration["AuthSettings:Secret"]))
        };
    }
);

builder.Services.AddAuthorization();


// Add controllers and swagger
builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();


// CORS 
var allowedOrigins = builder.Configuration.GetSection("Cors:AllowedOrigins").Get<string[]>() ?? Array.Empty<string>();
builder.Services.AddCors(options =>
{
    options.AddPolicy("ConfiguredOrigins", policy =>
    {
        policy.WithOrigins(allowedOrigins)
              .AllowAnyMethod()
              .AllowAnyHeader();
    });
});


//Add Services to the container
builder.Services.AddSharedInfrastructure<StarWarsDbContext>();
builder.Services.AddScoped<IStarShipService, StarShipService>();
builder.Services.AddScoped<IOpenIddictTokenManager, OpenIddictTokenManager<OpenIddictEntityFrameworkCoreToken>>();



var app = builder.Build();

app.UseCors("ConfiguredOrigins");

// Configure the HTTP request pipeline.
app.UseSwagger();
app.UseSwaggerUI();

app.UseHttpsRedirection();

app.UseAuthentication();
app.UseRouting();
app.UseAuthorization();
app.UseEndpoints(endpoints =>
{
    endpoints.MapControllers()
    .RequireAuthorization();
});
app.MapControllers();

app.Run();


