USE [master]
GO
/****** Object:  Database [Clothing]    Script Date: 4/30/2017 11:43:15 AM ******/
CREATE DATABASE [Clothing]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Clothing', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Clothing.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Clothing_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Clothing_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Clothing] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Clothing].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Clothing] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Clothing] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Clothing] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Clothing] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Clothing] SET ARITHABORT OFF 
GO
ALTER DATABASE [Clothing] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Clothing] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Clothing] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Clothing] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Clothing] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Clothing] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Clothing] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Clothing] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Clothing] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Clothing] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Clothing] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Clothing] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Clothing] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Clothing] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Clothing] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Clothing] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Clothing] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Clothing] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Clothing] SET  MULTI_USER 
GO
ALTER DATABASE [Clothing] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Clothing] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Clothing] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Clothing] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Clothing] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Clothing]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 4/30/2017 11:43:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryName] [nvarchar](20) NOT NULL,
	[AccessoryPhoto] [nvarchar](50) NOT NULL,
	[AccessoryType] [nvarchar](20) NOT NULL,
	[AccessoryColor] [nvarchar](20) NOT NULL,
	[AccessorySeason] [nvarchar](10) NOT NULL,
	[AccessoryOccasion] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Occassions] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 4/30/2017 11:43:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[BottomName] [nvarchar](20) NOT NULL,
	[BottomPhoto] [nvarchar](50) NOT NULL,
	[BottomType] [nvarchar](20) NOT NULL,
	[BottomColor] [nvarchar](10) NOT NULL,
	[BottomSeason] [nvarchar](10) NOT NULL,
	[BottomOccasion] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfits]    Script Date: 4/30/2017 11:43:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfits](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoeID] [int] NOT NULL,
	[AccessoryID] [int] NOT NULL,
 CONSTRAINT [PK_Outfits] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 4/30/2017 11:43:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[ShoeName] [nvarchar](20) NOT NULL,
	[ShoePhoto] [nvarchar](50) NOT NULL,
	[ShoeType] [nvarchar](20) NOT NULL,
	[ShoeColor] [nvarchar](10) NOT NULL,
	[ShoeSeason] [nvarchar](20) NOT NULL,
	[ShoeOccasion] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 4/30/2017 11:43:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[TopName] [nvarchar](20) NOT NULL,
	[TopPhoto] [nchar](50) NOT NULL,
	[TopType] [nvarchar](20) NOT NULL,
	[TopColor] [nvarchar](10) NOT NULL,
	[TopSeason] [nvarchar](20) NOT NULL,
	[TopOccassion] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryType], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (1, N'Penguin', N'~Content\Images\squarebelt.jpg', N'Belt', N'Brown', N'All', N'Work')
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryType], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (2, N'Gap', N'~Content\Images\squarebelt.jpg', N'Socks', N'Red', N'All', N'Casual')
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryType], [AccessoryColor], [AccessorySeason], [AccessoryOccasion]) VALUES (3, N'Starter', N'~Content\Images\squarebelt.jpg', N'Hat', N'Blue', N'Summer', N'Casual')
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (1, N'Levis', N'~/Content/Images/Pants.jpg', N'Jeans', N'Blue', N'Winter', N'Casual')
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (2, N'Gap', N'~/Content/Images/Pants.jpg', N'Slacks', N'Grey', N'Winter', N'Work')
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (3, N'Levis', N'~/Content/Images/Pants.jpg', N'Jeans', N'Blue', N'Summer', N'Casual')
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (1, N'Nike', N'~/Content/Images/squareshoe.jpg', N'Basketball', N'White', N'Summer', N'Sport')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (2, N'Clarks', N'~/Content/Images/squareshoe.jpg', N'Boot', N'Brown', N'Winter', N'Casual')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (3, N'Converse', N'~/Content/Images/squareshoe.jpg', N'All Star', N'Black', N'Summer', N'Casual')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor], [TopSeason], [TopOccassion]) VALUES (1, N'American Apparel', N'~Content\Images\squareshirt.jpg                   ', N'T Shirt', N'Black', N'Summer', N'Casual')
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor], [TopSeason], [TopOccassion]) VALUES (2, N'Ben Sherman', N'~Content\Images\squareshirt.jpg                   ', N'Polo', N'Green', N'Summer', N'Work')
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor], [TopSeason], [TopOccassion]) VALUES (3, N'Penguin', N'~Content\Images\squareshirt.jpg                   ', N'Button Down', N'White', N'Winter', N'Formal')
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Accessories] FOREIGN KEY([AccessoryID])
REFERENCES [dbo].[Accessories] ([AccessoryID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Accessories]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Bottoms] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottoms] ([BottomID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Bottoms]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Shoes] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoes] ([ShoeID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Shoes]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Tops]
GO
USE [master]
GO
ALTER DATABASE [Clothing] SET  READ_WRITE 
GO
