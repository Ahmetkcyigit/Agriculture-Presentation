USE [master]
GO
/****** Object:  Database [DbAgriculture]    Script Date: 14.04.2024 23:36:35 ******/
CREATE DATABASE [DbAgriculture]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DbAgriculture', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DbAgriculture.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DbAgriculture_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DbAgriculture_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DbAgriculture] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DbAgriculture].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DbAgriculture] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DbAgriculture] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DbAgriculture] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DbAgriculture] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DbAgriculture] SET ARITHABORT OFF 
GO
ALTER DATABASE [DbAgriculture] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DbAgriculture] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DbAgriculture] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DbAgriculture] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DbAgriculture] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DbAgriculture] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DbAgriculture] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DbAgriculture] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DbAgriculture] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DbAgriculture] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DbAgriculture] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DbAgriculture] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DbAgriculture] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DbAgriculture] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DbAgriculture] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DbAgriculture] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DbAgriculture] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DbAgriculture] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DbAgriculture] SET  MULTI_USER 
GO
ALTER DATABASE [DbAgriculture] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DbAgriculture] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DbAgriculture] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DbAgriculture] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DbAgriculture] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DbAgriculture] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DbAgriculture] SET QUERY_STORE = ON
GO
ALTER DATABASE [DbAgriculture] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DbAgriculture]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 14.04.2024 23:36:35 ******/
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
/****** Object:  Table [dbo].[Abouts]    Script Date: 14.04.2024 23:36:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abouts](
	[AboutId] [int] IDENTITY(1,1) NOT NULL,
	[AboutHistory] [nvarchar](max) NULL,
	[AboutUs] [nvarchar](max) NULL,
 CONSTRAINT [PK_Abouts] PRIMARY KEY CLUSTERED 
(
	[AboutId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 14.04.2024 23:36:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[AddressId] [int] IDENTITY(1,1) NOT NULL,
	[Description1] [nvarchar](max) NULL,
	[Description2] [nvarchar](max) NULL,
	[Description3] [nvarchar](max) NULL,
	[Description4] [nvarchar](max) NULL,
	[Mapinfo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 14.04.2024 23:36:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Announcements]    Script Date: 14.04.2024 23:36:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Announcements](
	[AnnouncementId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Date] [datetime2](7) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Announcements] PRIMARY KEY CLUSTERED 
(
	[AnnouncementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 14.04.2024 23:36:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[Date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 14.04.2024 23:36:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[ImageId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 14.04.2024 23:36:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[ServiceId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Class1] [nvarchar](max) NULL,
	[Class2] [nvarchar](max) NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialMedias]    Script Date: 14.04.2024 23:36:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialMedias](
	[SocialMediaID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Icon] [nvarchar](max) NULL,
	[Url] [nvarchar](max) NULL,
 CONSTRAINT [PK_SocialMedias] PRIMARY KEY CLUSTERED 
(
	[SocialMediaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 14.04.2024 23:36:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[TeamId] [int] IDENTITY(1,1) NOT NULL,
	[PersonName] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[FacebookUrl] [nvarchar](max) NULL,
	[InstagramUrl] [nvarchar](max) NULL,
	[WebsiteUrl] [nvarchar](max) NULL,
	[TwitterUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[TeamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240102195151_mig_createdb', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240109211711_mig_change_variable', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240128163630_mig_addimagecolums', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240407212819_mig_add_socialmedia', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240410213003_mig_add_about', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240410221837_mig_add_service', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240411193101_add_mig_admin', N'5.0.0')
GO
SET IDENTITY_INSERT [dbo].[Abouts] ON 

INSERT [dbo].[Abouts] ([AboutId], [AboutHistory], [AboutUs]) VALUES (1, N'Meyve seçeneklerini buluşturma noktası', N'Kendi bahçelerimiz')
INSERT [dbo].[Abouts] ([AboutId], [AboutHistory], [AboutUs]) VALUES (2, N'Meyve seçeneklerini buluşturma noktası', N'Değerli İnsanlar')
INSERT [dbo].[Abouts] ([AboutId], [AboutHistory], [AboutUs]) VALUES (3, N'Tecrübe ile sabit kalite ', N'Kendi bahçelerimiz')
INSERT [dbo].[Abouts] ([AboutId], [AboutHistory], [AboutUs]) VALUES (4, N'Sağlıklı ürünler için takip edin', N'Organik Ürünler')
SET IDENTITY_INSERT [dbo].[Abouts] OFF
GO
SET IDENTITY_INSERT [dbo].[Addresses] ON 

INSERT [dbo].[Addresses] ([AddressId], [Description1], [Description2], [Description3], [Description4], [Mapinfo]) VALUES (1, N'0630 Kutlu Mahallesi', N'test@gmail.com', N'0630 Akdere / Ankara - Türkiye', N'+90 500 400 30 10', N'https://www.google.com/maps/d/embed?mid=1J4ROMe6IOBw_DI5BTaBvz6HgFes&hl=en_US&ehbc=2E312F')
SET IDENTITY_INSERT [dbo].[Addresses] OFF
GO
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([AdminID], [Username], [Password]) VALUES (1, N'Ahmet', N'1234')
INSERT [dbo].[Admins] ([AdminID], [Username], [Password]) VALUES (2, N'Ece', N'5678')
SET IDENTITY_INSERT [dbo].[Admins] OFF
GO
SET IDENTITY_INSERT [dbo].[Announcements] ON 

INSERT [dbo].[Announcements] ([AnnouncementId], [Title], [Description], [Date], [Status]) VALUES (1, N'Ağustos ayı bakliyat hasatı', N'Lorem ipsum', CAST(N'2024-01-22T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Announcements] ([AnnouncementId], [Title], [Description], [Date], [Status]) VALUES (3, N'Eylül ayı sebze ekimi', NULL, CAST(N'2024-01-22T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Announcements] ([AnnouncementId], [Title], [Description], [Date], [Status]) VALUES (4, N'Mercimek hasadı', NULL, CAST(N'2024-01-22T00:00:00.0000000' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[Announcements] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([ContactId], [Name], [Mail], [Message], [Date]) VALUES (1, N'Ahmet', N'ahmet@gmail.com', N'Deneme', CAST(N'2024-01-29T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Contacts] ([ContactId], [Name], [Mail], [Message], [Date]) VALUES (2, N'Ecehan Saruhan', N'ece@gmail.com', N'Başarılı', CAST(N'2024-04-11T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[Images] ON 

INSERT [dbo].[Images] ([ImageId], [Title], [Description], [ImageUrl]) VALUES (1, N'Arpa Ve Başak', N'Bir Açıklama Yazısı Girilmiştir.', N'/Template/template/web/images/g1.jpg')
INSERT [dbo].[Images] ([ImageId], [Title], [Description], [ImageUrl]) VALUES (2, N'Küçük Bahçe Bitikileri', N'Bir Açıklama Yazısı Girilmiştir.', N'/Template/template/web/images/g2.jpg')
INSERT [dbo].[Images] ([ImageId], [Title], [Description], [ImageUrl]) VALUES (3, N'Çay Yetiştiriciliği', N'Bir Açıklama Yazısı Girilmiştir.', N'/Template/template/web/images/g3.jpg')
INSERT [dbo].[Images] ([ImageId], [Title], [Description], [ImageUrl]) VALUES (4, N'Buğday Hasadı', N'Bir Açıklama Yazısı Girilmiştir.', N'/Template/template/web/images/g4.jpg')
INSERT [dbo].[Images] ([ImageId], [Title], [Description], [ImageUrl]) VALUES (6, N'Bir Başlık Girilmiştir.', N'Bir Açıklama Yazısı Girilmiştir.', N'/Template/template/web/images/g5.jpg')
INSERT [dbo].[Images] ([ImageId], [Title], [Description], [ImageUrl]) VALUES (7, N'Bir Başlık Girilmiştir.', N'Bir Açıklama Yazısı Girilmiştir.', N'/Template/template/web/images/g6.jpg')
INSERT [dbo].[Images] ([ImageId], [Title], [Description], [ImageUrl]) VALUES (8, N'Bir Başlık Girilmiştir.', N'Bir Açıklama Yazısı Girilmiştir.', N'/Template/template/web/images/g7.jpg')
INSERT [dbo].[Images] ([ImageId], [Title], [Description], [ImageUrl]) VALUES (9, N'Bir Başlık Girilmiştir.', N'Bir Açıklama Yazısı Girilmiştir.', N'/Template/template/web/images/g8.jpg')
INSERT [dbo].[Images] ([ImageId], [Title], [Description], [ImageUrl]) VALUES (10, N'Bir Başlık Girilmiştir.', N'Bir Açıklama Yazısı Girilmiştir.', N'/Template/template/web/images/g9.jpg')
INSERT [dbo].[Images] ([ImageId], [Title], [Description], [ImageUrl]) VALUES (11, N'Bir Başlık Girilmiştir.', N'Bir Açıklama Yazısı Girilmiştir.', N'/Template/template/web/images/g10.jpg')
INSERT [dbo].[Images] ([ImageId], [Title], [Description], [ImageUrl]) VALUES (12, N'Bir Başlık Girilmiştir.', N'Bir Açıklama Yazısı Girilmiştir.', N'/Template/template/web/images/g11.jpg')
INSERT [dbo].[Images] ([ImageId], [Title], [Description], [ImageUrl]) VALUES (13, N'Bir Başlık Girilmiştir.', N'Bir Açıklama Yazısı Girilmiştir.', N'/Template/template/web/images/g12.jpg')
SET IDENTITY_INSERT [dbo].[Images] OFF
GO
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([ServiceId], [Title], [Description], [Image], [Class1], [Class2]) VALUES (1, N'Organik Tahıllar', N'Tamamen organik olarak hazırlanan herhangi bir katkı maddesi bulumayan maddeler', N'fa fa-pagelines', N'col-md-3 sevices-w3layouts-grids wow fadeInUp animated', N'sevices-w3layouts-img c1')
INSERT [dbo].[Services] ([ServiceId], [Title], [Description], [Image], [Class1], [Class2]) VALUES (2, N'Süt Ürünleri', N'Kendi besi ağımızdaki inek ve koyunlardaki doğal sütleri ile peynir ve tereyağı üretiyoruz.', N'fa fa-globe', N'col-md-3 sevices-w3layouts-grids sevices-w3layouts-mdl wow fadeInUp animated', N'sevices-w3layouts-img c2')
INSERT [dbo].[Services] ([ServiceId], [Title], [Description], [Image], [Class1], [Class2]) VALUES (3, N'Hasat', N'Her ürünü sadece kendi mevsiminde yetiştirip hasat ediyoruz. Tam zamanında kalite.', N'fa fa-tree', N'col-md-3 sevices-w3layouts-grids sevices-w3layouts-mdl1 wow fadeInUp animated', N'sevices-w3layouts-img c3')
INSERT [dbo].[Services] ([ServiceId], [Title], [Description], [Image], [Class1], [Class2]) VALUES (6, N'Geri Dönüşüm', N'Çevre dostu paketleme araçları ile doğayı koruyoruz. Ayrıca doğa takvimimiz de var', N'fa fa-envira', N'col-md-3 sevices-w3layouts-grids wow fadeInUp animated', N'sevices-w3layouts-img c4')
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
SET IDENTITY_INSERT [dbo].[SocialMedias] ON 

INSERT [dbo].[SocialMedias] ([SocialMediaID], [Title], [Icon], [Url]) VALUES (1, N'facebook', N'fa fa-facebook', N'#')
INSERT [dbo].[SocialMedias] ([SocialMediaID], [Title], [Icon], [Url]) VALUES (2, N'twitter', N'fa fa-twitter', N'#')
INSERT [dbo].[SocialMedias] ([SocialMediaID], [Title], [Icon], [Url]) VALUES (3, N'linkedin', N'fa fa-linkedin', N'#')
INSERT [dbo].[SocialMedias] ([SocialMediaID], [Title], [Icon], [Url]) VALUES (4, N'youtube', N'fa fa-youtube', N'#')
SET IDENTITY_INSERT [dbo].[SocialMedias] OFF
GO
SET IDENTITY_INSERT [dbo].[Teams] ON 

INSERT [dbo].[Teams] ([TeamId], [PersonName], [Title], [ImageUrl], [FacebookUrl], [InstagramUrl], [WebsiteUrl], [TwitterUrl]) VALUES (2, N'Ahmet Koçyiğit', N'Süt Ürünleri', N'/Template/template/web/images/t1.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Teams] ([TeamId], [PersonName], [Title], [ImageUrl], [FacebookUrl], [InstagramUrl], [WebsiteUrl], [TwitterUrl]) VALUES (3, N'Ecehan Saruhan', N'Bakliyat Yönetimi', N'/Template/template/web/images/t2.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Teams] ([TeamId], [PersonName], [Title], [ImageUrl], [FacebookUrl], [InstagramUrl], [WebsiteUrl], [TwitterUrl]) VALUES (4, N'Ali Kolukırık', N'Ürün Pazarlama', N'/Template/template/web/images/t3.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Teams] ([TeamId], [PersonName], [Title], [ImageUrl], [FacebookUrl], [InstagramUrl], [WebsiteUrl], [TwitterUrl]) VALUES (5, N'Kemal Kılıç', N'Gübre Yönetimi', N'/Template/template/web/images/t4.jpg', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Teams] OFF
GO
USE [master]
GO
ALTER DATABASE [DbAgriculture] SET  READ_WRITE 
GO
