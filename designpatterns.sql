USE [master]
GO
/****** Object:  Database [DesignPatterns]    Script Date: 22/06/2021 06:24:36 p. m. ******/
CREATE DATABASE [DesignPatterns]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DesignPatterns', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DesignPatterns.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DesignPatterns_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DesignPatterns_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DesignPatterns] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DesignPatterns].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DesignPatterns] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DesignPatterns] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DesignPatterns] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DesignPatterns] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DesignPatterns] SET ARITHABORT OFF 
GO
ALTER DATABASE [DesignPatterns] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DesignPatterns] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DesignPatterns] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DesignPatterns] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DesignPatterns] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DesignPatterns] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DesignPatterns] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DesignPatterns] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DesignPatterns] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DesignPatterns] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DesignPatterns] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DesignPatterns] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DesignPatterns] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DesignPatterns] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DesignPatterns] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DesignPatterns] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DesignPatterns] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DesignPatterns] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DesignPatterns] SET  MULTI_USER 
GO
ALTER DATABASE [DesignPatterns] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DesignPatterns] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DesignPatterns] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DesignPatterns] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DesignPatterns] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DesignPatterns]
GO
/****** Object:  Table [dbo].[Beer]    Script Date: 22/06/2021 06:24:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Beer](
	[BeerId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Style] [varchar](50) NOT NULL,
	[BrandId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Beer] PRIMARY KEY CLUSTERED 
(
	[BeerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 22/06/2021 06:24:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Brand](
	[BrandId] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Brand_BrandId]  DEFAULT (newid()),
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Beer] ON 

INSERT [dbo].[Beer] ([BeerId], [Name], [Style], [BrandId]) VALUES (2, N'Tremens', N'Strong Ale', N'f99e35d1-a2c9-4d8e-a89e-289a9e8af3be')
INSERT [dbo].[Beer] ([BeerId], [Name], [Style], [BrandId]) VALUES (4, N'Red', N'Fruit Beer', N'f99e35d1-a2c9-4d8e-a89e-289a9e8af3be')
INSERT [dbo].[Beer] ([BeerId], [Name], [Style], [BrandId]) VALUES (5, N'London Porter', N'Porter', N'90083559-d85c-4dcd-9e7f-5af1480b9a74')
INSERT [dbo].[Beer] ([BeerId], [Name], [Style], [BrandId]) VALUES (6, N'Ipa', N'Ipa', N'90083559-d85c-4dcd-9e7f-5af1480b9a74')
INSERT [dbo].[Beer] ([BeerId], [Name], [Style], [BrandId]) VALUES (7, N'Nueva', N'Ale', N'f99e35d1-a2c9-4d8e-a89e-289a9e8af3be')
INSERT [dbo].[Beer] ([BeerId], [Name], [Style], [BrandId]) VALUES (8, N'Corona', N'Algo', N'7d1c978a-e4a6-4244-8ae5-b145a06483ed')
INSERT [dbo].[Beer] ([BeerId], [Name], [Style], [BrandId]) VALUES (9, N'Erdinger Pikantus', N'Bock', N'3d719de2-3375-41f0-8f80-d69a7ae8373d')
INSERT [dbo].[Beer] ([BeerId], [Name], [Style], [BrandId]) VALUES (10, N'Nueva Delirium', N'Algo nuevo', N'f99e35d1-a2c9-4d8e-a89e-289a9e8af3be')
INSERT [dbo].[Beer] ([BeerId], [Name], [Style], [BrandId]) VALUES (11, N'Heineken', N'Lager', N'85a3c2b7-d9e5-4d01-aa53-693e1eb21331')
INSERT [dbo].[Beer] ([BeerId], [Name], [Style], [BrandId]) VALUES (12, N'prueba', N'prueba', N'c18d916c-3ec1-4325-bfb7-0cb28c50af40')
INSERT [dbo].[Beer] ([BeerId], [Name], [Style], [BrandId]) VALUES (13, N'nueva erdinger', N'nueva', N'3d719de2-3375-41f0-8f80-d69a7ae8373d')
INSERT [dbo].[Beer] ([BeerId], [Name], [Style], [BrandId]) VALUES (14, N'oioio', N'jk', N'e441d450-8ca6-4bb1-88fb-20de76ac619a')
INSERT [dbo].[Beer] ([BeerId], [Name], [Style], [BrandId]) VALUES (15, N'Cerveza nueva', N'Pale Ale', N'4f94807b-bf58-49ab-9fea-59b4ba469a5c')
INSERT [dbo].[Beer] ([BeerId], [Name], [Style], [BrandId]) VALUES (16, N'Cerveza con marca existente', N'Stout', N'90083559-d85c-4dcd-9e7f-5af1480b9a74')
SET IDENTITY_INSERT [dbo].[Beer] OFF
INSERT [dbo].[Brand] ([BrandId], [Name]) VALUES (N'c18d916c-3ec1-4325-bfb7-0cb28c50af40', N'prueba marca')
INSERT [dbo].[Brand] ([BrandId], [Name]) VALUES (N'e441d450-8ca6-4bb1-88fb-20de76ac619a', N'j')
INSERT [dbo].[Brand] ([BrandId], [Name]) VALUES (N'f99e35d1-a2c9-4d8e-a89e-289a9e8af3be', N'Delirium')
INSERT [dbo].[Brand] ([BrandId], [Name]) VALUES (N'4f94807b-bf58-49ab-9fea-59b4ba469a5c', N'Marca Nueva Cerveza')
INSERT [dbo].[Brand] ([BrandId], [Name]) VALUES (N'90083559-d85c-4dcd-9e7f-5af1480b9a74', N'Fuller''s')
INSERT [dbo].[Brand] ([BrandId], [Name]) VALUES (N'85a3c2b7-d9e5-4d01-aa53-693e1eb21331', N'Heineken')
INSERT [dbo].[Brand] ([BrandId], [Name]) VALUES (N'7d1c978a-e4a6-4244-8ae5-b145a06483ed', N'Modelo')
INSERT [dbo].[Brand] ([BrandId], [Name]) VALUES (N'3d719de2-3375-41f0-8f80-d69a7ae8373d', N'Erdinger')
ALTER TABLE [dbo].[Beer]  WITH CHECK ADD  CONSTRAINT [FK_Beer_Brand] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brand] ([BrandId])
GO
ALTER TABLE [dbo].[Beer] CHECK CONSTRAINT [FK_Beer_Brand]
GO
USE [master]
GO
ALTER DATABASE [DesignPatterns] SET  READ_WRITE 
GO
