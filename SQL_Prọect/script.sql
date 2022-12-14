USE [master]
GO
/****** Object:  Database [ProjectAuction]    Script Date: 7/21/2021 8:56:48 PM ******/
CREATE DATABASE [ProjectAuction]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectAuction', FILENAME = N'I:\SQL2019\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ProjectAuction.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProjectAuction_log', FILENAME = N'I:\SQL2019\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ProjectAuction_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProjectAuction] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectAuction].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectAuction] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectAuction] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectAuction] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectAuction] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectAuction] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectAuction] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProjectAuction] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectAuction] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectAuction] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectAuction] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectAuction] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectAuction] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectAuction] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectAuction] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectAuction] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProjectAuction] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectAuction] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectAuction] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectAuction] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectAuction] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectAuction] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ProjectAuction] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectAuction] SET RECOVERY FULL 
GO
ALTER DATABASE [ProjectAuction] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectAuction] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectAuction] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectAuction] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectAuction] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProjectAuction] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProjectAuction] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ProjectAuction', N'ON'
GO
ALTER DATABASE [ProjectAuction] SET QUERY_STORE = OFF
GO
USE [ProjectAuction]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/21/2021 8:56:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 7/21/2021 8:56:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/21/2021 8:56:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/21/2021 8:56:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/21/2021 8:56:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/21/2021 8:56:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/21/2021 8:56:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[FirtsName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[city] [nvarchar](max) NULL,
	[district] [nvarchar](max) NULL,
	[ward] [nvarchar](max) NULL,
	[coin] [int] NULL,
	[Image] [nvarchar](max) NULL,
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 7/21/2021 8:56:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
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
/****** Object:  Table [dbo].[AuctionCategories]    Script Date: 7/21/2021 8:56:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuctionCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Icon] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AuctionCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Auctions]    Script Date: 7/21/2021 8:56:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auctions](
	[Id] [nvarchar](450) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[Price_Start] [float] NOT NULL,
	[Price_Step] [float] NOT NULL,
	[Feature_Img] [nvarchar](max) NULL,
	[Product_Content] [nvarchar](max) NOT NULL,
	[Product_New] [bit] NOT NULL,
	[Product_Status] [bit] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
	[ApplicationUserBuyId] [nvarchar](450) NULL,
	[AuctionImgFolder] [nvarchar](max) NULL,
	[Time_Start] [datetime2](7) NOT NULL,
	[Time_End] [datetime2](7) NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Auctions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[coinProducts]    Script Date: 7/21/2021 8:56:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[coinProducts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Level] [nvarchar](max) NOT NULL,
	[CoinName] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_coinProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderCoinDetails]    Script Date: 7/21/2021 8:56:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderCoinDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderHeaderId] [nvarchar](450) NOT NULL,
	[CoinProductsId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_orderCoinDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderCoinHeaders]    Script Date: 7/21/2021 8:56:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderCoinHeaders](
	[Id] [nvarchar](450) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[PaymentType] [nvarchar](max) NOT NULL,
	[PaymentStatus] [bit] NOT NULL,
	[TransactionId] [nvarchar](max) NULL,
	[ApplicationUserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_orderCoinHeaders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[saleCoins]    Script Date: 7/21/2021 8:56:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[saleCoins](
	[Id] [nvarchar](450) NOT NULL,
	[PaypalEmail] [nvarchar](max) NOT NULL,
	[amountcoin] [float] NOT NULL,
	[TransactionStatus] [bit] NOT NULL,
	[ApplicationUserId] [nvarchar](450) NOT NULL,
	[DateCreate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_saleCoins] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210721020310_AddDatabase', N'6.0.0-preview.6.21352.1')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'47e64c78-2e8b-4a5b-8285-503f6ace0b17', N'Admin', N'ADMIN', N'af29138e-d328-4c57-bb11-30f3517a0aa8')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'71633339-e730-4d43-ae19-74c8f18db8c1', N'Customers', N'CUSTOMERS', N'e1b195de-1899-4482-9a5b-7f99debb466a')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'fc767779-a608-4a33-8b9f-e443fd745c40', N'Moderate', N'MODERATE', N'fdad7005-dcbb-46ea-a103-a5e44b42736e')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fad6859b-03ca-41b4-84b9-a882896b6a56', N'47e64c78-2e8b-4a5b-8285-503f6ace0b17')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7a6145bd-81ea-46f4-bc38-a784c8001c88', N'71633339-e730-4d43-ae19-74c8f18db8c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'86cfa52a-4525-442c-918e-2bbb86585aab', N'71633339-e730-4d43-ae19-74c8f18db8c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'aed416fc-bb17-413f-a8e2-61d4f9d5a2a0', N'71633339-e730-4d43-ae19-74c8f18db8c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f419836a-1bdd-4894-a4db-55bae725a8c7', N'71633339-e730-4d43-ae19-74c8f18db8c1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f419836a-1bdd-4894-a4db-55bae725a8c7', N'fc767779-a608-4a33-8b9f-e443fd745c40')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirtsName], [LastName], [city], [district], [ward], [coin], [Image], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7a6145bd-81ea-46f4-bc38-a784c8001c88', N'ApplicationUser', N'bon', N'le', N'0', N'0', N'0', 21199, N'\images\User\fb09087d-1ff9-4b21-a33d-cc10a534d8a3.jpg', N'binlv2011', N'BINLV2011', N'bonhetco34@gmail.com', N'BONHETCO34@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEHt1RO7Sy+1jSBT9jbnNQy1wCOugqSu+76MJ2rflRu9xHl4ZyzpwWLvRozvyVXTegw==', N'QNKH4JDX5L2KLRVZ6UZOJ7QA6LJZSQMN', N'3271b8d5-d7c6-44e4-bf5e-fb7f76ed72c6', N'+84905610432', 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirtsName], [LastName], [city], [district], [ward], [coin], [Image], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'86cfa52a-4525-442c-918e-2bbb86585aab', N'ApplicationUser', N'le van', N'bon', N'0', N'0', N'0', 100, N'\images\User\fb09087d-1ff9-4b21-a33d-cc10a534d8a3.jpg', N'binlv2012', N'BINLV2012', N'nganthanh1012000@gmail.com', N'NGANTHANH1012000@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAENncycV6Hlmgtb5Zp6qvDHNTWkFmJZ9mjlMkKObXXW4kmGGS7eitlHEbFwpKenHDsw==', N'6ZN5BJWGN2RPNOWGONSDI7JNWQHLSNNE', N'b7077f3e-2bc1-41d3-8c01-ebd387c44943', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirtsName], [LastName], [city], [district], [ward], [coin], [Image], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'aed416fc-bb17-413f-a8e2-61d4f9d5a2a0', N'ApplicationUser', N'bon', N'le van', N'25', N'236', N'08491', 0, N'\images\User\fb09087d-1ff9-4b21-a33d-cc10a534d8a3.jpg', N'levanbon', N'LEVANBON', N'nhokvipkutedndn@gmail.com', N'NHOKVIPKUTEDNDN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEGtFK/344wG6Yf+osoUQPVVY4XvW8wpwaWlzzKp5vwh6Db10KBSIiKuoxoHFRrJHcQ==', N'EP2ELQXFSX7UPOCOMTTBYUUVWBNDENQQ', N'558aa26a-4994-476c-9163-c475f325786f', N'+84905610432', 1, 1, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirtsName], [LastName], [city], [district], [ward], [coin], [Image], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f419836a-1bdd-4894-a4db-55bae725a8c7', N'ApplicationUser', N'bon', N'le van', N'22', N'202', N'06982', 0, N'\images\User\fb09087d-1ff9-4b21-a33d-cc10a534d8a3.jpg', N'moderate', N'MODERATE', N'moderate@gmail.com', N'MODERATE@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEDnDt/jLh3/zCtT87QaywfdwzTbBMTFp7L4ks+Weeg53vhQR65qvT7GLBwneKlc8ww==', N'6KLP4JDXBW73VZYF27NK3R2QYKTBAAY6', N'6661c6db-9ead-465e-99fd-b646d783a366', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirtsName], [LastName], [city], [district], [ward], [coin], [Image], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fad6859b-03ca-41b4-84b9-a882896b6a56', N'ApplicationUser', N'bon', N'le', NULL, NULL, NULL, 0, N'\images\User\fb09087d-1ff9-4b21-a33d-cc10a534d8a3.jpg', N'admin123', N'ADMIN123', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEMdtGEVLbLyP+mLMGlU32ACE8l2DS3up6rXNENhRrW+wDIANSMD69dI/X/t461z56Q==', N'XOZZIFDVK4PZ6C2OUZO2IFDPSLGYYDLH', N'85995039-87f3-4e82-8529-6ad5b94fae15', N'+849353375712', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value]) VALUES (N'7a6145bd-81ea-46f4-bc38-a784c8001c88', N'[AspNetUserStore]', N'AuthenticatorKey', N'OL2QXPIJOS7J674WCDXA666TBNDZ3NGS')
INSERT [dbo].[AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value]) VALUES (N'aed416fc-bb17-413f-a8e2-61d4f9d5a2a0', N'[AspNetUserStore]', N'AuthenticatorKey', N'B4QHEH6ZTY6UQZRXZJHA3SNJKVGWYR5P')
INSERT [dbo].[AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value]) VALUES (N'aed416fc-bb17-413f-a8e2-61d4f9d5a2a0', N'[AspNetUserStore]', N'RecoveryCodes', N'b8832210;767e08c2;74f9c6c8;f1262c08;54eb8c88;3e554e43;4b2b2534;fe4780be;ca9dd909;ed8e19b3')
GO
SET IDENTITY_INSERT [dbo].[AuctionCategories] ON 

INSERT [dbo].[AuctionCategories] ([Id], [Icon], [Name]) VALUES (1, N'Null', N'Tài sản công')
INSERT [dbo].[AuctionCategories] ([Id], [Icon], [Name]) VALUES (2, N'Null', N'Bất động sản')
INSERT [dbo].[AuctionCategories] ([Id], [Icon], [Name]) VALUES (3, N'null', N'Xe cộ')
INSERT [dbo].[AuctionCategories] ([Id], [Icon], [Name]) VALUES (4, N'null', N'Nghệ thuật')
INSERT [dbo].[AuctionCategories] ([Id], [Icon], [Name]) VALUES (5, N'null', N'Hàng hiệu xa xỉ')
INSERT [dbo].[AuctionCategories] ([Id], [Icon], [Name]) VALUES (6, N'null', N'Tài sản khác')
SET IDENTITY_INSERT [dbo].[AuctionCategories] OFF
GO
INSERT [dbo].[Auctions] ([Id], [ProductName], [Price_Start], [Price_Step], [Feature_Img], [Product_Content], [Product_New], [Product_Status], [CategoryId], [ApplicationUserId], [ApplicationUserBuyId], [AuctionImgFolder], [Time_Start], [Time_End], [DateCreated]) VALUES (N'5ab13205-85da-418f-9801-136f9deb326b', N'Test', 1000, 0, N'\images\Product\6b02ee65-e55a-4dd5-8488-c7970d9e2e92\195808074_355519289247446_7577497469085271053_n.jpg', N'Test', 1, 0, 1, N'7a6145bd-81ea-46f4-bc38-a784c8001c88', NULL, N'6b02ee65-e55a-4dd5-8488-c7970d9e2e92', CAST(N'2021-07-19T07:15:54.1000000' AS DateTime2), CAST(N'2021-07-24T07:15:54.1000000' AS DateTime2), CAST(N'2021-07-20T12:04:45.8396113' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[coinProducts] ON 

INSERT [dbo].[coinProducts] ([Id], [Level], [CoinName], [Description], [Price], [Photo]) VALUES (1, N'Small', N'100 Xu', N'Xu là đơn vị tiền ảo của sàn Đấu giá, được dùng để thanh toán và đổi thành tiền thật.', 100, N'Coin/100.png')
INSERT [dbo].[coinProducts] ([Id], [Level], [CoinName], [Description], [Price], [Photo]) VALUES (2, N'Little', N'200 Xu', N'Xu là đơn vị tiền ảo của sàn Đấu giá, được dùng để thanh toán và đổi thành tiền thật.', 200, N'Coin/200.png')
INSERT [dbo].[coinProducts] ([Id], [Level], [CoinName], [Description], [Price], [Photo]) VALUES (3, N'Big', N'500 Xu', N'Xu là đơn vị tiền ảo của sàn Đấu giá, được dùng để thanh toán và đổi thành tiền thật.', 500, N'Coin/500.png')
INSERT [dbo].[coinProducts] ([Id], [Level], [CoinName], [Description], [Price], [Photo]) VALUES (4, N'Large', N'1000 Xu', N'Xu là đơn vị tiền ảo của sàn Đấu giá, được dùng để thanh toán và đổi thành tiền thật.', 1000, N'Coin/1000.png')
INSERT [dbo].[coinProducts] ([Id], [Level], [CoinName], [Description], [Price], [Photo]) VALUES (5, N'Tall', N'2000 Xu', N'Xu là đơn vị tiền ảo của sàn Đấu giá, được dùng để thanh toán và đổi thành tiền thật.', 2000, N'Coin/2000.png')
INSERT [dbo].[coinProducts] ([Id], [Level], [CoinName], [Description], [Price], [Photo]) VALUES (6, N'High', N'5000 Xu', N'Xu là đơn vị tiền ảo của sàn Đấu giá, được dùng để thanh toán và đổi thành tiền thật.', 5000, N'Coin/5000.png')
INSERT [dbo].[coinProducts] ([Id], [Level], [CoinName], [Description], [Price], [Photo]) VALUES (7, N'Other', N'Other', N'Xu là đơn vị tiền ảo của sàn Đấu giá, được dùng để thanh toán và đổi thành tiền thật.', 0, N'Coin/default.png')
SET IDENTITY_INSERT [dbo].[coinProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[orderCoinDetails] ON 

INSERT [dbo].[orderCoinDetails] ([Id], [OrderHeaderId], [CoinProductsId], [Quantity], [Price]) VALUES (1, N'7d693ec8-9ac8-42fc-9e18-76cf63153561', 2, 1, 200)
INSERT [dbo].[orderCoinDetails] ([Id], [OrderHeaderId], [CoinProductsId], [Quantity], [Price]) VALUES (2, N'e2de239a-fcce-405e-a296-cc8aa07856a7', 7, 1, 50)
INSERT [dbo].[orderCoinDetails] ([Id], [OrderHeaderId], [CoinProductsId], [Quantity], [Price]) VALUES (3, N'e2de239a-fcce-405e-a296-cc8aa07856a7', 1, 1, 100)
INSERT [dbo].[orderCoinDetails] ([Id], [OrderHeaderId], [CoinProductsId], [Quantity], [Price]) VALUES (4, N'b9029ef5-98d7-4920-9c2a-14090462fed5', 2, 1, 200)
INSERT [dbo].[orderCoinDetails] ([Id], [OrderHeaderId], [CoinProductsId], [Quantity], [Price]) VALUES (5, N'da9f05cb-36d2-4b52-88fb-b44ff7ff2772', 2, 1, 200)
INSERT [dbo].[orderCoinDetails] ([Id], [OrderHeaderId], [CoinProductsId], [Quantity], [Price]) VALUES (6, N'1be1b253-a1dd-403f-a79f-68cc82cf73d9', 7, 1, 50)
INSERT [dbo].[orderCoinDetails] ([Id], [OrderHeaderId], [CoinProductsId], [Quantity], [Price]) VALUES (7, N'1be1b253-a1dd-403f-a79f-68cc82cf73d9', 1, 1, 100)
INSERT [dbo].[orderCoinDetails] ([Id], [OrderHeaderId], [CoinProductsId], [Quantity], [Price]) VALUES (8, N'44d60f63-3cfe-4b5a-becd-2681c0beebd9', 1, 2, 100)
INSERT [dbo].[orderCoinDetails] ([Id], [OrderHeaderId], [CoinProductsId], [Quantity], [Price]) VALUES (9, N'61b3cbe1-9a4f-4551-a9f5-365a1a50c6e9', 2, 1, 200)
SET IDENTITY_INSERT [dbo].[orderCoinDetails] OFF
GO
INSERT [dbo].[orderCoinHeaders] ([Id], [Date], [PaymentType], [PaymentStatus], [TransactionId], [ApplicationUserId]) VALUES (N'1be1b253-a1dd-403f-a79f-68cc82cf73d9', CAST(N'2021-07-16T10:47:23.4495714' AS DateTime2), N'PayPal', 1, N'PAYID-MDYQCOA0H797962A3416091K', N'7a6145bd-81ea-46f4-bc38-a784c8001c88')
INSERT [dbo].[orderCoinHeaders] ([Id], [Date], [PaymentType], [PaymentStatus], [TransactionId], [ApplicationUserId]) VALUES (N'44d60f63-3cfe-4b5a-becd-2681c0beebd9', CAST(N'2021-07-17T22:05:57.4624582' AS DateTime2), N'PayPal', 1, N'PAYID-MDZPDPQ30300131Y8210433S', N'7a6145bd-81ea-46f4-bc38-a784c8001c88')
INSERT [dbo].[orderCoinHeaders] ([Id], [Date], [PaymentType], [PaymentStatus], [TransactionId], [ApplicationUserId]) VALUES (N'61b3cbe1-9a4f-4551-a9f5-365a1a50c6e9', CAST(N'2021-07-19T23:39:26.4708691' AS DateTime2), N'PayPal', 1, N'PAYID-MD22VKI1X727069764450934', N'7a6145bd-81ea-46f4-bc38-a784c8001c88')
INSERT [dbo].[orderCoinHeaders] ([Id], [Date], [PaymentType], [PaymentStatus], [TransactionId], [ApplicationUserId]) VALUES (N'7d693ec8-9ac8-42fc-9e18-76cf63153561', CAST(N'2021-07-12T18:06:55.2799898' AS DateTime2), N'PayPal', 1, N'PAYID-MDWCEQA32V47622825872304', N'7a6145bd-81ea-46f4-bc38-a784c8001c88')
INSERT [dbo].[orderCoinHeaders] ([Id], [Date], [PaymentType], [PaymentStatus], [TransactionId], [ApplicationUserId]) VALUES (N'b9029ef5-98d7-4920-9c2a-14090462fed5', CAST(N'2021-07-16T09:21:52.5017822' AS DateTime2), N'PayPal', 1, N'PAYID-MDYO2JI00U75716T4408025C', N'7a6145bd-81ea-46f4-bc38-a784c8001c88')
INSERT [dbo].[orderCoinHeaders] ([Id], [Date], [PaymentType], [PaymentStatus], [TransactionId], [ApplicationUserId]) VALUES (N'da9f05cb-36d2-4b52-88fb-b44ff7ff2772', CAST(N'2021-07-16T10:32:43.8394660' AS DateTime2), N'PayPal', 1, N'PAYID-MDYP3TI20125343P3263142N', N'7a6145bd-81ea-46f4-bc38-a784c8001c88')
INSERT [dbo].[orderCoinHeaders] ([Id], [Date], [PaymentType], [PaymentStatus], [TransactionId], [ApplicationUserId]) VALUES (N'e2de239a-fcce-405e-a296-cc8aa07856a7', CAST(N'2021-07-12T22:02:33.6887585' AS DateTime2), N'PayPal', 1, N'PAYID-MDWFSCQ1E6987157F618783L', N'aed416fc-bb17-413f-a8e2-61d4f9d5a2a0')
GO
INSERT [dbo].[saleCoins] ([Id], [PaypalEmail], [amountcoin], [TransactionStatus], [ApplicationUserId], [DateCreate]) VALUES (N'7a87f41d-c1f5-4440-b1c3-45b340b9d7b3', N'test@paypal.com', 200, 0, N'7a6145bd-81ea-46f4-bc38-a784c8001c88', CAST(N'2021-07-13T09:26:23.0869903' AS DateTime2))
INSERT [dbo].[saleCoins] ([Id], [PaypalEmail], [amountcoin], [TransactionStatus], [ApplicationUserId], [DateCreate]) VALUES (N'83fbaff2-b968-4d69-9a31-df1015d4fec3', N'bonpro@gmail.com', 26, 0, N'7a6145bd-81ea-46f4-bc38-a784c8001c88', CAST(N'2021-07-17T22:08:59.1335854' AS DateTime2))
INSERT [dbo].[saleCoins] ([Id], [PaypalEmail], [amountcoin], [TransactionStatus], [ApplicationUserId], [DateCreate]) VALUES (N'92f31b3f-4922-4b70-a27d-fb85762f5850', N'bonpro@gmail.com', 2, 1, N'7a6145bd-81ea-46f4-bc38-a784c8001c88', CAST(N'2021-07-17T22:10:35.1419535' AS DateTime2))
INSERT [dbo].[saleCoins] ([Id], [PaypalEmail], [amountcoin], [TransactionStatus], [ApplicationUserId], [DateCreate]) VALUES (N'c883a571-aedb-4251-bd79-157adec727ed', N'bonpro@gmail.com', 123, 0, N'7a6145bd-81ea-46f4-bc38-a784c8001c88', CAST(N'2021-07-16T10:45:22.7275422' AS DateTime2))
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 7/21/2021 8:56:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/21/2021 8:56:49 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 7/21/2021 8:56:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 7/21/2021 8:56:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 7/21/2021 8:56:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 7/21/2021 8:56:49 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 7/21/2021 8:56:49 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Auctions_ApplicationUserBuyId]    Script Date: 7/21/2021 8:56:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_Auctions_ApplicationUserBuyId] ON [dbo].[Auctions]
(
	[ApplicationUserBuyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Auctions_ApplicationUserId]    Script Date: 7/21/2021 8:56:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_Auctions_ApplicationUserId] ON [dbo].[Auctions]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Auctions_CategoryId]    Script Date: 7/21/2021 8:56:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_Auctions_CategoryId] ON [dbo].[Auctions]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_orderCoinDetails_CoinProductsId]    Script Date: 7/21/2021 8:56:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_orderCoinDetails_CoinProductsId] ON [dbo].[orderCoinDetails]
(
	[CoinProductsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_orderCoinDetails_OrderHeaderId]    Script Date: 7/21/2021 8:56:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_orderCoinDetails_OrderHeaderId] ON [dbo].[orderCoinDetails]
(
	[OrderHeaderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_orderCoinHeaders_ApplicationUserId]    Script Date: 7/21/2021 8:56:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_orderCoinHeaders_ApplicationUserId] ON [dbo].[orderCoinHeaders]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_saleCoins_ApplicationUserId]    Script Date: 7/21/2021 8:56:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_saleCoins_ApplicationUserId] ON [dbo].[saleCoins]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
ALTER TABLE [dbo].[Auctions]  WITH CHECK ADD  CONSTRAINT [FK_Auctions_AspNetUsers_ApplicationUserBuyId] FOREIGN KEY([ApplicationUserBuyId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Auctions] CHECK CONSTRAINT [FK_Auctions_AspNetUsers_ApplicationUserBuyId]
GO
ALTER TABLE [dbo].[Auctions]  WITH CHECK ADD  CONSTRAINT [FK_Auctions_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Auctions] CHECK CONSTRAINT [FK_Auctions_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[Auctions]  WITH CHECK ADD  CONSTRAINT [FK_Auctions_AuctionCategories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[AuctionCategories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Auctions] CHECK CONSTRAINT [FK_Auctions_AuctionCategories_CategoryId]
GO
ALTER TABLE [dbo].[orderCoinDetails]  WITH CHECK ADD  CONSTRAINT [FK_orderCoinDetails_coinProducts_CoinProductsId] FOREIGN KEY([CoinProductsId])
REFERENCES [dbo].[coinProducts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orderCoinDetails] CHECK CONSTRAINT [FK_orderCoinDetails_coinProducts_CoinProductsId]
GO
ALTER TABLE [dbo].[orderCoinDetails]  WITH CHECK ADD  CONSTRAINT [FK_orderCoinDetails_orderCoinHeaders_OrderHeaderId] FOREIGN KEY([OrderHeaderId])
REFERENCES [dbo].[orderCoinHeaders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orderCoinDetails] CHECK CONSTRAINT [FK_orderCoinDetails_orderCoinHeaders_OrderHeaderId]
GO
ALTER TABLE [dbo].[orderCoinHeaders]  WITH CHECK ADD  CONSTRAINT [FK_orderCoinHeaders_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orderCoinHeaders] CHECK CONSTRAINT [FK_orderCoinHeaders_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[saleCoins]  WITH CHECK ADD  CONSTRAINT [FK_saleCoins_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[saleCoins] CHECK CONSTRAINT [FK_saleCoins_AspNetUsers_ApplicationUserId]
GO
USE [master]
GO
ALTER DATABASE [ProjectAuction] SET  READ_WRITE 
GO
