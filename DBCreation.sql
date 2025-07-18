
/****** Object:  Database [starwars]    Script Date: 7/17/2025 8:11:15 PM ******/
CREATE DATABASE [starwars]
 
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 7/17/2025 8:11:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/17/2025 8:11:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/17/2025 8:11:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/17/2025 8:11:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/17/2025 8:11:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/17/2025 8:11:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 7/17/2025 8:11:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpenIddictApplications]    Script Date: 7/17/2025 8:11:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpenIddictApplications](
	[Id] [nvarchar](450) NOT NULL,
	[ApplicationType] [nvarchar](50) NULL,
	[ClientId] [nvarchar](100) NULL,
	[ClientSecret] [nvarchar](max) NULL,
	[ClientType] [nvarchar](50) NULL,
	[ConcurrencyToken] [nvarchar](50) NULL,
	[ConsentType] [nvarchar](50) NULL,
	[DisplayName] [nvarchar](max) NULL,
	[DisplayNames] [nvarchar](max) NULL,
	[JsonWebKeySet] [nvarchar](max) NULL,
	[Permissions] [nvarchar](max) NULL,
	[PostLogoutRedirectUris] [nvarchar](max) NULL,
	[Properties] [nvarchar](max) NULL,
	[RedirectUris] [nvarchar](max) NULL,
	[Requirements] [nvarchar](max) NULL,
	[Settings] [nvarchar](max) NULL,
 CONSTRAINT [PK_OpenIddictApplications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpenIddictAuthorizations]    Script Date: 7/17/2025 8:11:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpenIddictAuthorizations](
	[Id] [nvarchar](450) NOT NULL,
	[ApplicationId] [nvarchar](450) NULL,
	[ConcurrencyToken] [nvarchar](50) NULL,
	[CreationDate] [datetime2](7) NULL,
	[Properties] [nvarchar](max) NULL,
	[Scopes] [nvarchar](max) NULL,
	[Status] [nvarchar](50) NULL,
	[Subject] [nvarchar](400) NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_OpenIddictAuthorizations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpenIddictScopes]    Script Date: 7/17/2025 8:11:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpenIddictScopes](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyToken] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Descriptions] [nvarchar](max) NULL,
	[DisplayName] [nvarchar](max) NULL,
	[DisplayNames] [nvarchar](max) NULL,
	[Name] [nvarchar](200) NULL,
	[Properties] [nvarchar](max) NULL,
	[Resources] [nvarchar](max) NULL,
 CONSTRAINT [PK_OpenIddictScopes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpenIddictTokens]    Script Date: 7/17/2025 8:11:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpenIddictTokens](
	[Id] [nvarchar](450) NOT NULL,
	[ApplicationId] [nvarchar](450) NULL,
	[AuthorizationId] [nvarchar](450) NULL,
	[ConcurrencyToken] [nvarchar](50) NULL,
	[CreationDate] [datetime2](7) NULL,
	[ExpirationDate] [datetime2](7) NULL,
	[Payload] [nvarchar](max) NULL,
	[Properties] [nvarchar](max) NULL,
	[RedemptionDate] [datetime2](7) NULL,
	[ReferenceId] [nvarchar](100) NULL,
	[Status] [nvarchar](50) NULL,
	[Subject] [nvarchar](400) NULL,
	[Type] [nvarchar](150) NULL,
 CONSTRAINT [PK_OpenIddictTokens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Starships]    Script Date: 7/17/2025 8:11:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Starships](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Model] [nvarchar](max) NOT NULL,
	[Manufacturer] [nvarchar](max) NOT NULL,
	[StarshipClass] [nvarchar](max) NOT NULL,
	[HyperdriveRating] [nvarchar](max) NOT NULL,
	[Crew] [nvarchar](max) NOT NULL,
	[Passengers] [nvarchar](max) NOT NULL,
	[MGLT] [nvarchar](max) NOT NULL,
	[CargoCapacity] [nvarchar](max) NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[ModifiedOn] [datetime2](7) NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Consumables] [nvarchar](max) NOT NULL,
	[CostInCredits] [nvarchar](max) NOT NULL,
	[Length] [nvarchar](max) NOT NULL,
	[MaxAtmospheringSpeed] [nvarchar](max) NOT NULL,
	[FilmsJson] [nvarchar](max) NOT NULL,
	[PilotsJson] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Starships] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250713162003_InitialCreate', N'8.0.18')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250713234014_EntityUpdate', N'8.0.18')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250714194309_PilotFilmAddition', N'8.0.18')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fbaa7940-7104-43bb-583b-08ddc32fbaa5', N'testuser', N'TESTUSER', N'test@example.com', N'TEST@EXAMPLE.COM', 0, N'AQAAAAIAAYagAAAAENDR4LQFMUanQrSBdRUdR0969GEdavxSsboX84RmxfnlBb3CDnA2qKdnYfysbwqIYg==', N'QNLQZZZUL75TYRUYH45WP4ETOFWQIL5U', N'852b6d6e-0d92-4136-97b6-5d168b066f88', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7957b66b-af2c-4081-036f-08ddc3fc1850', N'example@test.com', N'EXAMPLE@TEST.COM', N'example@test.com', N'EXAMPLE@TEST.COM', 0, N'AQAAAAIAAYagAAAAELj8e3DmJ6bUDnQXhZEkj5vuJFNGjc4KKzn1XxDw+48GhQnUIjFUeoKxzA5m7EcWAA==', N'ALQRRRQ4HFMMN7G744Q44FQM3C72AXDB', N'58fc3288-6abc-4777-84bf-c84876f676b5', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'testuser@exm.com', N'TESTUSER@EXM.COM', N'testuser@exm.com', N'TESTUSER@EXM.COM', 0, N'AQAAAAIAAYagAAAAEBI+JTQesXJ+iulM23w+o42YDe0aikjKqx9dGvkcGMBLnQMOLL2hCy1lsT2sIfKlBA==', N'OF7MEHLOVFLQUY3UOAX4ZCYEX3IRUAJG', N'2ddad8ca-aeef-4cf0-821b-1d0b5a8a0819', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'0a640fc7-59a9-45a2-a3e1-55e32a9c8248', NULL, N'c15cf283-9337-4b9f-ac75-9d565afd12f8', CAST(N'2025-07-16T18:08:22.9359152' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'0b9f1290-80cd-439b-8ae1-f9e78539c4f9', NULL, N'bdee7564-f6e3-4ecc-a5d2-81397255b3b2', CAST(N'2025-07-17T12:06:38.7753731' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'0d483277-66b5-4819-9577-3e779f560381', NULL, N'38b5cc20-9023-44d6-9328-ffce1d57daec', CAST(N'2025-07-16T12:39:05.9784083' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'0e473552-7b46-429a-9b29-141f9216b208', NULL, N'b2669d7b-381b-4e62-a333-49c72365eac3', CAST(N'2025-07-16T00:03:13.3198072' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'7957b66b-af2c-4081-036f-08ddc3fc1850', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'10c70fe6-2d23-451d-b6c8-b2ce7c965e74', NULL, N'468f3899-a65d-4eb8-86f4-073a72a37271', CAST(N'2025-07-15T00:19:12.1717698' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'fbaa7940-7104-43bb-583b-08ddc32fbaa5', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'1afd2d11-5db7-45fe-8403-bbfae13d48b5', NULL, N'6f09c9be-ffc3-4bf7-8906-8a49dd79f2e9', CAST(N'2025-07-16T11:31:32.2952855' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'1b3bae61-8067-4df0-9820-4c61b3b8cafd', NULL, N'37daab00-cbe0-4b52-9b0d-7768bdcb5658', CAST(N'2025-07-16T11:19:17.9793714' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'1cd7e01e-20e4-4b68-bad6-b513fc1c5de5', NULL, N'6939d8ad-2797-40d6-b12e-4dc9e61319c9', CAST(N'2025-07-16T15:51:21.5677968' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'1def759a-ba41-4a1f-bed6-030304683fa7', NULL, N'11135293-d6e3-4c5c-aeca-e00a96e1479a', CAST(N'2025-07-16T22:34:52.8137742' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'20013f23-6232-4444-913c-95098c69716e', NULL, N'a83ac4f0-b7eb-40ae-9d67-4dc8245ac62f', CAST(N'2025-07-16T11:19:06.6047371' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'2123bbe1-51c8-4009-a2f3-5ffa1e033e45', NULL, N'f42f6bd9-39fc-4ff3-8677-30881993204b', CAST(N'2025-07-16T23:27:55.6271305' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'31a5564f-05d0-4030-9608-05e24cf7f7dd', NULL, N'd0bfde3b-7857-4cd4-9194-e71321be048e', CAST(N'2025-07-16T15:46:19.7026195' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'37d4ef19-7f4b-4520-87a3-f09408f3473b', NULL, N'839c9e9a-4d94-451d-81f7-06e170bdadad', CAST(N'2025-07-16T00:41:33.0218196' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'4ae82a08-57f6-4f81-8547-1b8405f26c17', NULL, N'7abb5576-0dfd-456c-a400-87f97d99a1a1', CAST(N'2025-07-16T18:08:22.9359933' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'6000f6e5-edfa-46cb-bc35-4b4d28b68a48', NULL, N'0a943e5b-9af7-4e60-94e3-632c16beeb31', CAST(N'2025-07-16T18:08:22.9359836' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'64315d92-b343-45fe-9b4b-7ed533a8a14d', NULL, N'0cfe9b55-9246-4670-b5be-8a4aafd763e6', CAST(N'2025-07-15T23:00:57.7190443' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'fbaa7940-7104-43bb-583b-08ddc32fbaa5', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'71258982-6066-4fa3-9804-20def9f3f8e2', NULL, N'06245b01-ec10-4150-af3b-b843ae8e056d', CAST(N'2025-07-16T13:06:25.5762246' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'7db03fe6-7972-4f29-8918-30b2706dd1a5', NULL, N'b00fa94f-fe0b-4bac-8bcb-e67f52e4c340', CAST(N'2025-07-17T12:08:47.6810627' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'8eebffbc-b4c3-4401-8252-fe42195e395e', NULL, N'8a5c51ed-10c2-4b0b-b3c8-e7cdae928cb3', CAST(N'2025-07-17T12:08:26.9629447' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'9a94d927-9a26-42ee-a34e-80a37c4c9c50', NULL, N'77185030-b5b1-4384-aa10-90b710523383', CAST(N'2025-07-15T23:08:17.8732014' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'fbaa7940-7104-43bb-583b-08ddc32fbaa5', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'a2a27c71-4908-4b7c-9a13-05d9b38f12cb', NULL, N'861fe3e3-10e6-4ec6-95e7-f4b8dee616ec', CAST(N'2025-07-16T11:49:48.7561012' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'7957b66b-af2c-4081-036f-08ddc3fc1850', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'a421048b-ca67-4d9b-bfe9-f23fab2b1213', NULL, N'3310134e-e6b8-41ed-827f-155317714083', CAST(N'2025-07-16T18:08:22.9359371' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'ad29a97e-49bb-44aa-8f65-6c20db7dbfd7', NULL, N'e60edb24-b2cf-4365-a201-0ea16288c18c', CAST(N'2025-07-16T21:28:55.7625179' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'ad53d538-1acb-419c-8593-b02ba271948c', NULL, N'964f9cde-51dd-4d6e-83e7-d0d34babafc4', CAST(N'2025-07-16T11:36:41.8815674' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'b1d6c42f-492f-433f-99f7-1e12aecae1a3', NULL, N'd798ae1b-37f9-4eb8-a6c6-630f2ae800d4', CAST(N'2025-07-16T18:28:35.9678939' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'bd901fe6-8a0d-4e63-a25b-59b40062ca20', NULL, N'b0dea869-11f6-48d6-adbe-69494d684643', CAST(N'2025-07-17T12:09:03.7168435' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'bfed21ae-bb08-4c81-a881-26aabdb6f3c2', NULL, N'72e79bd2-32ad-4b5d-9bb6-f8d0ed385856', CAST(N'2025-07-16T19:43:55.4625556' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'c6085e02-08d4-4ff5-a100-5ef292a4a632', NULL, N'd2e8af38-d19d-4529-b1cc-29cec124c225', CAST(N'2025-07-16T12:59:57.8432862' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'e04f71d5-3a99-4944-9bab-676e799e1d9c', NULL, N'0b559e9f-fd55-4f4a-aff3-7db7a7b4b276', CAST(N'2025-07-15T22:35:46.5992430' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'fbaa7940-7104-43bb-583b-08ddc32fbaa5', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'e4e7cef4-2fcb-4ec0-9b48-706e71df43bb', NULL, N'05d116e4-78da-4cf4-af50-075053513cc2', CAST(N'2025-07-16T12:06:34.3909501' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'eb70386a-e51c-4957-a478-f32006c1801f', NULL, N'18a60003-e020-41ba-ace0-dfd6e1b7812d', CAST(N'2025-07-17T12:05:38.4159179' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'7957b66b-af2c-4081-036f-08ddc3fc1850', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'f0129996-0507-468b-b79a-4e16dcc1812d', NULL, N'79bd6c81-3b7b-4a93-b9f1-547676235999', CAST(N'2025-07-17T12:02:53.4115561' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'f0e5ec28-b02a-4130-8a45-c3f73b23d96b', NULL, N'c5557fc4-bcc2-4ee6-b46f-c2fdb4a8bfa0', CAST(N'2025-07-15T23:08:07.9174344' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'fbaa7940-7104-43bb-583b-08ddc32fbaa5', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'f30f2c39-d029-4941-a235-84c3ca93031b', NULL, N'46cc37b3-2ea6-4840-a578-61b6f62a714a', CAST(N'2025-07-16T11:33:48.3172637' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'fc4f3442-732d-4dec-bbaf-61ae9e591696', NULL, N'ace4d3bd-0a01-46f5-9196-a870b22ad7ef', CAST(N'2025-07-16T20:42:00.4413992' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'7957b66b-af2c-4081-036f-08ddc3fc1850', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictAuthorizations] ([Id], [ApplicationId], [ConcurrencyToken], [CreationDate], [Properties], [Scopes], [Status], [Subject], [Type]) VALUES (N'fc74c3be-ad99-45ba-b013-55b7a60594fa', NULL, N'db54631e-0bdd-4e76-ac9f-330b545a76d9', CAST(N'2025-07-15T23:02:48.2102301' AS DateTime2), NULL, N'["openid","email","profile","offline_access"]', N'valid', N'fbaa7940-7104-43bb-583b-08ddc32fbaa5', N'ad-hoc')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'025918ca-1f23-424d-8000-23c12e6dc44a', NULL, N'1afd2d11-5db7-45fe-8403-bbfae13d48b5', N'068c819b-119d-4446-a579-6a33d6db32f4', CAST(N'2025-07-16T11:31:32.0000000' AS DateTime2), CAST(N'2025-07-16T12:31:32.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'042505cb-4218-4ed4-9089-50963be20ee4', NULL, N'0d483277-66b5-4819-9577-3e779f560381', N'f91bd5f0-a205-434a-8a39-6dd56ecd4828', CAST(N'2025-07-16T12:39:06.0000000' AS DateTime2), CAST(N'2025-07-30T12:39:06.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'05083654-9375-4427-a1a3-f918f585f4bf', NULL, N'37d4ef19-7f4b-4520-87a3-f09408f3473b', N'5a594377-3cc8-4ae6-a2f0-80c868f99d3a', CAST(N'2025-07-16T00:41:33.0000000' AS DateTime2), CAST(N'2025-07-16T01:41:33.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'06227a1b-ada2-4d49-a5be-488f45dc9d6c', NULL, N'bd901fe6-8a0d-4e63-a25b-59b40062ca20', N'0715c4ab-6771-4d1a-868a-559ead41ba6d', CAST(N'2025-07-17T12:09:03.0000000' AS DateTime2), CAST(N'2025-07-17T12:29:03.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'084ac307-28e0-49b2-810b-f4f08e63e96a', NULL, N'0b9f1290-80cd-439b-8ae1-f9e78539c4f9', N'491ea92d-98e3-41bf-acf9-a0bb88465b61', CAST(N'2025-07-17T12:06:38.0000000' AS DateTime2), CAST(N'2025-07-17T13:06:38.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'revoked', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'0b0d3c66-3328-4f5f-8cff-5e2843bced94', NULL, N'71258982-6066-4fa3-9804-20def9f3f8e2', N'5ed99a6a-cb93-4fb0-84f4-eaabfa46ad4f', CAST(N'2025-07-16T13:06:25.0000000' AS DateTime2), CAST(N'2025-07-16T14:06:25.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'1191707e-e799-4b9b-8736-51ca4fd7518f', NULL, N'0b9f1290-80cd-439b-8ae1-f9e78539c4f9', N'ceb1ba73-8669-47f1-b9e7-17379942fd76', CAST(N'2025-07-17T12:06:38.0000000' AS DateTime2), CAST(N'2025-07-31T12:06:38.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'1208f9b7-1b72-4585-a758-32ce559ce05b', NULL, N'9a94d927-9a26-42ee-a34e-80a37c4c9c50', N'1c5bc630-9042-4403-b045-6997cfb869d9', CAST(N'2025-07-15T23:08:17.0000000' AS DateTime2), CAST(N'2025-07-16T00:08:17.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'fbaa7940-7104-43bb-583b-08ddc32fbaa5', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'15218951-ede1-40aa-968d-1f5ce446b696', NULL, N'10c70fe6-2d23-451d-b6c8-b2ce7c965e74', N'b217e782-18a7-4ad1-a51b-7b1a251f4194', CAST(N'2025-07-15T00:19:12.0000000' AS DateTime2), CAST(N'2025-07-15T01:19:12.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'fbaa7940-7104-43bb-583b-08ddc32fbaa5', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'2000b6d7-772a-4589-bf06-fc38d0924ba3', NULL, N'e4e7cef4-2fcb-4ec0-9b48-706e71df43bb', N'a118d308-b4a3-4fb5-8195-b438243d4dd1', CAST(N'2025-07-16T12:06:34.0000000' AS DateTime2), CAST(N'2025-07-30T12:06:34.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'20e00536-6fc8-4a3d-8e6e-f0e1ba70ce46', NULL, N'9a94d927-9a26-42ee-a34e-80a37c4c9c50', N'f94da448-2594-4432-8ac2-c3213677e8af', CAST(N'2025-07-15T23:08:17.0000000' AS DateTime2), CAST(N'2025-07-29T23:08:17.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'fbaa7940-7104-43bb-583b-08ddc32fbaa5', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'2108059e-17b3-4104-9847-a2dceb8b2b19', NULL, N'7db03fe6-7972-4f29-8918-30b2706dd1a5', N'536a2dd2-9aea-4bef-aa06-2593aa190aa2', CAST(N'2025-07-17T12:08:47.0000000' AS DateTime2), CAST(N'2025-07-17T13:08:47.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'revoked', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'229fb2e7-7ad7-40df-9d81-519908d79553', NULL, N'10c70fe6-2d23-451d-b6c8-b2ce7c965e74', N'c720d8db-e6f0-4db6-8c15-9c76ee4511aa', CAST(N'2025-07-15T00:19:12.0000000' AS DateTime2), CAST(N'2025-07-15T00:39:12.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'fbaa7940-7104-43bb-583b-08ddc32fbaa5', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'25eaf03f-61df-4a5a-b14c-4e68d10067ae', NULL, N'0d483277-66b5-4819-9577-3e779f560381', N'a028e1b1-6949-4c1c-8376-1a8448686659', CAST(N'2025-07-16T12:39:06.0000000' AS DateTime2), CAST(N'2025-07-16T12:59:06.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'272947ab-9bba-403f-b035-c6ca396784ce', NULL, N'b1d6c42f-492f-433f-99f7-1e12aecae1a3', N'6e2829ab-1b54-42f6-bd89-148e5cc54b57', CAST(N'2025-07-16T18:28:36.0000000' AS DateTime2), CAST(N'2025-07-16T18:48:36.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'2d8c85d6-e190-49de-b7c5-6bdc4d6c00cc', NULL, N'1b3bae61-8067-4df0-9820-4c61b3b8cafd', N'b833854b-8abf-4111-8882-370f74ecb28e', CAST(N'2025-07-16T11:19:18.0000000' AS DateTime2), CAST(N'2025-07-16T11:39:18.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'32637da5-b04e-45e7-a5a2-622d22ed42ae', NULL, N'0e473552-7b46-429a-9b29-141f9216b208', N'3fbfacec-b18d-4bf4-b99e-96404534aedb', CAST(N'2025-07-16T00:03:13.0000000' AS DateTime2), CAST(N'2025-07-16T00:23:13.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'7957b66b-af2c-4081-036f-08ddc3fc1850', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'38d14dfb-01f4-4870-9de3-f10af58c22d5', NULL, N'1def759a-ba41-4a1f-bed6-030304683fa7', N'0666cad7-4e94-4d00-a2df-a6610b4d8e3e', CAST(N'2025-07-16T22:34:52.0000000' AS DateTime2), CAST(N'2025-07-30T22:34:52.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'3b561258-d3c6-431c-acea-7d175a62659c', NULL, N'bd901fe6-8a0d-4e63-a25b-59b40062ca20', N'0205ca6d-4296-4f2a-9198-4b644587fb4e', CAST(N'2025-07-17T12:09:03.0000000' AS DateTime2), CAST(N'2025-07-17T13:09:03.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'3b752f5b-53f6-4d77-9fdf-663682ef2c3d', NULL, N'1def759a-ba41-4a1f-bed6-030304683fa7', N'c50d1d74-132d-4ad3-828c-504bef3b411c', CAST(N'2025-07-16T22:34:52.0000000' AS DateTime2), CAST(N'2025-07-16T23:34:52.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'revoked', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'3b9898f4-06cb-4e7c-ae12-ba4a2b329409', NULL, N'71258982-6066-4fa3-9804-20def9f3f8e2', N'0ac54296-7ad5-42af-aef0-3f215e126028', CAST(N'2025-07-16T13:06:25.0000000' AS DateTime2), CAST(N'2025-07-16T13:26:25.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'3bb95e95-c55f-4241-a6cf-ae952673dad7', NULL, N'0e473552-7b46-429a-9b29-141f9216b208', N'be2d0e8f-feeb-44eb-94ff-33c050a25f02', CAST(N'2025-07-16T00:03:13.0000000' AS DateTime2), CAST(N'2025-07-16T01:03:13.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'7957b66b-af2c-4081-036f-08ddc3fc1850', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'3d08743b-dcdc-4c54-b0fd-773dd6721eda', NULL, N'1b3bae61-8067-4df0-9820-4c61b3b8cafd', N'f99e64e5-6899-4bdd-805d-941c31cfb5c3', CAST(N'2025-07-16T11:19:17.0000000' AS DateTime2), CAST(N'2025-07-30T11:19:17.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'42b0fe3a-362f-4817-b9eb-43dc0f2fee7e', NULL, N'64315d92-b343-45fe-9b4b-7ed533a8a14d', N'da2f0ec4-048d-42e0-9b52-1d8de8dd33a4', CAST(N'2025-07-15T23:00:57.0000000' AS DateTime2), CAST(N'2025-07-29T23:00:57.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'fbaa7940-7104-43bb-583b-08ddc32fbaa5', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'45a2c702-a219-4550-af81-b25356899ccc', NULL, N'7db03fe6-7972-4f29-8918-30b2706dd1a5', N'2fa40898-50b3-488d-bb2f-9be306f4e990', CAST(N'2025-07-17T12:08:47.0000000' AS DateTime2), CAST(N'2025-07-17T12:28:47.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'4a8d52e3-d44d-4118-a9ea-2bc6f2feb8cc', NULL, N'7db03fe6-7972-4f29-8918-30b2706dd1a5', N'116b2b6e-ffae-42db-9b6d-3b9f5fab8f93', CAST(N'2025-07-17T12:08:47.0000000' AS DateTime2), CAST(N'2025-07-31T12:08:47.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'4ddc1442-e2ea-479b-ad3d-abe1709dd724', NULL, N'eb70386a-e51c-4957-a478-f32006c1801f', N'b462962c-bf5b-45f8-83d3-64699633fd37', CAST(N'2025-07-17T12:05:38.0000000' AS DateTime2), CAST(N'2025-07-17T13:05:38.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'7957b66b-af2c-4081-036f-08ddc3fc1850', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'4edd94ca-4785-4e0d-a161-2f275b46098a', NULL, N'2123bbe1-51c8-4009-a2f3-5ffa1e033e45', N'7ec770c2-a86a-4daf-9861-7cde96fd1c88', CAST(N'2025-07-16T23:27:55.0000000' AS DateTime2), CAST(N'2025-07-30T23:27:55.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'4f68cf42-fe7b-4eb5-a871-dcc1519a9085', NULL, N'31a5564f-05d0-4030-9608-05e24cf7f7dd', N'6d640a9f-4af2-4cd6-9ac6-edf6936e072f', CAST(N'2025-07-16T15:46:19.0000000' AS DateTime2), CAST(N'2025-07-16T16:06:19.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'53e17225-72a1-4796-bb1a-1a2f2064dbcc', NULL, N'20013f23-6232-4444-913c-95098c69716e', N'56386dc2-5aba-497e-badd-65499619c120', CAST(N'2025-07-16T11:19:06.0000000' AS DateTime2), CAST(N'2025-07-16T11:39:06.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'588b13da-a511-4856-b08b-dd7c4777871e', NULL, N'a421048b-ca67-4d9b-bfe9-f23fab2b1213', N'32a02a69-dfd5-4cef-a5b7-803a4d7dd7b9', CAST(N'2025-07-16T18:08:23.0000000' AS DateTime2), CAST(N'2025-07-16T19:08:23.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'599ca6c1-3690-4659-a3df-febae2bf56de', NULL, N'f0129996-0507-468b-b79a-4e16dcc1812d', N'e150b0dc-481d-43a2-85f2-d0ff84491788', CAST(N'2025-07-17T12:02:53.0000000' AS DateTime2), CAST(N'2025-07-17T13:02:53.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'revoked', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'5a26d7f7-eb37-42a1-8103-613231389beb', NULL, N'f30f2c39-d029-4941-a235-84c3ca93031b', N'265f6f81-1508-4524-934d-3787b8189420', CAST(N'2025-07-16T11:33:48.0000000' AS DateTime2), CAST(N'2025-07-30T11:33:48.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'5e5f56b3-358e-4995-acdc-695b72341f85', NULL, N'37d4ef19-7f4b-4520-87a3-f09408f3473b', N'23361d6e-8eec-49ac-8ba8-06d2fbf80154', CAST(N'2025-07-16T00:41:33.0000000' AS DateTime2), CAST(N'2025-07-16T01:01:33.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'5f1b983c-1b12-4420-8bfc-7dbe36a1b728', NULL, N'e4e7cef4-2fcb-4ec0-9b48-706e71df43bb', N'60580869-7196-4490-b2f5-fd86014eaed3', CAST(N'2025-07-16T12:06:34.0000000' AS DateTime2), CAST(N'2025-07-16T13:06:34.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'5fd017e9-ffab-4bbd-b256-fada9eae8e5e', NULL, N'1cd7e01e-20e4-4b68-bad6-b513fc1c5de5', N'5b051e14-680a-4b50-9a43-3019299ea290', CAST(N'2025-07-16T15:51:21.0000000' AS DateTime2), CAST(N'2025-07-16T16:11:21.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'6166bfc0-f2da-4cbc-a03c-b1e0fa9dd5ef', NULL, N'6000f6e5-edfa-46cb-bc35-4b4d28b68a48', N'61b039c8-7f8b-4f36-beb6-f918c664abc5', CAST(N'2025-07-16T18:08:23.0000000' AS DateTime2), CAST(N'2025-07-30T18:08:23.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'61c9624f-96fb-46e8-8f87-5094c8ac17d8', NULL, N'8eebffbc-b4c3-4401-8252-fe42195e395e', N'f8cab7d1-0e8d-4b2e-9e98-8456633a7ae3', CAST(N'2025-07-17T12:08:26.0000000' AS DateTime2), CAST(N'2025-07-31T12:08:26.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'6265df13-21d4-4405-aa86-38ffa0cf0ac2', NULL, N'eb70386a-e51c-4957-a478-f32006c1801f', N'49d1a312-5d2a-4a8a-bf58-f4ab7c81376e', CAST(N'2025-07-17T12:05:38.0000000' AS DateTime2), CAST(N'2025-07-17T12:25:38.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'7957b66b-af2c-4081-036f-08ddc3fc1850', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'63a04e74-b901-4a8a-8b49-ff0afcdafd94', NULL, N'a2a27c71-4908-4b7c-9a13-05d9b38f12cb', N'28fd2180-ff70-42ba-baf3-152ac01fef7c', CAST(N'2025-07-16T11:49:48.0000000' AS DateTime2), CAST(N'2025-07-16T12:49:48.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'7957b66b-af2c-4081-036f-08ddc3fc1850', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'64a0cef4-9983-4afa-be64-6e84150ae0d9', NULL, N'64315d92-b343-45fe-9b4b-7ed533a8a14d', N'b72b6ec4-7d8f-40e3-b3df-f884121c1f20', CAST(N'2025-07-15T23:00:57.0000000' AS DateTime2), CAST(N'2025-07-16T00:00:57.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'fbaa7940-7104-43bb-583b-08ddc32fbaa5', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'6aa4d0cd-6082-40ea-880b-f23dc15861c0', NULL, N'8eebffbc-b4c3-4401-8252-fe42195e395e', N'b988a493-501a-41e3-a3ee-652aee443939', CAST(N'2025-07-17T12:08:26.0000000' AS DateTime2), CAST(N'2025-07-17T12:28:26.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'6ee10f5d-d0b8-4535-8e43-194441f05bbc', NULL, N'6000f6e5-edfa-46cb-bc35-4b4d28b68a48', N'be164696-1f48-42fa-b03a-00b5ccf77439', CAST(N'2025-07-16T18:08:23.0000000' AS DateTime2), CAST(N'2025-07-16T18:28:23.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'6fa94fb3-cce9-4349-8bc2-a3d80d116c97', NULL, N'a2a27c71-4908-4b7c-9a13-05d9b38f12cb', N'bf88bb7d-2235-4529-85d8-9b5ad9e354bc', CAST(N'2025-07-16T11:49:48.0000000' AS DateTime2), CAST(N'2025-07-30T11:49:48.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'7957b66b-af2c-4081-036f-08ddc3fc1850', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'6fca5fbb-4895-4529-9dbd-d11eca09fa4e', NULL, N'c6085e02-08d4-4ff5-a100-5ef292a4a632', N'fcffc1cb-79e2-4058-a3ce-9b2a3950dd01', CAST(N'2025-07-16T12:59:57.0000000' AS DateTime2), CAST(N'2025-07-16T13:59:57.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'721e6d9c-bceb-47b4-b823-7ab1579c8dec', NULL, N'fc4f3442-732d-4dec-bbaf-61ae9e591696', N'010cc445-5395-48ef-8f61-610a00617c15', CAST(N'2025-07-16T20:42:00.0000000' AS DateTime2), CAST(N'2025-07-16T21:02:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'7957b66b-af2c-4081-036f-08ddc3fc1850', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'7621bf6a-3934-40ad-b886-2f45bd8f6e1f', NULL, N'fc4f3442-732d-4dec-bbaf-61ae9e591696', N'2c626f71-3b97-4387-82de-66b9a9165b3f', CAST(N'2025-07-16T20:42:00.0000000' AS DateTime2), CAST(N'2025-07-16T21:42:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'7957b66b-af2c-4081-036f-08ddc3fc1850', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'766b1e39-357e-4e57-8db7-392e75aa3c56', NULL, N'c6085e02-08d4-4ff5-a100-5ef292a4a632', N'9a3c1003-46f6-43be-8353-fb2de2d4fac6', CAST(N'2025-07-16T12:59:57.0000000' AS DateTime2), CAST(N'2025-07-16T13:19:57.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'7756bc34-4c85-4941-a7a2-e064bc1a4219', NULL, N'fc74c3be-ad99-45ba-b013-55b7a60594fa', N'88abcd96-8560-40da-8158-3335d8540447', CAST(N'2025-07-15T23:02:48.0000000' AS DateTime2), CAST(N'2025-07-15T23:22:48.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'fbaa7940-7104-43bb-583b-08ddc32fbaa5', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'7b1dc990-69a9-4c36-b3ec-6685040b5429', NULL, N'20013f23-6232-4444-913c-95098c69716e', N'29ea629a-a825-4397-95cf-ecfc4eb96eea', CAST(N'2025-07-16T11:19:06.0000000' AS DateTime2), CAST(N'2025-07-16T12:19:06.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'7c02a288-5cd8-4c83-8036-8485bcdc07c7', NULL, N'e04f71d5-3a99-4944-9bab-676e799e1d9c', N'2b12672a-7fa0-4912-a88c-3fe6bbcd3b17', CAST(N'2025-07-15T22:35:47.0000000' AS DateTime2), CAST(N'2025-07-15T23:35:47.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'fbaa7940-7104-43bb-583b-08ddc32fbaa5', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'7c2930d7-a8a4-40c8-bc7c-6eb6e5c127c3', NULL, N'fc4f3442-732d-4dec-bbaf-61ae9e591696', N'111f02e8-706b-4faf-b4ae-e11acbc22146', CAST(N'2025-07-16T20:42:00.0000000' AS DateTime2), CAST(N'2025-07-30T20:42:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'7957b66b-af2c-4081-036f-08ddc3fc1850', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'7cbdfdb3-b0db-4afb-988c-e8fedb3c32aa', NULL, N'ad53d538-1acb-419c-8593-b02ba271948c', N'68860c0a-4bf2-4f10-8fb8-13ce61f18690', CAST(N'2025-07-16T11:36:41.0000000' AS DateTime2), CAST(N'2025-07-16T11:56:41.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'7eb1bbeb-737e-4f1f-91ce-ea1afb78b614', NULL, N'1cd7e01e-20e4-4b68-bad6-b513fc1c5de5', N'770bb519-e89a-4c38-9866-1c8c9fab9e5d', CAST(N'2025-07-16T15:51:21.0000000' AS DateTime2), CAST(N'2025-07-16T16:51:21.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'86649227-4804-4451-b492-048e86ef1ab0', NULL, N'6000f6e5-edfa-46cb-bc35-4b4d28b68a48', N'36902da2-af17-4626-ae0d-11be5e9794df', CAST(N'2025-07-16T18:08:23.0000000' AS DateTime2), CAST(N'2025-07-16T19:08:23.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'89bb7ae3-5515-469a-b58f-d04192c0a7f1', NULL, N'bfed21ae-bb08-4c81-a881-26aabdb6f3c2', N'11cf8985-44eb-4982-a28f-e2b222ae97df', CAST(N'2025-07-16T19:43:55.0000000' AS DateTime2), CAST(N'2025-07-16T20:43:55.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'8f479a7a-8d53-42ad-aeae-f30bcf8cf069', NULL, N'10c70fe6-2d23-451d-b6c8-b2ce7c965e74', N'727aecd2-5cd3-4266-8438-0ccd1b0652bb', CAST(N'2025-07-15T00:19:12.0000000' AS DateTime2), CAST(N'2025-07-29T00:19:12.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'fbaa7940-7104-43bb-583b-08ddc32fbaa5', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'927cf139-afc8-4aa5-bb67-898db15b9cbc', NULL, N'a421048b-ca67-4d9b-bfe9-f23fab2b1213', N'3322c001-5aed-49be-8278-60700787c265', CAST(N'2025-07-16T18:08:23.0000000' AS DateTime2), CAST(N'2025-07-30T18:08:23.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'955f561e-a069-4978-a500-6b066710eee4', NULL, N'1afd2d11-5db7-45fe-8403-bbfae13d48b5', N'6b8ef3e1-e953-499b-ae32-05b3463851a9', CAST(N'2025-07-16T11:31:32.0000000' AS DateTime2), CAST(N'2025-07-16T11:51:32.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'96d93117-d1d1-43c9-8f06-c4ba26487401', NULL, N'f0129996-0507-468b-b79a-4e16dcc1812d', N'29a589d1-6baa-4417-913b-521c453b8bbb', CAST(N'2025-07-17T12:02:53.0000000' AS DateTime2), CAST(N'2025-07-31T12:02:53.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'9d335e5a-3059-4dd9-94e8-e7891e85caa5', NULL, N'e4e7cef4-2fcb-4ec0-9b48-706e71df43bb', N'4de4b939-8439-4291-889b-a1ec84af5594', CAST(N'2025-07-16T12:06:34.0000000' AS DateTime2), CAST(N'2025-07-16T12:26:34.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'9d835b58-07a9-4db4-b1d7-8876a91a1166', NULL, N'1afd2d11-5db7-45fe-8403-bbfae13d48b5', N'355c6fe7-8510-4e4c-9da3-7c0076fa4fbb', CAST(N'2025-07-16T11:31:32.0000000' AS DateTime2), CAST(N'2025-07-30T11:31:32.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'9ea009e2-3e38-4261-b744-2400e60ffde1', NULL, N'4ae82a08-57f6-4f81-8547-1b8405f26c17', N'4056da77-db62-4afb-9fcd-6a0ceee1f2e7', CAST(N'2025-07-16T18:08:23.0000000' AS DateTime2), CAST(N'2025-07-16T18:28:23.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'a134cf9a-3399-4c54-a0e1-b0995d142a94', NULL, N'0d483277-66b5-4819-9577-3e779f560381', N'86517c8b-5d61-405a-ac38-85a1e6f02d9c', CAST(N'2025-07-16T12:39:06.0000000' AS DateTime2), CAST(N'2025-07-16T13:39:06.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'a23d9674-9201-4e0a-893e-c0566888edb3', NULL, N'f0129996-0507-468b-b79a-4e16dcc1812d', N'0ce151be-1c00-4762-8a9f-3e7a01754f60', CAST(N'2025-07-17T12:02:53.0000000' AS DateTime2), CAST(N'2025-07-17T12:22:53.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'a3fae248-986c-44de-b102-cc2223757943', NULL, N'ad29a97e-49bb-44aa-8f65-6c20db7dbfd7', N'e28d0243-3dde-4be9-a9e4-92c72369a0d8', CAST(N'2025-07-16T21:28:55.0000000' AS DateTime2), CAST(N'2025-07-16T22:28:55.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'a8a41428-5bfb-401d-b848-76cb027b5e1c', NULL, N'2123bbe1-51c8-4009-a2f3-5ffa1e033e45', N'5a5d6626-6d4a-4a03-b656-121cc6e3495e', CAST(N'2025-07-16T23:27:55.0000000' AS DateTime2), CAST(N'2025-07-16T23:47:55.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'a8b84db8-3e3e-413a-8c5e-5b329d1c4c25', NULL, N'0b9f1290-80cd-439b-8ae1-f9e78539c4f9', N'30787ed4-ae91-432d-862a-8b7746ebe8b9', CAST(N'2025-07-17T12:06:38.0000000' AS DateTime2), CAST(N'2025-07-17T12:26:38.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'a914f11d-c05e-44e3-a945-4492372788c5', NULL, N'0a640fc7-59a9-45a2-a3e1-55e32a9c8248', N'34d19f94-b93a-4a55-83bb-536e2135a3a8', CAST(N'2025-07-16T18:08:23.0000000' AS DateTime2), CAST(N'2025-07-16T19:08:23.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'ad5c096c-9208-4fb7-92d7-7513f5348a28', NULL, N'0a640fc7-59a9-45a2-a3e1-55e32a9c8248', N'e45286b4-b94c-4177-82d2-c6ec0dad2a81', CAST(N'2025-07-16T18:08:23.0000000' AS DateTime2), CAST(N'2025-07-30T18:08:23.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'aedea06f-4c55-4f58-a954-89063ab7cc57', NULL, N'4ae82a08-57f6-4f81-8547-1b8405f26c17', N'80e09916-34f9-4b17-827b-19453d3a6904', CAST(N'2025-07-16T18:08:23.0000000' AS DateTime2), CAST(N'2025-07-30T18:08:23.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'af5b4560-ba4c-4ff0-8f91-13d2a7d3a848', NULL, N'a2a27c71-4908-4b7c-9a13-05d9b38f12cb', N'e67b1780-4c01-41f9-8259-11bb886ec1ab', CAST(N'2025-07-16T11:49:48.0000000' AS DateTime2), CAST(N'2025-07-16T12:09:48.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'7957b66b-af2c-4081-036f-08ddc3fc1850', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'afecabb7-1382-4466-beae-dcba1e8f56fe', NULL, N'fc74c3be-ad99-45ba-b013-55b7a60594fa', N'61366dd6-21b4-4982-8a86-6311906a623c', CAST(N'2025-07-15T23:02:48.0000000' AS DateTime2), CAST(N'2025-07-29T23:02:48.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'fbaa7940-7104-43bb-583b-08ddc32fbaa5', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'b1388680-1d66-4c1d-8630-b89decbf04c9', NULL, N'f0e5ec28-b02a-4130-8a45-c3f73b23d96b', N'b61ddcad-127d-45d3-b6de-352158d9860b', CAST(N'2025-07-15T23:08:07.0000000' AS DateTime2), CAST(N'2025-07-29T23:08:07.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'fbaa7940-7104-43bb-583b-08ddc32fbaa5', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'b4f603e9-bd4c-4fee-83eb-055b26eb22d6', NULL, N'1b3bae61-8067-4df0-9820-4c61b3b8cafd', N'a09b061a-b48d-4171-aefd-f44f33835cca', CAST(N'2025-07-16T11:19:17.0000000' AS DateTime2), CAST(N'2025-07-16T12:19:17.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'b5ff76dc-de6e-4c9c-a719-82b6f7d9005b', NULL, N'eb70386a-e51c-4957-a478-f32006c1801f', N'16da12b2-e465-4764-9d02-b30005c1f987', CAST(N'2025-07-17T12:05:38.0000000' AS DateTime2), CAST(N'2025-07-31T12:05:38.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'7957b66b-af2c-4081-036f-08ddc3fc1850', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'b6ffe6e8-6db8-41fd-bbca-86d7dc50f701', NULL, N'8eebffbc-b4c3-4401-8252-fe42195e395e', N'1fcd0cf2-a788-4eca-add5-b6ed8b15a99a', CAST(N'2025-07-17T12:08:26.0000000' AS DateTime2), CAST(N'2025-07-17T13:08:26.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'revoked', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'b85c9cc5-c7f2-41d0-84e3-05a409c59074', NULL, N'0a640fc7-59a9-45a2-a3e1-55e32a9c8248', N'ee34e954-48bb-458c-a8b9-8d3f579d52ef', CAST(N'2025-07-16T18:08:23.0000000' AS DateTime2), CAST(N'2025-07-16T18:28:23.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'bafca647-bf74-4a58-84bb-6eea97d7f5e4', NULL, N'1cd7e01e-20e4-4b68-bad6-b513fc1c5de5', N'64e74ecb-0178-4f8f-a139-ff6cf4b98ba9', CAST(N'2025-07-16T15:51:21.0000000' AS DateTime2), CAST(N'2025-07-30T15:51:21.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'be2b02ab-81a9-4cc3-9c1a-aea5954c759c', NULL, N'bfed21ae-bb08-4c81-a881-26aabdb6f3c2', N'ed990703-0460-464f-a76b-75e9fbc8f199', CAST(N'2025-07-16T19:43:55.0000000' AS DateTime2), CAST(N'2025-07-16T20:03:55.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'c4c8759a-1fcb-4189-bd28-6195da30c19a', NULL, N'1def759a-ba41-4a1f-bed6-030304683fa7', N'78e80377-4129-4a03-a999-a8fcfd259a15', CAST(N'2025-07-16T22:34:52.0000000' AS DateTime2), CAST(N'2025-07-16T22:54:52.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'c7b0062b-f91f-4cc4-9034-2758f22c61a8', NULL, N'ad29a97e-49bb-44aa-8f65-6c20db7dbfd7', N'0ace7f43-416f-4a8c-841e-f4eba202ebdd', CAST(N'2025-07-16T21:28:55.0000000' AS DateTime2), CAST(N'2025-07-16T21:48:55.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'd48ce841-7ab4-4f1e-a22f-296b0cdd1772', NULL, N'31a5564f-05d0-4030-9608-05e24cf7f7dd', N'e0bc9788-99ad-4af5-b17d-3676cd41cfdc', CAST(N'2025-07-16T15:46:19.0000000' AS DateTime2), CAST(N'2025-07-16T16:46:19.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'd49437ba-aee5-4f06-b7f6-31fc9b2c08fa', NULL, N'0e473552-7b46-429a-9b29-141f9216b208', N'365d01cc-7e60-4131-97a4-75b48ce17b9a', CAST(N'2025-07-16T00:03:13.0000000' AS DateTime2), CAST(N'2025-07-30T00:03:13.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'7957b66b-af2c-4081-036f-08ddc3fc1850', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'd7f80a44-019e-45d9-9882-c6b4b89c7f05', NULL, N'e04f71d5-3a99-4944-9bab-676e799e1d9c', N'f2740aa3-db2d-4cf2-a130-859f1ae0f215', CAST(N'2025-07-15T22:35:47.0000000' AS DateTime2), CAST(N'2025-07-15T22:55:47.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'fbaa7940-7104-43bb-583b-08ddc32fbaa5', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'dc2af5fc-79ef-483d-ad47-26adaa61dcad', NULL, N'c6085e02-08d4-4ff5-a100-5ef292a4a632', N'abb74d64-7bbd-4581-b343-7b9c87e3550a', CAST(N'2025-07-16T12:59:57.0000000' AS DateTime2), CAST(N'2025-07-30T12:59:57.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'dd26eb29-ae21-42af-aec4-33095e68811c', NULL, N'b1d6c42f-492f-433f-99f7-1e12aecae1a3', N'1c6cb776-7cc7-4f74-9437-438efd3fd202', CAST(N'2025-07-16T18:28:36.0000000' AS DateTime2), CAST(N'2025-07-16T19:28:36.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'e05c689e-43e6-4e32-8bc3-916fd8aab5a5', NULL, N'64315d92-b343-45fe-9b4b-7ed533a8a14d', N'bc3a1bc8-f161-43cc-9a66-0f0638f02e57', CAST(N'2025-07-15T23:00:57.0000000' AS DateTime2), CAST(N'2025-07-15T23:20:57.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'fbaa7940-7104-43bb-583b-08ddc32fbaa5', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'e0709022-1992-4958-bd2c-178063c90442', NULL, N'bfed21ae-bb08-4c81-a881-26aabdb6f3c2', N'923ce1af-497b-4ed5-87f4-467ca7f7ddb3', CAST(N'2025-07-16T19:43:55.0000000' AS DateTime2), CAST(N'2025-07-30T19:43:55.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'e10a61ad-f316-4f01-894b-c49627be1995', NULL, N'ad53d538-1acb-419c-8593-b02ba271948c', N'f8b07672-2a5a-4ee4-a3bf-8a058e21c48c', CAST(N'2025-07-16T11:36:41.0000000' AS DateTime2), CAST(N'2025-07-30T11:36:41.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'e28b54de-cd3d-4f35-b776-edc349396f24', NULL, N'f0e5ec28-b02a-4130-8a45-c3f73b23d96b', N'ca08bc93-5875-45ea-8a29-1fa8162f7cd7', CAST(N'2025-07-15T23:08:07.0000000' AS DateTime2), CAST(N'2025-07-15T23:28:07.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'fbaa7940-7104-43bb-583b-08ddc32fbaa5', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'e2cc75cb-c97b-4681-91f5-08705d6cf9cf', NULL, N'37d4ef19-7f4b-4520-87a3-f09408f3473b', N'1e4ab6b7-0df6-4ec3-96a9-680df3a08610', CAST(N'2025-07-16T00:41:33.0000000' AS DateTime2), CAST(N'2025-07-30T00:41:33.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'e52f0354-c949-4457-9693-0eac8055bb0f', NULL, N'4ae82a08-57f6-4f81-8547-1b8405f26c17', N'81bd802e-5c6b-4c78-97b1-8a0094b0637e', CAST(N'2025-07-16T18:08:23.0000000' AS DateTime2), CAST(N'2025-07-16T19:08:23.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'e5b5cd6d-d723-4276-8682-5200c71b2f8f', NULL, N'f0e5ec28-b02a-4130-8a45-c3f73b23d96b', N'f989e332-77fa-4acb-bf03-6b5f973ba62b', CAST(N'2025-07-15T23:08:07.0000000' AS DateTime2), CAST(N'2025-07-16T00:08:07.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'fbaa7940-7104-43bb-583b-08ddc32fbaa5', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'e7a46bae-34f2-47d3-8fc5-9189167ef639', NULL, N'31a5564f-05d0-4030-9608-05e24cf7f7dd', N'ab720f1c-468d-4668-a767-1d2029edcde3', CAST(N'2025-07-16T15:46:19.0000000' AS DateTime2), CAST(N'2025-07-30T15:46:19.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'e8db4552-1bce-4e67-8ad8-45fba913d7c0', NULL, N'f30f2c39-d029-4941-a235-84c3ca93031b', N'3713ca08-a7e2-4f14-b4e4-a5c73eb0ac8b', CAST(N'2025-07-16T11:33:48.0000000' AS DateTime2), CAST(N'2025-07-16T11:53:48.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'ebeed6e3-f067-4fc2-9e0f-5a190c9b8522', NULL, N'f30f2c39-d029-4941-a235-84c3ca93031b', N'22c09243-6c26-4bc2-8a7d-b2acfb675e9a', CAST(N'2025-07-16T11:33:48.0000000' AS DateTime2), CAST(N'2025-07-16T12:33:48.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'ec887f61-0abf-49e2-84a3-dae061c0c036', NULL, N'ad29a97e-49bb-44aa-8f65-6c20db7dbfd7', N'1d3b5171-68b5-4877-9c59-76a030ceab7e', CAST(N'2025-07-16T21:28:55.0000000' AS DateTime2), CAST(N'2025-07-30T21:28:55.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'ed01115c-ff81-4077-a361-0cd817857225', NULL, N'9a94d927-9a26-42ee-a34e-80a37c4c9c50', N'b9a95c1d-50ce-43e9-9ea0-730806f91938', CAST(N'2025-07-15T23:08:17.0000000' AS DateTime2), CAST(N'2025-07-15T23:28:17.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'fbaa7940-7104-43bb-583b-08ddc32fbaa5', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'eda644a5-cfa8-482e-a59a-05f69bd6f75d', NULL, N'a421048b-ca67-4d9b-bfe9-f23fab2b1213', N'd3bfb7a4-cff2-4304-9eeb-3a1c66114716', CAST(N'2025-07-16T18:08:23.0000000' AS DateTime2), CAST(N'2025-07-16T18:28:23.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:id_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'ee4c96eb-ce5c-4a7b-955c-7166002a3fff', NULL, N'bd901fe6-8a0d-4e63-a25b-59b40062ca20', N'f73c95f3-1dc4-48d5-8230-0e9d57023776', CAST(N'2025-07-17T12:09:03.0000000' AS DateTime2), CAST(N'2025-07-31T12:09:03.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'ef4e245c-f8c1-40f1-b4fe-9b1d2f3f067f', NULL, N'fc74c3be-ad99-45ba-b013-55b7a60594fa', N'4f255bba-26ac-4365-bf9c-ce1ff71f39d2', CAST(N'2025-07-15T23:02:48.0000000' AS DateTime2), CAST(N'2025-07-16T00:02:48.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'fbaa7940-7104-43bb-583b-08ddc32fbaa5', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'f4c399db-6b25-453d-aa12-be53580f4045', NULL, N'2123bbe1-51c8-4009-a2f3-5ffa1e033e45', N'453db517-e2db-47b2-9539-73abfb7c56bb', CAST(N'2025-07-16T23:27:55.0000000' AS DateTime2), CAST(N'2025-07-17T00:27:55.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'f5522b3a-fbb4-4a80-b642-a9b2bcd5f4ab', NULL, N'b1d6c42f-492f-433f-99f7-1e12aecae1a3', N'c894fc23-7bfe-4780-82b8-1b6308aba9d0', CAST(N'2025-07-16T18:28:36.0000000' AS DateTime2), CAST(N'2025-07-30T18:28:36.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'fae73f25-2c14-4280-92a8-400ae701d855', NULL, N'71258982-6066-4fa3-9804-20def9f3f8e2', N'4b6ac082-5d6e-4e09-b558-8d506cc11ea3', CAST(N'2025-07-16T13:06:25.0000000' AS DateTime2), CAST(N'2025-07-30T13:06:25.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'fcc9bf65-6f14-4524-ba9f-b27d7cb80664', NULL, N'ad53d538-1acb-419c-8593-b02ba271948c', N'6da15076-da9d-489b-963d-51df3461f46e', CAST(N'2025-07-16T11:36:41.0000000' AS DateTime2), CAST(N'2025-07-16T12:36:41.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:access_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'fcedcb71-ec3a-48f5-8399-8a3b78d1d796', NULL, N'e04f71d5-3a99-4944-9bab-676e799e1d9c', N'6b7aa3c6-ee2e-4428-875f-818ce913ac26', CAST(N'2025-07-15T22:35:47.0000000' AS DateTime2), CAST(N'2025-07-29T22:35:47.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'fbaa7940-7104-43bb-583b-08ddc32fbaa5', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[OpenIddictTokens] ([Id], [ApplicationId], [AuthorizationId], [ConcurrencyToken], [CreationDate], [ExpirationDate], [Payload], [Properties], [RedemptionDate], [ReferenceId], [Status], [Subject], [Type]) VALUES (N'fe9befbb-8bd4-4d73-9ac3-56cf37b478a8', NULL, N'20013f23-6232-4444-913c-95098c69716e', N'01d13226-093e-40d0-83e7-7d700dc27395', CAST(N'2025-07-16T11:19:06.0000000' AS DateTime2), CAST(N'2025-07-30T11:19:06.0000000' AS DateTime2), NULL, NULL, NULL, NULL, N'valid', N'a80f26e3-db25-40ea-e97a-08ddc4012030', N'urn:ietf:params:oauth:token-type:refresh_token')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'624e6e4b-25f4-4f2a-8470-26f5bacabd35', N'Trade Federation cruiser', N'Providence-class carrier/destroyer', N'Rendili StarDrive, Free Dac Volunteers Engineering corps.', N'capital ship', N'1.5', N'600', N'48247', N'unknown', N'50000000', CAST(N'2025-07-14T22:05:26.7721703' AS DateTime2), NULL, NULL, NULL, 0, N'4 years', N'125000000', N'1088', N'1050', N'["https://swapi.info/api/films/6"]', N'["https://swapi.info/api/people/10","https://swapi.info/api/people/11"]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'fa9dadf7-d6e2-4ca6-9811-2f449d128ca4', N'Theta-class T-2c shuttle', N'Theta-class T-2c shuttle', N'Cygnus Spaceworks', N'transport', N'1.0', N'5', N'16', N'unknown', N'50000', CAST(N'2025-07-14T22:05:26.7721721' AS DateTime2), NULL, NULL, NULL, 0, N'56 days', N'1000000', N'18.5', N'2000', N'["https://swapi.info/api/films/6"]', N'[]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'84e21603-c4da-4e45-9dcc-379bfcd2cfb1', N'CR90 corvette', N'CR90 corvette', N'Corellian Engineering Corporation', N'corvette', N'2.0', N'30-165', N'600', N'60', N'3000000', CAST(N'2025-07-14T22:05:26.7706503' AS DateTime2), NULL, NULL, NULL, 0, N'1 year', N'3500000', N'150', N'950', N'["https://swapi.info/api/films/1","https://swapi.info/api/films/3","https://swapi.info/api/films/6"]', N'[]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'ef7934f0-1f91-4eac-9dfd-3810dbec8bca', N'Naboo Royal Starship', N'J-type 327 Nubian royal starship', N'Theed Palace Space Vessel Engineering Corps, Nubia Star Drives', N'yacht', N'1.8', N'8', N'unknown', N'unknown', N'unknown', CAST(N'2025-07-14T22:05:26.7721562' AS DateTime2), NULL, NULL, NULL, 0, N'unknown', N'unknown', N'76', N'920', N'["https://swapi.info/api/films/4"]', N'["https://swapi.info/api/people/39"]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'1ffd5d39-78a9-4c80-bf8c-39b63a91b3e8', N'H-type Nubian yacht', N'H-type Nubian yacht', N'Theed Palace Space Vessel Engineering Corps', N'yacht', N'0.9', N'4', N'unknown', N'unknown', N'unknown', CAST(N'2025-07-14T22:05:26.7721652' AS DateTime2), NULL, NULL, NULL, 0, N'unknown', N'unknown', N'47.9', N'8000', N'["https://swapi.info/api/films/5"]', N'["https://swapi.info/api/people/35"]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'9ae85b74-74b7-4ed8-a5bb-3b01c36628b3', N'Y-wing', N'BTL Y-wing', N'Koensayr Manufacturing', N'assault starfighter', N'1.0', N'2', N'0', N'80', N'110', CAST(N'2025-07-14T22:05:26.7720898' AS DateTime2), NULL, NULL, NULL, 0, N'1 week', N'134999', N'14', N'1000km', N'["https://swapi.info/api/films/1","https://swapi.info/api/films/2","https://swapi.info/api/films/3"]', N'[]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'fcae0eea-7d3a-4545-a87e-4a726f99b57b', N'Rebel transport', N'GR-75 medium transport', N'Gallofree Yards, Inc.', N'Medium transport', N'4.0', N'6', N'90', N'20', N'19000000', CAST(N'2025-07-14T22:05:26.7721045' AS DateTime2), NULL, NULL, NULL, 0, N'6 months', N'unknown', N'90', N'650', N'["https://swapi.info/api/films/2","https://swapi.info/api/films/3"]', N'[]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'89762d2c-8c8b-4d4f-a0c9-51a64933f1c1', N'X-wing', N'T-65 X-wing', N'Incom Corporation', N'Starfighter', N'1.0', N'1', N'0', N'100', N'110', CAST(N'2025-07-14T22:05:26.7720930' AS DateTime2), NULL, NULL, NULL, 0, N'1 week', N'149999', N'12.5', N'1050', N'["https://swapi.info/api/films/1","https://swapi.info/api/films/2","https://swapi.info/api/films/3"]', N'["https://swapi.info/api/people/1","https://swapi.info/api/people/9","https://swapi.info/api/people/18","https://swapi.info/api/people/19"]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'44210b21-098f-40b2-9aab-538b81203b2a', N'Star Destroyer', N'Imperial I-class Star Destroyer', N'Kuat Drive Yards', N'Star Destroyer', N'2.0', N'47,060', N'n/a', N'60', N'36000000', CAST(N'2025-07-14T22:05:26.7720740' AS DateTime2), NULL, NULL, NULL, 0, N'2 years', N'150000000', N'1,600', N'975', N'["https://swapi.info/api/films/1","https://swapi.info/api/films/2","https://swapi.info/api/films/3"]', N'[]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'bbf0e9a5-9a37-49cd-85d5-566cb429e9d6', N'B-wing', N'A/SF-01 B-wing starfighter', N'Slayn & Korpil', N'Assault Starfighter', N'2.0', N'1', N'0', N'91', N'45', CAST(N'2025-07-14T22:05:26.7721470' AS DateTime2), NULL, NULL, NULL, 0, N'1 week', N'220000', N'16.9', N'950', N'["https://swapi.info/api/films/3"]', N'[]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'0704e2f6-dff5-4c1f-a5fa-5842ae468745', N'Republic attack cruiser', N'Senator-class Star Destroyer', N'Kuat Drive Yards, Allanteen Six shipyards', N'star destroyer', N'1.0', N'7400', N'2000', N'unknown', N'20000000', CAST(N'2025-07-14T22:05:26.7721800' AS DateTime2), NULL, NULL, NULL, 0, N'2 years', N'59000000', N'1137', N'975', N'["https://swapi.info/api/films/6"]', N'[]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'eaf2a2ed-8350-4159-926a-5a9fd10934c3', N'Republic Cruiser', N'Consular-class cruiser', N'Corellian Engineering Corporation', N'Space cruiser', N'2.0', N'9', N'16', N'unknown', N'unknown', CAST(N'2025-07-14T22:05:26.7721489' AS DateTime2), NULL, NULL, NULL, 0, N'unknown', N'unknown', N'115', N'900', N'["https://swapi.info/api/films/4"]', N'[]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'e7f770e3-14e6-4f90-9238-5c5592f820a5', N'Millennium Falcon', N'YT-1300 light freighter', N'Corellian Engineering Corporation', N'Light freighter', N'0.5', N'4', N'6', N'75', N'100000', CAST(N'2025-07-14T22:05:26.7720861' AS DateTime2), NULL, NULL, NULL, 0, N'2 months', N'100000', N'34.37', N'1050', N'["https://swapi.info/api/films/1","https://swapi.info/api/films/2","https://swapi.info/api/films/3"]', N'["https://swapi.info/api/people/13","https://swapi.info/api/people/14","https://swapi.info/api/people/25","https://swapi.info/api/people/31"]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'7238c6ed-35c0-45ca-989e-64da0ee74e37', N'V-wing', N'Alpha-3 Nimbus-class V-wing starfighter', N'Kuat Systems Engineering', N'starfighter', N'1.0', N'1', N'0', N'unknown', N'60', CAST(N'2025-07-14T22:05:26.7721911' AS DateTime2), NULL, CAST(N'2025-07-16T23:33:02.2119798' AS DateTime2), NULL, 0, N'15 hours', N'102500', N'7.9', N'1050', N'["https://swapi.info/api/films/6"]', N'[]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'11d96a4a-0630-4064-9fc5-67dcee5e493d', N'Death Star', N'DS-1 Orbital Battle Station', N'Imperial Department of Military Research, Sienar Fleet Systems', N'Deep Space Mobile Battlestation', N'4.0', N'342,953', N'843,342', N'10', N'1000000000000', CAST(N'2025-07-14T22:05:26.7720844' AS DateTime2), NULL, NULL, NULL, 0, N'3 years', N'1000000000000', N'120000', N'n/a', N'["https://swapi.info/api/films/1"]', N'[]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'27533452-c152-405e-8588-74a6afdc2442', N'EF76 Nebulon-B escort frigate', N'EF76 Nebulon-B escort frigate', N'Kuat Drive Yards', N'Escort ship', N'2.0', N'854', N'75', N'40', N'6000000', CAST(N'2025-07-14T22:05:26.7721212' AS DateTime2), NULL, NULL, NULL, 0, N'2 years', N'8500000', N'300', N'800', N'["https://swapi.info/api/films/2","https://swapi.info/api/films/3"]', N'[]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'47a9149a-ec1d-4bb7-80b2-75821124b48b', N'Jedi Interceptor', N'Eta-2 Actis-class light interceptor', N'Kuat Systems Engineering', N'starfighter', N'1.0', N'1', N'0', N'unknown', N'60', CAST(N'2025-07-14T22:05:26.7721840' AS DateTime2), NULL, NULL, NULL, 0, N'2 days', N'320000', N'5.47', N'1500', N'["https://swapi.info/api/films/6"]', N'["https://swapi.info/api/people/10","https://swapi.info/api/people/11"]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'72e23bd6-16b1-4063-850e-84f3390f2487', N'Calamari Cruiser', N'MC80 Liberty type Star Cruiser', N'Mon Calamari shipyards', N'Star Cruiser', N'1.0', N'5400', N'1200', N'60', N'unknown', CAST(N'2025-07-14T22:05:26.7721230' AS DateTime2), NULL, NULL, NULL, 0, N'2 years', N'104000000', N'1200', N'n/a', N'["https://swapi.info/api/films/3"]', N'[]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'e910b06e-4609-472f-bd58-8620a2af063b', N'Scimitar', N'Star Courier', N'Republic Sienar Systems', N'Space Transport', N'1.5', N'1', N'6', N'unknown', N'2500000', CAST(N'2025-07-14T22:05:26.7721581' AS DateTime2), NULL, NULL, NULL, 0, N'30 days', N'55000000', N'26.5', N'1180', N'["https://swapi.info/api/films/4"]', N'["https://swapi.info/api/people/44"]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'3672fad7-229d-43ef-ae62-8efdb582b668', N'Droid control ship', N'Lucrehulk-class Droid Control Ship', N'Hoersch-Kessel Drive, Inc.', N'Droid control ship', N'2.0', N'175', N'139000', N'unknown', N'4000000000', CAST(N'2025-07-14T22:05:26.7721521' AS DateTime2), NULL, NULL, NULL, 0, N'500 days', N'unknown', N'3170', N'n/a', N'["https://swapi.info/api/films/4","https://swapi.info/api/films/5","https://swapi.info/api/films/6"]', N'[]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'7ec8a6c2-47c2-402f-a44f-97226b8a81c0', N'Jedi starfighter', N'Delta-7 Aethersprite-class interceptor', N'Kuat Systems Engineering', N'Starfighter', N'1.0', N'1', N'0', N'unknown', N'60', CAST(N'2025-07-14T22:05:26.7721630' AS DateTime2), NULL, NULL, NULL, 0, N'7 days', N'180000', N'8', N'1150', N'["https://swapi.info/api/films/5","https://swapi.info/api/films/6"]', N'["https://swapi.info/api/people/10","https://swapi.info/api/people/58"]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'72c51c7a-9073-4d59-a3d1-9914b6cf15c7', N'Solar Sailer', N'Punworcca 116-class interstellar sloop', N'Huppla Pasa Tisc Shipwrights Collective', N'yacht', N'1.5', N'3', N'11', N'unknown', N'240', CAST(N'2025-07-14T22:05:26.7721687' AS DateTime2), NULL, NULL, NULL, 0, N'7 days', N'35700', N'15.2', N'1600', N'["https://swapi.info/api/films/5"]', N'[]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'5b4c3af6-9559-46a0-b020-a1772edba6e3', N'Slave 1', N'Firespray-31-class patrol and attack', N'Kuat Systems Engineering', N'Patrol craft', N'3.0', N'1', N'6', N'70', N'70000', CAST(N'2025-07-14T22:05:26.7721088' AS DateTime2), NULL, NULL, NULL, 0, N'1 month', N'unknown', N'21.5', N'1000', N'["https://swapi.info/api/films/2","https://swapi.info/api/films/5"]', N'["https://swapi.info/api/people/22"]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'c70a8556-f1ec-499c-81da-a6c1e99c6750', N'Imperial shuttle', N'Lambda-class T-4a shuttle', N'Sienar Fleet Systems', N'Armed government transport', N'1.0', N'6', N'20', N'50', N'80000', CAST(N'2025-07-14T22:05:26.7721119' AS DateTime2), NULL, NULL, NULL, 0, N'2 months', N'240000', N'20', N'850', N'["https://swapi.info/api/films/2","https://swapi.info/api/films/3"]', N'["https://swapi.info/api/people/1","https://swapi.info/api/people/13","https://swapi.info/api/people/14"]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'9adc40be-d1c2-417a-b0e1-b363a905fc87', N'Republic Assault ship', N'Acclamator I-class assault ship', N'Rothana Heavy Engineering', N'assault ship', N'0.6', N'700', N'16000', N'unknown', N'11250000', CAST(N'2025-07-14T22:05:26.7721671' AS DateTime2), NULL, NULL, NULL, 0, N'2 years', N'unknown', N'752', N'unknown', N'["https://swapi.info/api/films/5"]', N'[]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'b7d79a5a-32d1-4149-b3ac-be036f37592b', N'arc-170', N'Aggressive Reconnaissance-170 starfighte', N'Incom Corporation, Subpro Corporation', N'starfighter', N'1.0', N'3', N'0', N'100', N'110', CAST(N'2025-07-14T22:05:26.7721858' AS DateTime2), NULL, NULL, NULL, 0, N'5 days', N'155000', N'14.5', N'1000', N'["https://swapi.info/api/films/6"]', N'[]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'1e459573-0066-444c-ac30-d08e96ec2c90', N'Naboo star skiff', N'J-type star skiff', N'Theed Palace Space Vessel Engineering Corps/Nubia Star Drives, Incorporated', N'yacht', N'0.5', N'3', N'3', N'unknown', N'unknown', CAST(N'2025-07-14T22:05:26.7721821' AS DateTime2), NULL, NULL, NULL, 0, N'unknown', N'unknown', N'29.2', N'1050', N'["https://swapi.info/api/films/6"]', N'["https://swapi.info/api/people/10","https://swapi.info/api/people/35"]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'4dc14ab4-4658-4ce1-9f4f-d837aa92b0ee', N'Executor', N'Executor-class star dreadnought', N'Kuat Drive Yards, Fondor Shipyards', N'Star dreadnought', N'2.0', N'279,144', N'38000', N'40', N'250000000', CAST(N'2025-07-14T22:05:26.7721014' AS DateTime2), NULL, NULL, NULL, 0, N'6 years', N'1143350000', N'19000', N'n/a', N'["https://swapi.info/api/films/2","https://swapi.info/api/films/3"]', N'[]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'becd74fe-92b1-4252-9e32-edf0fec9f843', N'Naboo fighter', N'N-1 starfighter', N'Theed Palace Space Vessel Engineering Corps', N'Starfighter', N'1.0', N'1', N'0', N'unknown', N'65', CAST(N'2025-07-14T22:05:26.7721539' AS DateTime2), NULL, NULL, NULL, 0, N'7 days', N'200000', N'11', N'1100', N'["https://swapi.info/api/films/4","https://swapi.info/api/films/5"]', N'["https://swapi.info/api/people/11","https://swapi.info/api/people/35","https://swapi.info/api/people/60"]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'ab1c1a20-b9ae-4dc0-9892-ef9bc3a03c72', N'Belbullab-22 starfighter', N'Belbullab-22 starfighter', N'Feethan Ottraw Scalable Assemblies', N'starfighter', N'6', N'1', N'0', N'unknown', N'140', CAST(N'2025-07-17T12:05:48.4185439' AS DateTime2), NULL, NULL, NULL, 0, N'7 days', N'168000', N'6.71', N'1100', N'["https://swapi.info/api/films/6"]', N'["https://swapi.info/api/people/10","https://swapi.info/api/people/79"]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'f759dcf8-b461-4a3d-b413-f284b48932fc', N'Banking clan frigte', N'Munificent-class star frigate', N'Hoersch-Kessel Drive, Inc, Gwori Revolutionary Industries', N'cruiser', N'1.0', N'200', N'unknown', N'unknown', N'40000000', CAST(N'2025-07-14T22:05:26.7721877' AS DateTime2), NULL, NULL, NULL, 0, N'2 years', N'57000000', N'825', N'unknown', N'["https://swapi.info/api/films/6"]', N'[]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'a4ebb9b5-16e2-4dbd-a0ec-f3e8f5df4308', N'AA-9 Coruscant freighter', N'Botajef AA-9 Freighter-Liner', N'Botajef Shipyards', N'freighter', N'unknown', N'unknown', N'30000', N'unknown', N'unknown', CAST(N'2025-07-14T22:05:26.7721614' AS DateTime2), NULL, NULL, NULL, 0, N'unknown', N'unknown', N'390', N'unknown', N'["https://swapi.info/api/films/5"]', N'[]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'0f949734-832b-4ea6-a7bc-f67853a2a037', N'TIE Advanced x1', N'Twin Ion Engine Advanced x1', N'Sienar Fleet Systems', N'Starfighter', N'1.0', N'1', N'0', N'105', N'150', CAST(N'2025-07-14T22:05:26.7720962' AS DateTime2), NULL, NULL, NULL, 0, N'5 days', N'unknown', N'9.2', N'1200', N'["https://swapi.info/api/films/1"]', N'["https://swapi.info/api/people/4"]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'f57a36b8-13f4-4d2b-a4f6-f888c3e08e79', N'Sentinel-class landing craft', N'Sentinel-class landing craft', N'Sienar Fleet Systems, Cyngus Spaceworks', N'landing craft', N'1.0', N'5', N'75', N'70', N'180000', CAST(N'2025-07-14T22:05:26.7720825' AS DateTime2), NULL, NULL, NULL, 0, N'1 month', N'240000', N'38', N'1000', N'["https://swapi.info/api/films/1"]', N'[]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'da730de4-d0c6-4028-bab4-fa9c77034fb2', N'A-wing', N'RZ-1 A-wing Interceptor', N'Alliance Underground Engineering, Incom Corporation', N'Starfighter', N'1.0', N'1', N'0', N'120', N'40', CAST(N'2025-07-14T22:05:26.7721315' AS DateTime2), NULL, NULL, NULL, 0, N'1 week', N'175000', N'9.6', N'1300', N'["https://swapi.info/api/films/3"]', N'["https://swapi.info/api/people/29"]')
GO
INSERT [dbo].[Starships] ([Id], [Name], [Model], [Manufacturer], [StarshipClass], [HyperdriveRating], [Crew], [Passengers], [MGLT], [CargoCapacity], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted], [Consumables], [CostInCredits], [Length], [MaxAtmospheringSpeed], [FilmsJson], [PilotsJson]) VALUES (N'fd3ca6d9-0e0a-4bb6-a53c-fdccbf4a8931', N'J-type diplomatic barge', N'J-type diplomatic barge', N'Theed Palace Space Vessel Engineering Corps, Nubia Star Drives', N'Diplomatic barge', N'0.7', N'5', N'10', N'unknown', N'unknown', CAST(N'2025-07-14T22:05:26.7721598' AS DateTime2), NULL, NULL, NULL, 0, N'1 year', N'2000000', N'39', N'2000', N'["https://swapi.info/api/films/5"]', N'[]')
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 7/17/2025 8:11:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/17/2025 8:11:15 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 7/17/2025 8:11:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 7/17/2025 8:11:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 7/17/2025 8:11:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 7/17/2025 8:11:15 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 7/17/2025 8:11:15 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OpenIddictApplications_ClientId]    Script Date: 7/17/2025 8:11:15 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_OpenIddictApplications_ClientId] ON [dbo].[OpenIddictApplications]
(
	[ClientId] ASC
)
WHERE ([ClientId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OpenIddictAuthorizations_ApplicationId_Status_Subject_Type]    Script Date: 7/17/2025 8:11:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_OpenIddictAuthorizations_ApplicationId_Status_Subject_Type] ON [dbo].[OpenIddictAuthorizations]
(
	[ApplicationId] ASC,
	[Status] ASC,
	[Subject] ASC,
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OpenIddictScopes_Name]    Script Date: 7/17/2025 8:11:15 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_OpenIddictScopes_Name] ON [dbo].[OpenIddictScopes]
(
	[Name] ASC
)
WHERE ([Name] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OpenIddictTokens_ApplicationId_Status_Subject_Type]    Script Date: 7/17/2025 8:11:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_OpenIddictTokens_ApplicationId_Status_Subject_Type] ON [dbo].[OpenIddictTokens]
(
	[ApplicationId] ASC,
	[Status] ASC,
	[Subject] ASC,
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OpenIddictTokens_AuthorizationId]    Script Date: 7/17/2025 8:11:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_OpenIddictTokens_AuthorizationId] ON [dbo].[OpenIddictTokens]
(
	[AuthorizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OpenIddictTokens_ReferenceId]    Script Date: 7/17/2025 8:11:15 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_OpenIddictTokens_ReferenceId] ON [dbo].[OpenIddictTokens]
(
	[ReferenceId] ASC
)
WHERE ([ReferenceId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Starships] ADD  DEFAULT (N'') FOR [Consumables]
GO
ALTER TABLE [dbo].[Starships] ADD  DEFAULT (N'') FOR [CostInCredits]
GO
ALTER TABLE [dbo].[Starships] ADD  DEFAULT (N'') FOR [Length]
GO
ALTER TABLE [dbo].[Starships] ADD  DEFAULT (N'') FOR [MaxAtmospheringSpeed]
GO
ALTER TABLE [dbo].[Starships] ADD  DEFAULT (N'') FOR [FilmsJson]
GO
ALTER TABLE [dbo].[Starships] ADD  DEFAULT (N'') FOR [PilotsJson]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OpenIddictAuthorizations]  WITH CHECK ADD  CONSTRAINT [FK_OpenIddictAuthorizations_OpenIddictApplications_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[OpenIddictApplications] ([Id])
GO
ALTER TABLE [dbo].[OpenIddictAuthorizations] CHECK CONSTRAINT [FK_OpenIddictAuthorizations_OpenIddictApplications_ApplicationId]
GO
ALTER TABLE [dbo].[OpenIddictTokens]  WITH CHECK ADD  CONSTRAINT [FK_OpenIddictTokens_OpenIddictApplications_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[OpenIddictApplications] ([Id])
GO
ALTER TABLE [dbo].[OpenIddictTokens] CHECK CONSTRAINT [FK_OpenIddictTokens_OpenIddictApplications_ApplicationId]
GO
ALTER TABLE [dbo].[OpenIddictTokens]  WITH CHECK ADD  CONSTRAINT [FK_OpenIddictTokens_OpenIddictAuthorizations_AuthorizationId] FOREIGN KEY([AuthorizationId])
REFERENCES [dbo].[OpenIddictAuthorizations] ([Id])
GO
ALTER TABLE [dbo].[OpenIddictTokens] CHECK CONSTRAINT [FK_OpenIddictTokens_OpenIddictAuthorizations_AuthorizationId]
GO
USE [master]
GO
ALTER DATABASE [starwars] SET  READ_WRITE 
GO
