USE [master]
GO
/****** Object:  Database [SPORMARKETIM]    Script Date: 8/18/2019 10:27:24 PM ******/
CREATE DATABASE [SPORMARKETIM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SPORMARKETIM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\SPORMARKETIM.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SPORMARKETIM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\SPORMARKETIM_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SPORMARKETIM] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SPORMARKETIM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SPORMARKETIM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SPORMARKETIM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SPORMARKETIM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SPORMARKETIM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SPORMARKETIM] SET ARITHABORT OFF 
GO
ALTER DATABASE [SPORMARKETIM] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SPORMARKETIM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SPORMARKETIM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SPORMARKETIM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SPORMARKETIM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SPORMARKETIM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SPORMARKETIM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SPORMARKETIM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SPORMARKETIM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SPORMARKETIM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SPORMARKETIM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SPORMARKETIM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SPORMARKETIM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SPORMARKETIM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SPORMARKETIM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SPORMARKETIM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SPORMARKETIM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SPORMARKETIM] SET RECOVERY FULL 
GO
ALTER DATABASE [SPORMARKETIM] SET  MULTI_USER 
GO
ALTER DATABASE [SPORMARKETIM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SPORMARKETIM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SPORMARKETIM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SPORMARKETIM] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SPORMARKETIM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SPORMARKETIM] SET QUERY_STORE = OFF
GO
USE [SPORMARKETIM]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [SPORMARKETIM]
GO
/****** Object:  Table [dbo].[tbl_Marka]    Script Date: 8/18/2019 10:27:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Marka](
	[Marka_Id] [int] IDENTITY(1,1) NOT NULL,
	[Marka_Adi] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Marka] PRIMARY KEY CLUSTERED 
(
	[Marka_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Resim]    Script Date: 8/18/2019 10:27:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Resim](
	[Resim_Id] [int] IDENTITY(1,1) NOT NULL,
	[Urun_No] [int] NULL,
	[Resim_Yolu] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_Resim] PRIMARY KEY CLUSTERED 
(
	[Resim_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Urun]    Script Date: 8/18/2019 10:27:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Urun](
	[Urun_Id] [int] IDENTITY(1,1) NOT NULL,
	[Urun_Adi] [nvarchar](50) NULL,
	[Urun_Fiyat] [decimal](18, 2) NULL,
	[Urun_Stok] [int] NULL,
	[Urun_Indirim] [int] NULL,
	[Urun_Kampanya] [bit] NULL,
	[Kategori_No] [int] NULL,
	[Marka_No] [int] NULL,
	[Urun_Hit] [int] NULL,
	[Urun_Ozellik] [text] NULL,
	[Urun_Garanti] [int] NULL,
	[Urun_Puan] [int] NULL,
	[Urun_Not] [nvarchar](50) NULL,
	[UrunTur_No] [int] NULL,
 CONSTRAINT [PK_tbl_Urun] PRIMARY KEY CLUSTERED 
(
	[Urun_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_MarkaUrunResim]    Script Date: 8/18/2019 10:27:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_MarkaUrunResim]
AS
SELECT     dbo.tbl_Urun.Urun_Id, dbo.tbl_Marka.Marka_Id, dbo.tbl_Marka.Marka_Adi AS MARKASI, dbo.tbl_Urun.Urun_Adi, dbo.tbl_Urun.Urun_Fiyat, dbo.tbl_Urun.Urun_Stok, 
                      dbo.tbl_Resim.Resim_Id, dbo.tbl_Resim.Resim_Yolu
FROM         dbo.tbl_Marka INNER JOIN
                      dbo.tbl_Urun ON dbo.tbl_Marka.Marka_Id = dbo.tbl_Urun.Marka_No INNER JOIN
                      dbo.tbl_Resim ON dbo.tbl_Urun.Urun_Id = dbo.tbl_Resim.Urun_No
GO
/****** Object:  View [dbo].[View_sorgudan]    Script Date: 8/18/2019 10:27:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_sorgudan]
AS
SELECT     dbo.tbl_Resim.Resim_Yolu AS YOL, dbo.tbl_Marka.Marka_Adi
FROM         dbo.tbl_Urun INNER JOIN
                      dbo.tbl_Marka ON dbo.tbl_Urun.Marka_No = dbo.tbl_Marka.Marka_Id INNER JOIN
                      dbo.tbl_Resim ON dbo.tbl_Urun.Urun_Id = dbo.tbl_Resim.Urun_No
WHERE     (dbo.tbl_Resim.Urun_No IN
                          (SELECT     Urun_Id
                            FROM          dbo.tbl_Urun AS tbl_Urun_1
                            WHERE      (Marka_No IN
                                                       (SELECT     Marka_Id
                                                         FROM          dbo.tbl_Marka AS tbl_Marka_1
                                                         WHERE      (Marka_Adi = 'Adidas')))))
GO
/****** Object:  Table [dbo].[tbl_Yetki]    Script Date: 8/18/2019 10:27:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Yetki](
	[Yetki_Id] [int] IDENTITY(1,1) NOT NULL,
	[Yetki_Adi] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Yetki] PRIMARY KEY CLUSTERED 
(
	[Yetki_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Uye]    Script Date: 8/18/2019 10:27:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Uye](
	[Uye_Id] [int] IDENTITY(1,1) NOT NULL,
	[Uye_Adi] [nvarchar](50) NULL,
	[Uye_Soyadi] [nvarchar](50) NULL,
	[Uye_EPosta] [nvarchar](50) NULL,
	[Uye_Parola] [nvarchar](50) NULL,
	[Yetki_No] [int] NULL,
	[Uye_Aktivasyon] [nvarchar](50) NULL,
	[Uye_Durumu] [bit] NULL,
 CONSTRAINT [PK_tbl_Uye] PRIMARY KEY CLUSTERED 
(
	[Uye_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_UyeYetki]    Script Date: 8/18/2019 10:27:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_UyeYetki]
AS
SELECT     dbo.tbl_Uye.Uye_Id, dbo.tbl_Uye.Uye_Adi, dbo.tbl_Uye.Uye_Soyadi, dbo.tbl_Yetki.Yetki_Id, dbo.tbl_Yetki.Yetki_Adi, dbo.tbl_Uye.Uye_Durumu
FROM         dbo.tbl_Uye INNER JOIN
                      dbo.tbl_Yetki ON dbo.tbl_Uye.Yetki_No = dbo.tbl_Yetki.Yetki_Id
GO
/****** Object:  Table [dbo].[tbl_Yorum]    Script Date: 8/18/2019 10:27:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Yorum](
	[Yorum_Id] [int] IDENTITY(1,1) NOT NULL,
	[Uye_No] [int] NULL,
	[Urun_No] [int] NULL,
	[Yorum_Icerik] [nvarchar](max) NULL,
	[Degerlendirme] [int] NULL,
	[Yorum_Tarih] [datetime] NULL,
 CONSTRAINT [PK_tbl_Yorum] PRIMARY KEY CLUSTERED 
(
	[Yorum_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_UrunYorum]    Script Date: 8/18/2019 10:27:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_UrunYorum]
AS
SELECT     dbo.tbl_Urun.Urun_Id, dbo.tbl_Urun.Urun_Adi, dbo.tbl_Yorum.Yorum_Id, dbo.tbl_Yorum.Yorum_Icerik, dbo.tbl_Yorum.Degerlendirme
FROM         dbo.tbl_Urun INNER JOIN
                      dbo.tbl_Yorum ON dbo.tbl_Urun.Urun_Id = dbo.tbl_Yorum.Urun_No
GO
/****** Object:  View [dbo].[View_UrunUyeYorum]    Script Date: 8/18/2019 10:27:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_UrunUyeYorum]
AS
SELECT     dbo.tbl_Urun.Urun_Id, dbo.tbl_Yorum.Yorum_Id, dbo.tbl_Yorum.Yorum_Icerik, dbo.tbl_Yorum.Degerlendirme, dbo.tbl_Yorum.Yorum_Tarih, dbo.tbl_Uye.Uye_Id, 
                      dbo.tbl_Uye.Uye_Adi, dbo.tbl_Uye.Uye_Soyadi
FROM         dbo.tbl_Urun INNER JOIN
                      dbo.tbl_Yorum ON dbo.tbl_Urun.Urun_Id = dbo.tbl_Yorum.Urun_No INNER JOIN
                      dbo.tbl_Uye ON dbo.tbl_Yorum.Uye_No = dbo.tbl_Uye.Uye_Id
GO
/****** Object:  Table [dbo].[tbl_Sepet]    Script Date: 8/18/2019 10:27:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Sepet](
	[Sepet_Id] [int] IDENTITY(1,1) NOT NULL,
	[Uye_No] [int] NULL,
	[Urun_No] [int] NULL,
	[Urun_Adet] [int] NULL,
 CONSTRAINT [PK_tbl_Sepet] PRIMARY KEY CLUSTERED 
(
	[Sepet_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_UrunUyeSepet]    Script Date: 8/18/2019 10:27:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_UrunUyeSepet]
AS
SELECT     dbo.tbl_Urun.Urun_Id, dbo.tbl_Urun.Urun_Adi, dbo.tbl_Urun.Urun_Fiyat, dbo.tbl_Sepet.Sepet_Id, dbo.tbl_Sepet.Urun_Adet, dbo.tbl_Uye.Uye_Id, 
                      dbo.tbl_Resim.Resim_Id, dbo.tbl_Resim.Resim_Yolu
FROM         dbo.tbl_Sepet INNER JOIN
                      dbo.tbl_Urun ON dbo.tbl_Sepet.Urun_No = dbo.tbl_Urun.Urun_Id INNER JOIN
                      dbo.tbl_Uye ON dbo.tbl_Sepet.Uye_No = dbo.tbl_Uye.Uye_Id INNER JOIN
                      dbo.tbl_Resim ON dbo.tbl_Urun.Urun_Id = dbo.tbl_Resim.Urun_No
GO
/****** Object:  Table [dbo].[tbl_Anket]    Script Date: 8/18/2019 10:27:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Anket](
	[Anket_Id] [int] IDENTITY(1,1) NOT NULL,
	[Anket_Soru] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_Anket] PRIMARY KEY CLUSTERED 
(
	[Anket_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_AnketCevap]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_AnketCevap](
	[Cevap_Id] [int] IDENTITY(1,1) NOT NULL,
	[Anket_No] [int] NULL,
	[Cevap_Icerik] [nvarchar](50) NULL,
	[Cevap_OySayisi] [int] NULL,
 CONSTRAINT [PK_tbl_AnketCevap] PRIMARY KEY CLUSTERED 
(
	[Cevap_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Begendiklerim]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Begendiklerim](
	[Begen_Id] [int] IDENTITY(1,1) NOT NULL,
	[Uye_No] [int] NULL,
	[Urun_No] [int] NULL,
 CONSTRAINT [PK_tbl_Begendiklerim] PRIMARY KEY CLUSTERED 
(
	[Begen_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_FaturaBilgileri]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_FaturaBilgileri](
	[Fatura_Id] [int] IDENTITY(1,1) NOT NULL,
	[Fatura_AdiSoyadi] [nvarchar](50) NULL,
	[Fatura_Adres] [nvarchar](max) NULL,
	[Fatura_Il] [nvarchar](50) NULL,
	[Fatura_Ilce] [nvarchar](50) NULL,
	[PostaKodu] [nvarchar](50) NULL,
	[Telefon] [nvarchar](50) NULL,
	[Tur_No] [int] NULL,
 CONSTRAINT [PK_tbl_FaturaBilgileri] PRIMARY KEY CLUSTERED 
(
	[Fatura_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_FaturaDetay]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_FaturaDetay](
	[FaturaDetay_Id] [int] IDENTITY(1,1) NOT NULL,
	[Fatura_No] [int] NULL,
	[Satis_No] [int] NULL,
	[Fatura_KesimTarihi] [datetime] NULL,
 CONSTRAINT [PK_tbl_FaturaDetay] PRIMARY KEY CLUSTERED 
(
	[FaturaDetay_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_FaturaTur]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_FaturaTur](
	[Tur_Id] [int] IDENTITY(1,1) NOT NULL,
	[Tur_Adi] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_FaturaTur] PRIMARY KEY CLUSTERED 
(
	[Tur_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_IadeDegisim]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_IadeDegisim](
	[IadeDegisim_Id] [int] IDENTITY(1,1) NOT NULL,
	[Uye_No] [int] NULL,
	[Urun_No] [int] NULL,
	[IadeDegisim_Sebep] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_IadeDegisim] PRIMARY KEY CLUSTERED 
(
	[IadeDegisim_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Kart]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Kart](
	[Kart_Id] [int] IDENTITY(1,1) NOT NULL,
	[Kart_Adi] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Kart] PRIMARY KEY CLUSTERED 
(
	[Kart_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Kategori]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Kategori](
	[Kategori_Id] [int] IDENTITY(1,1) NOT NULL,
	[Kategori_Adi] [nvarchar](50) NULL,
	[Kategori_No] [int] NULL,
	[Kategori_Tur] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Kategori] PRIMARY KEY CLUSTERED 
(
	[Kategori_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_OdemeSekli]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_OdemeSekli](
	[OdemeSekli_Id] [int] IDENTITY(1,1) NOT NULL,
	[OdemeSekli_Adi] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_OdemeSekli] PRIMARY KEY CLUSTERED 
(
	[OdemeSekli_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Oran]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Oran](
	[Oran_Id] [int] IDENTITY(1,1) NOT NULL,
	[Kart_No] [int] NULL,
	[Oran_KatSayi] [float] NOT NULL,
	[Taksit] [int] NULL,
 CONSTRAINT [PK_tbl_Oran] PRIMARY KEY CLUSTERED 
(
	[Oran_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Promosyon]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Promosyon](
	[Promosyon_Id] [int] IDENTITY(1,1) NOT NULL,
	[Urun_No] [int] NULL,
	[Promosyon_Miktar] [int] NULL,
	[Promosyon_BasTarih] [datetime] NULL,
	[Promosyon_SonTarih] [datetime] NULL,
 CONSTRAINT [PK_tbl_Promosyon] PRIMARY KEY CLUSTERED 
(
	[Promosyon_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Satis]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Satis](
	[Satis_Id] [int] IDENTITY(1,1) NOT NULL,
	[Sepet_No] [int] NULL,
	[OdemeSekli_No] [int] NULL,
	[Satis_Tutar] [decimal](18, 2) NULL,
	[Satis_Tarihi] [datetime] NULL,
	[Satis_Onay] [bit] NULL,
 CONSTRAINT [PK_tbl_Satis] PRIMARY KEY CLUSTERED 
(
	[Satis_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Teslimat]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Teslimat](
	[Teslimat_Id] [int] IDENTITY(1,1) NOT NULL,
	[Teslimat_AdSoyad] [nvarchar](50) NULL,
	[Teslimat_Adres] [nvarchar](50) NULL,
	[Teslimat_Il] [nvarchar](50) NULL,
	[Teslimat_Ilce] [nvarchar](50) NULL,
	[PostaKodu] [nvarchar](50) NULL,
	[Telefon] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Teslimat] PRIMARY KEY CLUSTERED 
(
	[Teslimat_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_TeslimatSatis]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TeslimatSatis](
	[TeslimatSatis_Id] [int] IDENTITY(1,1) NOT NULL,
	[Teslimat_No] [int] NULL,
	[Satis_No] [int] NULL,
 CONSTRAINT [PK_tbl_TeslimatSatis] PRIMARY KEY CLUSTERED 
(
	[TeslimatSatis_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_UrunTur]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_UrunTur](
	[UrunTur_Id] [int] IDENTITY(1,1) NOT NULL,
	[UrunTur_Adi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_UrunTur] PRIMARY KEY CLUSTERED 
(
	[UrunTur_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tbl_Uye]    Script Date: 8/18/2019 10:27:25 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbl_Uye] ON [dbo].[tbl_Uye]
(
	[Uye_EPosta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_AnketCevap] ADD  CONSTRAINT [DF_tbl_AnketCevap_Cevap_OySayisi]  DEFAULT ((0)) FOR [Cevap_OySayisi]
GO
ALTER TABLE [dbo].[tbl_Satis] ADD  CONSTRAINT [DF_tbl_Satis_Satis_Onay]  DEFAULT ((0)) FOR [Satis_Onay]
GO
ALTER TABLE [dbo].[tbl_Urun] ADD  CONSTRAINT [DF_tbl_Urun_Urun_Indirim]  DEFAULT ((0)) FOR [Urun_Indirim]
GO
ALTER TABLE [dbo].[tbl_Urun] ADD  CONSTRAINT [DF_tbl_Urun_Urun_Kampanya]  DEFAULT ((0)) FOR [Urun_Kampanya]
GO
ALTER TABLE [dbo].[tbl_Uye] ADD  CONSTRAINT [DF_tbl_Uye_Yetki_No]  DEFAULT ((3)) FOR [Yetki_No]
GO
ALTER TABLE [dbo].[tbl_Uye] ADD  CONSTRAINT [DF_tbl_Uye_Uye_Durumu]  DEFAULT ((0)) FOR [Uye_Durumu]
GO
ALTER TABLE [dbo].[tbl_AnketCevap]  WITH CHECK ADD  CONSTRAINT [FK_tbl_AnketCevap_tbl_Anket] FOREIGN KEY([Anket_No])
REFERENCES [dbo].[tbl_Anket] ([Anket_Id])
GO
ALTER TABLE [dbo].[tbl_AnketCevap] CHECK CONSTRAINT [FK_tbl_AnketCevap_tbl_Anket]
GO
ALTER TABLE [dbo].[tbl_Begendiklerim]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Begendiklerim_tbl_Urun] FOREIGN KEY([Urun_No])
REFERENCES [dbo].[tbl_Urun] ([Urun_Id])
GO
ALTER TABLE [dbo].[tbl_Begendiklerim] CHECK CONSTRAINT [FK_tbl_Begendiklerim_tbl_Urun]
GO
ALTER TABLE [dbo].[tbl_Begendiklerim]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Begendiklerim_tbl_Uye] FOREIGN KEY([Uye_No])
REFERENCES [dbo].[tbl_Uye] ([Uye_Id])
GO
ALTER TABLE [dbo].[tbl_Begendiklerim] CHECK CONSTRAINT [FK_tbl_Begendiklerim_tbl_Uye]
GO
ALTER TABLE [dbo].[tbl_FaturaBilgileri]  WITH CHECK ADD  CONSTRAINT [FK_tbl_FaturaBilgileri_tbl_FaturaTur] FOREIGN KEY([Tur_No])
REFERENCES [dbo].[tbl_FaturaTur] ([Tur_Id])
GO
ALTER TABLE [dbo].[tbl_FaturaBilgileri] CHECK CONSTRAINT [FK_tbl_FaturaBilgileri_tbl_FaturaTur]
GO
ALTER TABLE [dbo].[tbl_FaturaDetay]  WITH CHECK ADD  CONSTRAINT [FK_tbl_FaturaDetay_tbl_FaturaBilgileri] FOREIGN KEY([Fatura_No])
REFERENCES [dbo].[tbl_FaturaBilgileri] ([Fatura_Id])
GO
ALTER TABLE [dbo].[tbl_FaturaDetay] CHECK CONSTRAINT [FK_tbl_FaturaDetay_tbl_FaturaBilgileri]
GO
ALTER TABLE [dbo].[tbl_IadeDegisim]  WITH CHECK ADD  CONSTRAINT [FK_tbl_IadeDegisim_tbl_Urun] FOREIGN KEY([Urun_No])
REFERENCES [dbo].[tbl_Urun] ([Urun_Id])
GO
ALTER TABLE [dbo].[tbl_IadeDegisim] CHECK CONSTRAINT [FK_tbl_IadeDegisim_tbl_Urun]
GO
ALTER TABLE [dbo].[tbl_IadeDegisim]  WITH CHECK ADD  CONSTRAINT [FK_tbl_IadeDegisim_tbl_Uye] FOREIGN KEY([Uye_No])
REFERENCES [dbo].[tbl_Uye] ([Uye_Id])
GO
ALTER TABLE [dbo].[tbl_IadeDegisim] CHECK CONSTRAINT [FK_tbl_IadeDegisim_tbl_Uye]
GO
ALTER TABLE [dbo].[tbl_Oran]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Oran_tbl_Kart] FOREIGN KEY([Kart_No])
REFERENCES [dbo].[tbl_Kart] ([Kart_Id])
GO
ALTER TABLE [dbo].[tbl_Oran] CHECK CONSTRAINT [FK_tbl_Oran_tbl_Kart]
GO
ALTER TABLE [dbo].[tbl_Promosyon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Promosyon_tbl_Urun] FOREIGN KEY([Urun_No])
REFERENCES [dbo].[tbl_Urun] ([Urun_Id])
GO
ALTER TABLE [dbo].[tbl_Promosyon] CHECK CONSTRAINT [FK_tbl_Promosyon_tbl_Urun]
GO
ALTER TABLE [dbo].[tbl_Resim]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Resim_tbl_Urun] FOREIGN KEY([Urun_No])
REFERENCES [dbo].[tbl_Urun] ([Urun_Id])
GO
ALTER TABLE [dbo].[tbl_Resim] CHECK CONSTRAINT [FK_tbl_Resim_tbl_Urun]
GO
ALTER TABLE [dbo].[tbl_Satis]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Satis_tbl_OdemeSekli] FOREIGN KEY([OdemeSekli_No])
REFERENCES [dbo].[tbl_OdemeSekli] ([OdemeSekli_Id])
GO
ALTER TABLE [dbo].[tbl_Satis] CHECK CONSTRAINT [FK_tbl_Satis_tbl_OdemeSekli]
GO
ALTER TABLE [dbo].[tbl_Sepet]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Sepet_tbl_Urun] FOREIGN KEY([Urun_No])
REFERENCES [dbo].[tbl_Urun] ([Urun_Id])
GO
ALTER TABLE [dbo].[tbl_Sepet] CHECK CONSTRAINT [FK_tbl_Sepet_tbl_Urun]
GO
ALTER TABLE [dbo].[tbl_Sepet]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Sepet_tbl_Uye] FOREIGN KEY([Uye_No])
REFERENCES [dbo].[tbl_Uye] ([Uye_Id])
GO
ALTER TABLE [dbo].[tbl_Sepet] CHECK CONSTRAINT [FK_tbl_Sepet_tbl_Uye]
GO
ALTER TABLE [dbo].[tbl_TeslimatSatis]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TeslimatSatis_tbl_Teslimat] FOREIGN KEY([Teslimat_No])
REFERENCES [dbo].[tbl_Teslimat] ([Teslimat_Id])
GO
ALTER TABLE [dbo].[tbl_TeslimatSatis] CHECK CONSTRAINT [FK_tbl_TeslimatSatis_tbl_Teslimat]
GO
ALTER TABLE [dbo].[tbl_Urun]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Urun_tbl_Kategori] FOREIGN KEY([Kategori_No])
REFERENCES [dbo].[tbl_Kategori] ([Kategori_Id])
GO
ALTER TABLE [dbo].[tbl_Urun] CHECK CONSTRAINT [FK_tbl_Urun_tbl_Kategori]
GO
ALTER TABLE [dbo].[tbl_Urun]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Urun_tbl_Marka] FOREIGN KEY([Marka_No])
REFERENCES [dbo].[tbl_Marka] ([Marka_Id])
GO
ALTER TABLE [dbo].[tbl_Urun] CHECK CONSTRAINT [FK_tbl_Urun_tbl_Marka]
GO
ALTER TABLE [dbo].[tbl_Urun]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Urun_Tbl_UrunTur] FOREIGN KEY([UrunTur_No])
REFERENCES [dbo].[Tbl_UrunTur] ([UrunTur_Id])
GO
ALTER TABLE [dbo].[tbl_Urun] CHECK CONSTRAINT [FK_tbl_Urun_Tbl_UrunTur]
GO
ALTER TABLE [dbo].[tbl_Uye]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Uye_tbl_Yetki] FOREIGN KEY([Yetki_No])
REFERENCES [dbo].[tbl_Yetki] ([Yetki_Id])
GO
ALTER TABLE [dbo].[tbl_Uye] CHECK CONSTRAINT [FK_tbl_Uye_tbl_Yetki]
GO
ALTER TABLE [dbo].[tbl_Yorum]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Yorum_tbl_Urun] FOREIGN KEY([Urun_No])
REFERENCES [dbo].[tbl_Urun] ([Urun_Id])
GO
ALTER TABLE [dbo].[tbl_Yorum] CHECK CONSTRAINT [FK_tbl_Yorum_tbl_Urun]
GO
ALTER TABLE [dbo].[tbl_Yorum]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Yorum_tbl_Uye] FOREIGN KEY([Uye_No])
REFERENCES [dbo].[tbl_Uye] ([Uye_Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_Yorum] CHECK CONSTRAINT [FK_tbl_Yorum_tbl_Uye]
GO
/****** Object:  StoredProcedure [dbo].[usp_AnketListele]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_AnketListele]
as
select * from tbl_Anket
GO
/****** Object:  StoredProcedure [dbo].[usp_EnCokSatanlar]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_EnCokSatanlar]
as
select distinct Urun_Adi,Urun_Id,Urun_Fiyat,Resim_Yolu
 from tbl_Urun,tbl_Resim
 where Urun_Id=Urun_No
GO
/****** Object:  StoredProcedure [dbo].[usp_Login]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Login]
(
@Eposta nvarchar(50),
@Parola nvarchar(50),
@Id int output,
@Adi nvarchar (50) output,
@Soyadi nvarchar(50) output,
@SepetAdet int output
)
as
declare @adet int
set @adet=(select COUNT (*) from tbl_Uye
			where Uye_EPosta=@Eposta and
				  Uye_Parola=@Parola and
				  Uye_Durumu='True')

if (@adet>0)
	begin
	set @Id=(select Uye_Id from tbl_Uye where Uye_EPosta=@Eposta)
	set @Adi=(select Uye_Adi from tbl_Uye where Uye_EPosta=@Eposta)
	set @Soyadi=(select Uye_Soyadi from tbl_Uye where Uye_EPosta=@Eposta)
	set @SepetAdet=(select count(*) from tbl_Sepet where Uye_No=@Id)
	end
else
	begin
	set @Id=0
	set @SepetAdet=0
	end
	
	
GO
/****** Object:  StoredProcedure [dbo].[usp_SepetEkle]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_SepetEkle]
(
@UyeId int,
@UrunId int,
@Adet int
)
as
if exists(select * from tbl_Sepet where
			Uye_No=@UyeId and Urun_No=@UrunId)
			begin
			raiserror ('Bu ürün zaten sepetinizde var.',16,1)
			end
else
begin			
insert into tbl_Sepet (Uye_No,Urun_No,Urun_Adet)
values (@UyeId,@UrunId,@Adet)
end

GO
/****** Object:  StoredProcedure [dbo].[usp_SepetListele]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_SepetListele]
(
@UyeId int
)
as
select * from dbo.View_UrunUyeSepet
where Uye_Id=@UyeId
GO
/****** Object:  StoredProcedure [dbo].[usp_SepetSil]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_SepetSil]
(
@SepetId int

)
as
delete from tbl_Sepet
where Sepet_Id=@SepetId
GO
/****** Object:  StoredProcedure [dbo].[usp_SliderResimLİstele]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_SliderResimLİstele]
as
select * from tbl_Resim 
where Resim_Yolu like '../images/sliderimages/%'
GO
/****** Object:  StoredProcedure [dbo].[usp_UrunDetayListele]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_UrunDetayListele]
(
@Id int
)
as
select *
from tbl_Urun,tbl_Resim,Tbl_UrunTur
where Urun_Id=Urun_No and Urun_Id=@Id and UrunTur_No=UrunTur_Id
GO
/****** Object:  StoredProcedure [dbo].[usp_UrunResimleriListele]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_UrunResimleriListele]
(
@Id int
)
as
select Resim_Yolu from tbl_Resim where Urun_No=@Id
GO
/****** Object:  StoredProcedure [dbo].[usp_UrunYorumlari]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_UrunYorumlari] 
(
@Id int 
)
as

select (Uye_Adi+' '+Uye_Soyadi) as AdSoyad,Yorum_Icerik,Degerlendirme,Yorum_Tarih
from dbo.View_UrunUyeYorum
where Urun_Id=@Id

GO
/****** Object:  StoredProcedure [dbo].[usp_UyeAktivasyon]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_UyeAktivasyon] 
(
@Kod nvarchar(50)
)
as
declare @id int, @durum bit

set @id=(select Uye_Id from tbl_Uye where Uye_Aktivasyon=@Kod)
set @durum=(select Uye_Durumu from tbl_Uye where Uye_Aktivasyon=@Kod)

if(@id>0)
	begin
	 if (@durum='true')
		 begin
			 raiserror('Zaten aktif üyesiniz.',16,1)
		 end
	 else
		  begin
			  update tbl_Uye
			  set Uye_Durumu='true'
			  where Uye_Id=@id
		  end
	end
	
else
	begin
	raiserror ('Aktivasyon kodunuduz geçerli değil!\nMüsteri hizmetlerini arayınız...',16,1)
	end
GO
/****** Object:  StoredProcedure [dbo].[usp_UyeKayit]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_UyeKayit]
(
@Adi nvarchar(50),
@Soyadi nvarchar(50),
@Email nvarchar(50),
@Parola nvarchar(50),
@Aktivasyon nvarchar(50)
)
as
if exists(select Uye_EPosta from tbl_Uye
			where Uye_EPosta=@Email)
	begin
	  raiserror ('Bu kullanıcı zaten kayıtlı!',16,1)
	end
else
	begin
	  insert into tbl_Uye(Uye_Adi,Uye_Soyadi,Uye_EPosta,Uye_Parola,Uye_Aktivasyon)
				values(@Adi,@Soyadi,@Email,@Parola,@Aktivasyon)
	end
GO
/****** Object:  StoredProcedure [dbo].[usp_YorumListele]    Script Date: 8/18/2019 10:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_YorumListele]
(
@UyeAdi nvarchar(50),
@UyeSoyadi nvarchar(50),
@UrunAdi nvarchar(50)
)
as
declare @UyeId int,@UrunId int
set @UyeId=(select Uye_Id from tbl_Uye 
			where Uye_Adi=@UyeAdi and Uye_Soyadi=@UyeSoyadi )
set @UrunId=(select Urun_Id from tbl_Urun
				where Urun_Adi=@UrunAdi )

select Yorum_Icerik from tbl_Yorum
where Uye_No=@UyeId and Urun_No=@UrunId
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[54] 4[18] 2[15] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Marka"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 95
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Resim"
            Begin Extent = 
               Top = 24
               Left = 450
               Bottom = 163
               Right = 610
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Urun"
            Begin Extent = 
               Top = 12
               Left = 247
               Bottom = 131
               Right = 415
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_MarkaUrunResim'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_MarkaUrunResim'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Urun"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 206
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Marka"
            Begin Extent = 
               Top = 6
               Left = 244
               Bottom = 95
               Right = 404
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Resim"
            Begin Extent = 
               Top = 6
               Left = 442
               Bottom = 130
               Right = 602
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_sorgudan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_sorgudan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Sepet"
            Begin Extent = 
               Top = 0
               Left = 273
               Bottom = 142
               Right = 433
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Urun"
            Begin Extent = 
               Top = 3
               Left = 51
               Bottom = 207
               Right = 219
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Uye"
            Begin Extent = 
               Top = 5
               Left = 479
               Bottom = 190
               Right = 646
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Resim"
            Begin Extent = 
               Top = 6
               Left = 684
               Bottom = 110
               Right = 844
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_UrunUyeSepet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_UrunUyeSepet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[49] 4[18] 2[15] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Urun"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 216
               Right = 206
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Uye"
            Begin Extent = 
               Top = 13
               Left = 470
               Bottom = 223
               Right = 637
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Yorum"
            Begin Extent = 
               Top = 21
               Left = 270
               Bottom = 201
               Right = 430
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_UrunUyeYorum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_UrunUyeYorum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Urun"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 216
               Right = 206
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Yorum"
            Begin Extent = 
               Top = 6
               Left = 244
               Bottom = 125
               Right = 404
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_UrunYorum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_UrunYorum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Uye"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 197
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Yetki"
            Begin Extent = 
               Top = 6
               Left = 243
               Bottom = 95
               Right = 403
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_UyeYetki'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_UyeYetki'
GO
USE [master]
GO
ALTER DATABASE [SPORMARKETIM] SET  READ_WRITE 
GO
