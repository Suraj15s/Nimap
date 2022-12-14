USE [master]
GO
/****** Object:  Database [Product]    Script Date: 13-12-2022 20:40:29 ******/
CREATE DATABASE [Product]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Product', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Product.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Product_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Product_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Product] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Product].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Product] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Product] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Product] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Product] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Product] SET ARITHABORT OFF 
GO
ALTER DATABASE [Product] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Product] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Product] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Product] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Product] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Product] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Product] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Product] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Product] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Product] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Product] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Product] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Product] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Product] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Product] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Product] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Product] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Product] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Product] SET  MULTI_USER 
GO
ALTER DATABASE [Product] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Product] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Product] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Product] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Product] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Product] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Product] SET QUERY_STORE = OFF
GO
USE [Product]
GO
/****** Object:  Table [dbo].[ProductDetail]    Script Date: 13-12-2022 20:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetail](
	[ProductId] [varchar](10) NOT NULL,
	[ProductName] [varchar](20) NOT NULL,
	[CategoryId] [varchar](10) NOT NULL,
	[CategoryName] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'KIO525', N'Boll', N'CDF63', N'TOY')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PD80', N'BAG', N'CDF63', N'Stanary')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PD81', N'SHOE', N'CD', N'Stanary')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PD82', N'SHOE', N'CDF63', N'TOY')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PD89', N'COPY', N'St63', N'Stanary')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID101', N'TOMATO', N'CTID101', N'VEGETABLES')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID102', N'Artichoke', N'CTID102', N'v')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID103', N'Asparagus', N'CTID103', N'VEGETABLES')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID104', N'Aubergene', N'CTID104', N'VEGETABLES')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID105', N'Avocado', N'CTID105', N'VEGETABLES')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID106', N'BEET', N'CTID106', N'VEGETABLES')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID107', N'BOK CHOY', N'CTID107', N'VEGETABLES')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID108', N'BROCCOLI', N'CTID108', N'VEGETABLES')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID109', N'BROCCHOLINI', N'CTID109', N'VEGETABLES')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID110', N'Broccoli Raab', N'CTID110', N'VEGETABLES')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID111', N'Brussels Sprouts', N'CTID111', N'VEGETABLES')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID113', N'Green Cabbage', N'CTID113', N'VEGETABLES')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID114', N'Purple Cabbage', N'CTID114', N'VEGETABLES')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID115', N'Savoy Cabbage', N'CTID115', N'VEGETABLES')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID116', N'Carrots ', N'CTID116', N'VEGETABLES')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID117', N'Cauliflower', N'CTID117', N'VEGETABLES')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID118', N'Celeriac', N'CTID118', N'VEGETABLES')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID119', N'Corn', N'CTID119', N'VEGETABLES')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID120', N'Cress', N'CTID120', N'VEGETABLES')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID121', N'BINDER CLIP', N'CTID121', N'STATINARY')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID122', N'BRASS FASNER', N'CTID122', N'STATINARY')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID124', N'Pilot Pen 05', N'CTID124', N'STATINARY')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID125', N'Pilot Pen V-5', N'CTID125', N'STATINARY')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID126', N'Pen UniballEyemicro ', N'CTID126', N'STATINARY')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID127', N'Clips Gem (Steel)', N'CTID127', N'STATINARY')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID128', N'Cello Tape(Small) ', N'CTID128', N'STATINARY')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID129', N'Brown Tape', N'CTID129', N'STATINARY')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PID130', N'Ink Stamp Pad ', N'CTID130', N'STATINARY')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PKER63', N'Pen', N'SAT63', N'Stanary')
INSERT [dbo].[ProductDetail] ([ProductId], [ProductName], [CategoryId], [CategoryName]) VALUES (N'PKI12', N'TOY', N'CFA23', N'BOLLE')
GO
USE [master]
GO
ALTER DATABASE [Product] SET  READ_WRITE 
GO
