USE [master]
GO
/****** Object:  Database [DBBenhVienYHocCoTruyen]    Script Date: 6/28/2015 4:13:27 AM ******/
CREATE DATABASE [DBBenhVienYHocCoTruyen]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBBenhVienYHocCoTruyen', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.HOANGHUYEN\MSSQL\DATA\DBBenhVienYHocCoTruyen.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DBBenhVienYHocCoTruyen_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.HOANGHUYEN\MSSQL\DATA\DBBenhVienYHocCoTruyen_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBBenhVienYHocCoTruyen].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET RECOVERY FULL 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET  MULTI_USER 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DBBenhVienYHocCoTruyen]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 6/28/2015 4:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaNguoiDung] [int] NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nchar](10) NULL,
	[Quyen] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblBenhNhan]    Script Date: 6/28/2015 4:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblBenhNhan](
	[MaBenhNhan] [nchar](50) NOT NULL,
	[MaHSBenhAn] [nchar](50) NULL,
	[SoCMTND] [nchar](50) NULL,
	[TenBN] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[NgheNghiep] [nvarchar](50) NULL,
	[DanToc] [nvarchar](50) NULL,
	[NgoaiKieu] [nvarchar](50) NULL,
	[NoiLamViec] [nvarchar](50) NULL,
	[DoiTuong] [int] NULL,
	[MaBHYTe] [nchar](50) NULL,
	[LyDoDenKhamChuaBenh] [nvarchar](200) NULL,
 CONSTRAINT [PK_TblBenhNhan] PRIMARY KEY CLUSTERED 
(
	[MaBenhNhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblChoKhamCLS]    Script Date: 6/28/2015 4:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblChoKhamCLS](
	[MaBenhNhan] [nchar](10) NULL,
	[MaLoaiKhamCLS] [nchar](10) NULL,
	[MaBSYeuCau] [nchar](10) NULL,
	[TrangThaiThanhToan] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblCT_KhamCLS]    Script Date: 6/28/2015 4:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCT_KhamCLS](
	[MaLoaiKhamCLS] [nchar](10) NULL,
	[TenKhamCLS] [nvarchar](50) NULL,
	[DonGia] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblDonThuoc]    Script Date: 6/28/2015 4:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblDonThuoc](
	[MaDonThuoc] [nchar](50) NOT NULL,
	[MaHoSoBenhAn] [nchar](50) NULL,
	[NguoiKeDon] [nchar](50) NULL,
	[NgayKeDon] [date] NULL,
	[MaThuoc] [nchar](50) NULL,
	[SoLuong] [int] NULL,
	[CachSuDung] [nvarchar](150) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_TblDonThuoc] PRIMARY KEY CLUSTERED 
(
	[MaDonThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblHoaDon]    Script Date: 6/28/2015 4:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblHoaDon](
	[MaHoDon] [nchar](50) NOT NULL,
	[MaLoaiHD] [int] NULL,
	[NgayTT] [date] NULL,
	[DonGia] [money] NULL,
	[TT] [int] NULL,
 CONSTRAINT [PK_TblHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblHoSoBenhAn]    Script Date: 6/28/2015 4:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblHoSoBenhAn](
	[MaHSBA] [nchar](50) NOT NULL,
	[Trang] [int] NOT NULL,
	[TieuHoa] [nvarchar](50) NULL,
	[ThanTietNieu] [nvarchar](50) NULL,
	[CoXuongKhop] [nvarchar](50) NULL,
	[TamTham] [nvarchar](50) NULL,
	[TuanHoan] [nvarchar](50) NULL,
	[ThanhKinh] [nvarchar](50) NULL,
	[NgoaiKhoa] [nvarchar](50) NULL,
	[HamTre] [nvarchar](50) NULL,
	[XetNghiemNuocTieu] [nvarchar](150) NULL,
	[XetNghiemSinhHoa] [nvarchar](150) NULL,
	[XetNghiemTeBao] [nvarchar](150) NULL,
	[NhipTim] [nvarchar](50) NULL,
	[HuyetAp] [nvarchar](50) NULL,
	[ChieuCao] [nvarchar](50) NULL,
	[CanNang] [nvarchar](50) NULL,
	[ThoiGianKham] [date] NULL,
	[TrangThai] [nvarchar](200) NULL,
 CONSTRAINT [PK_TblHoSoBenhAn] PRIMARY KEY CLUSTERED 
(
	[MaHSBA] ASC,
	[Trang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblLichHen]    Script Date: 6/28/2015 4:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblLichHen](
	[MaLichHen] [nchar](50) NULL,
	[MaBenhNhan] [nchar](50) NULL,
	[NgayThamKham] [date] NULL,
	[NgayKham] [date] NULL,
	[DiaDiem] [nvarchar](100) NULL,
	[GhiChu] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblLoaiHoaDon]    Script Date: 6/28/2015 4:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblLoaiHoaDon](
	[MaLoaiHD] [nchar](50) NOT NULL,
	[TenLoaiHoaDon] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblLoaiHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaLoaiHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblNhapThuocVatTuKho]    Script Date: 6/28/2015 4:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblNhapThuocVatTuKho](
	[MaPhieuNhap] [nchar](100) NOT NULL,
	[SoThuTu] [int] NOT NULL,
	[NgayNhap] [date] NULL,
	[NguoiNhap] [nvarchar](50) NULL,
	[MaThuocVatTu] [nchar](50) NULL,
	[SoLuong] [int] NULL,
	[TongGia] [float] NULL,
 CONSTRAINT [PK_TblNhapThuocVatTuKho] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC,
	[SoThuTu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblPhieuKhamCLS]    Script Date: 6/28/2015 4:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblPhieuKhamCLS](
	[MaBenhNhan] [nchar](50) NOT NULL,
	[MaPhieuKham] [nchar](50) NOT NULL,
	[TenXetNghiem] [nvarchar](50) NULL,
	[BacSiYeuCau] [nvarchar](50) NULL,
	[DanhMucKham] [nvarchar](50) NULL,
	[NgayGioThucHien] [date] NULL,
	[NgayGioTraKQ] [nchar](10) NULL,
	[KetQuaXetNghiem] [nvarchar](150) NULL,
	[NguoiNhapLieu] [nchar](50) NULL,
 CONSTRAINT [PK_TblPhieuKhamCLS] PRIMARY KEY CLUSTERED 
(
	[MaBenhNhan] ASC,
	[MaPhieuKham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblPhieuTamThu]    Script Date: 6/28/2015 4:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblPhieuTamThu](
	[MaPhieuTamThu] [nchar](100) NOT NULL,
	[MaLoaiTamThu] [nchar](50) NULL,
	[TongTienTamThu] [float] NULL,
	[NgayThu] [date] NULL,
	[GhiChu] [nvarchar](150) NULL,
 CONSTRAINT [PK_TblPhieuTamThu] PRIMARY KEY CLUSTERED 
(
	[MaPhieuTamThu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblTheBaoHiemYTe]    Script Date: 6/28/2015 4:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblTheBaoHiemYTe](
	[MaSoThe] [nchar](50) NOT NULL,
	[NoiDangKyKhamCBBanDau] [nvarchar](50) NULL,
	[HanSuDung] [date] NULL,
	[MaHuongQuyenLoi] [nchar](100) NULL,
	[NoiPhatHanhThe] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblTheBaoHiemYTe] PRIMARY KEY CLUSTERED 
(
	[MaSoThe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblThuocVatTuKho]    Script Date: 6/28/2015 4:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblThuocVatTuKho](
	[MaThuocVatTu] [nchar](100) NOT NULL,
	[Loai] [int] NOT NULL,
	[DotNhap] [int] NULL,
	[TenThuocVatTu] [nvarchar](50) NULL,
	[NgaySanXuat] [date] NULL,
	[NgayHetHan] [date] NULL,
	[NoiSanXuat] [nvarchar](50) NULL,
	[MoTa] [nvarchar](150) NULL,
	[GiaThuoc] [float] NULL,
	[SoLuong] [int] NULL,
	[HuongDanSuDung] [nvarchar](150) NULL,
 CONSTRAINT [PK_TblThuocVatTuKho] PRIMARY KEY CLUSTERED 
(
	[MaThuocVatTu] ASC,
	[Loai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblThuocVatTuPhongKham]    Script Date: 6/28/2015 4:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblThuocVatTuPhongKham](
	[MaThuocVatTu] [nchar](50) NOT NULL,
	[Loai] [bit] NOT NULL,
	[TenThuocVatTu] [nvarchar](50) NULL,
	[PhanLoaiThuoc] [int] NULL,
	[NgaySanXuat] [date] NULL,
	[NgayHetHan] [date] NULL,
	[NoiSanXuat] [nvarchar](100) NULL,
	[MoTa] [nvarchar](100) NULL,
	[GiaThuoc] [float] NULL,
	[SoLuong] [int] NULL,
	[HuongDanSuDung] [nvarchar](200) NULL,
 CONSTRAINT [PK_TblThuocVatTuPhongKham] PRIMARY KEY CLUSTERED 
(
	[MaThuocVatTu] ASC,
	[Loai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblThuocVatTuYTePhongCLS]    Script Date: 6/28/2015 4:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblThuocVatTuYTePhongCLS](
	[MaThuocVatTu] [nchar](50) NOT NULL,
	[DotNhap] [int] NOT NULL,
	[Loai] [int] NULL,
	[TenThuocVatTu] [nvarchar](50) NULL,
	[NgaySanXuat] [date] NULL,
	[NgayHetHan] [date] NULL,
	[NoiSanXuat] [nvarchar](50) NULL,
	[MoTa] [nvarchar](50) NULL,
	[GiaThuoc] [float] NULL,
	[SoLuong] [int] NULL,
	[HuongDanSuDung] [nchar](10) NULL,
 CONSTRAINT [PK_TblThuocVatTuYTePhongCLS] PRIMARY KEY CLUSTERED 
(
	[MaThuocVatTu] ASC,
	[DotNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblXuatThuocVatTuKho]    Script Date: 6/28/2015 4:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblXuatThuocVatTuKho](
	[MaPhieuXuat] [nchar](100) NOT NULL,
	[SoThuTu] [int] NOT NULL,
	[NgayXuat] [date] NULL,
	[NguoiXuat] [nvarchar](50) NULL,
	[NoiNhan] [nvarchar](50) NULL,
	[NguoiNhan] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoDT] [nchar](10) NULL,
	[MaThuocVatTu] [nchar](50) NULL,
	[SoLuong] [int] NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [PK_TblXuatThuocVatTuKho] PRIMARY KEY CLUSTERED 
(
	[MaPhieuXuat] ASC,
	[SoThuTu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [DBBenhVienYHocCoTruyen] SET  READ_WRITE 
GO
