USE [master]
GO
/****** Object:  Database [CellPhoneS_QLBH]    Script Date: 8/20/2023 9:04:15 PM ******/
CREATE DATABASE [CellPhoneS_QLBH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CellPhoneS_QLBH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\CellPhoneS_QLBH.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CellPhoneS_QLBH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\CellPhoneS_QLBH_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [CellPhoneS_QLBH] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CellPhoneS_QLBH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CellPhoneS_QLBH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET ARITHABORT OFF 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET  MULTI_USER 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CellPhoneS_QLBH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CellPhoneS_QLBH] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CellPhoneS_QLBH] SET QUERY_STORE = ON
GO
ALTER DATABASE [CellPhoneS_QLBH] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [CellPhoneS_QLBH]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 8/20/2023 9:04:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[MaNhanVien] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[PassWord] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiNhanh]    Script Date: 8/20/2023 9:04:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiNhanh](
	[MaChiNhanh] [nvarchar](50) NOT NULL,
	[TenChiNhanh] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[DienThoai] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_ChiNhanh] PRIMARY KEY CLUSTERED 
(
	[MaChiNhanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 8/20/2023 9:04:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaChucVu] [nvarchar](30) NOT NULL,
	[TenChucVu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTPhieuNhap]    Script Date: 8/20/2023 9:04:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPhieuNhap](
	[STT] [nvarchar](50) NOT NULL,
	[MaPhieuNhap] [nvarchar](50) NOT NULL,
	[MaSanPham] [nvarchar](50) NOT NULL,
	[SoLuong] [float] NOT NULL,
	[DonGiaNhap] [float] NOT NULL,
	[GiamGia] [float] NOT NULL,
	[ThanhTien] [float] NOT NULL,
 CONSTRAINT [PK_CTPhieuNhap_1] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTPhieuXuat]    Script Date: 8/20/2023 9:04:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPhieuXuat](
	[STT] [nvarchar](50) NOT NULL,
	[MaPhieuXuat] [nvarchar](50) NOT NULL,
	[MaSanPham] [nvarchar](50) NOT NULL,
	[SoLuong] [float] NOT NULL,
	[DonGiaBan] [float] NOT NULL,
	[GiamGia] [float] NOT NULL,
	[ThanhTien] [float] NOT NULL,
 CONSTRAINT [PK_CTPhieuXuat] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 8/20/2023 9:04:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [nvarchar](50) NOT NULL,
	[TenKhach] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[DienThoai] [nvarchar](20) NOT NULL,
	[HangThanhVien] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kho]    Script Date: 8/20/2023 9:04:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kho](
	[MaKho] [nvarchar](50) NOT NULL,
	[TenKho] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Kho] PRIMARY KEY CLUSTERED 
(
	[MaKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiHang]    Script Date: 8/20/2023 9:04:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHang](
	[MaLoaiHang] [nvarchar](50) NOT NULL,
	[TenLoaiHang] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiHang] PRIMARY KEY CLUSTERED 
(
	[MaLoaiHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 8/20/2023 9:04:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nvarchar](50) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[DienThoai] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 8/20/2023 9:04:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [nvarchar](50) NOT NULL,
	[TenNhanVien] [nvarchar](50) NOT NULL,
	[MaChucVu] [nvarchar](30) NOT NULL,
	[MaChiNhanh] [nvarchar](50) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[GioiTinh] [nvarchar](10) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[DienThoai] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 8/20/2023 9:04:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPhieuNhap] [nvarchar](50) NOT NULL,
	[MaNhanVien] [nvarchar](50) NOT NULL,
	[NgayNhap] [datetime] NOT NULL,
	[MaNCC] [nvarchar](50) NOT NULL,
	[TongTien] [nvarchar](100) NOT NULL,
	[MaKho] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuXuat]    Script Date: 8/20/2023 9:04:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuXuat](
	[MaPhieuXuat] [nvarchar](50) NOT NULL,
	[MaNhanVien] [nvarchar](50) NOT NULL,
	[NgayXuat] [datetime] NOT NULL,
	[MaKhachHang] [nvarchar](50) NOT NULL,
	[TongTien] [nvarchar](100) NOT NULL,
	[MaKho] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PhieuXuat] PRIMARY KEY CLUSTERED 
(
	[MaPhieuXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 8/20/2023 9:04:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [nvarchar](50) NOT NULL,
	[TenSanPham] [nvarchar](50) NOT NULL,
	[MaLoaiHang] [nvarchar](50) NOT NULL,
	[SoLuong] [float] NOT NULL,
	[DonGiaNhap] [float] NOT NULL,
	[DonGiaBan] [float] NOT NULL,
	[Anh] [nvarchar](200) NULL,
	[GhiChu] [nvarchar](200) NULL,
	[MaKho] [nvarchar](50) NOT NULL,
	[MaNCC] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YeuCauNhapHang]    Script Date: 8/20/2023 9:04:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YeuCauNhapHang](
	[MaNhanVien] [nvarchar](50) NOT NULL,
	[ThoiGian] [datetime] NOT NULL,
	[MaSanPham] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_YeuCauNhapHang] PRIMARY KEY CLUSTERED 
(
	[ThoiGian] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([MaNhanVien], [UserName], [PassWord]) VALUES (N'NVBH11', N'nv51', N'password51')
INSERT [dbo].[Account] ([MaNhanVien], [UserName], [PassWord]) VALUES (N'NVBH12', N'nv55', N'password55')
INSERT [dbo].[Account] ([MaNhanVien], [UserName], [PassWord]) VALUES (N'NVBH13', N'nv56', N'password56')
INSERT [dbo].[Account] ([MaNhanVien], [UserName], [PassWord]) VALUES (N'NVBH14', N'nv57', N'password57')
INSERT [dbo].[Account] ([MaNhanVien], [UserName], [PassWord]) VALUES (N'NVBH2', N'nv2', N'1')
INSERT [dbo].[Account] ([MaNhanVien], [UserName], [PassWord]) VALUES (N'NVBH22', N'nv52', N'password52')
INSERT [dbo].[Account] ([MaNhanVien], [UserName], [PassWord]) VALUES (N'NVBH3', N'nv58', N'passwordnv58')
INSERT [dbo].[Account] ([MaNhanVien], [UserName], [PassWord]) VALUES (N'NVBH33', N'nv53', N'password53')
INSERT [dbo].[Account] ([MaNhanVien], [UserName], [PassWord]) VALUES (N'NVBH4', N'nv59', N'passwordnv59')
INSERT [dbo].[Account] ([MaNhanVien], [UserName], [PassWord]) VALUES (N'NVBH44', N'nv54', N'password54')
INSERT [dbo].[Account] ([MaNhanVien], [UserName], [PassWord]) VALUES (N'QL1', N'ql', N'1')
INSERT [dbo].[Account] ([MaNhanVien], [UserName], [PassWord]) VALUES (N'QL10', N'ql10', N'passwordql10')
INSERT [dbo].[Account] ([MaNhanVien], [UserName], [PassWord]) VALUES (N'QL11', N'ql11', N'passwordql11')
INSERT [dbo].[Account] ([MaNhanVien], [UserName], [PassWord]) VALUES (N'QL2', N'ql2', N'passwordql2')
INSERT [dbo].[Account] ([MaNhanVien], [UserName], [PassWord]) VALUES (N'QL3', N'ql3', N'passwordql3')
INSERT [dbo].[Account] ([MaNhanVien], [UserName], [PassWord]) VALUES (N'QL4', N'ql4', N'passwordql4')
INSERT [dbo].[Account] ([MaNhanVien], [UserName], [PassWord]) VALUES (N'QL5', N'ql5', N'passwordql5')
INSERT [dbo].[Account] ([MaNhanVien], [UserName], [PassWord]) VALUES (N'QL6', N'ql6', N'passwordql6')
INSERT [dbo].[Account] ([MaNhanVien], [UserName], [PassWord]) VALUES (N'QL7', N'ql7', N'passwordql7')
INSERT [dbo].[Account] ([MaNhanVien], [UserName], [PassWord]) VALUES (N'QL8', N'ql8', N'passwordql8')
INSERT [dbo].[Account] ([MaNhanVien], [UserName], [PassWord]) VALUES (N'QL9', N'ql9', N'passwordql9')
GO
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [DiaChi], [DienThoai]) VALUES (N'CN1', N'Thủ Đức', N'TP Hồ Chí Minh', N'(023) 896-5486')
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [DiaChi], [DienThoai]) VALUES (N'CN10', N'Thuận An', N'Bình Dương', N'(065) 156-1321')
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [DiaChi], [DienThoai]) VALUES (N'CN11', N'Đức Hòa', N'Long An', N'(098) 456-2132')
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [DiaChi], [DienThoai]) VALUES (N'CN12', N'Đức Huệ', N'Long An', N'(051) 265-1512')
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [DiaChi], [DienThoai]) VALUES (N'CN13', N'Quận 10', N'TP Hồ Chí Minh', N'(059) 898-1202')
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [DiaChi], [DienThoai]) VALUES (N'CN14', N'Quận 2', N'TP Hồ Chí Minh', N'(016) 165-1320')
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [DiaChi], [DienThoai]) VALUES (N'CN15', N'Quận Tân Bình', N'TP Hồ Chí Minh', N'(098) 191-2222')
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [DiaChi], [DienThoai]) VALUES (N'CN2', N'Quận 1', N'TP Hồ Chí Minh', N'(056) 649-6156')
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [DiaChi], [DienThoai]) VALUES (N'CN3', N'Quận 7', N'TP Hồ Chí Minh', N'(095) 412-6189')
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [DiaChi], [DienThoai]) VALUES (N'CN4', N'Cầu Giấy', N'Hà Nội', N'(065) 499-1561')
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [DiaChi], [DienThoai]) VALUES (N'CN5', N'Nam Từ Liêm', N'Hà Nội', N'(054) 684-3211')
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [DiaChi], [DienThoai]) VALUES (N'CN6', N'TP Biên Hòa', N'Đồng Nai', N'(065) 622-6598')
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [DiaChi], [DienThoai]) VALUES (N'CN7', N'Long Khánh', N'Đồng Nai', N'(062) 123-1321')
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [DiaChi], [DienThoai]) VALUES (N'CN8', N'Thanh Khê', N'Đà Nẵng', N'(016) 468-6513')
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [DiaChi], [DienThoai]) VALUES (N'CN9', N'Dĩ An', N'Bình Dương', N'(056) 165-8944')
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'NVBH', N'Nhân Viên Bán Hàng')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'QL', N'Quản Lý')
GO
INSERT [dbo].[CTPhieuNhap] ([STT], [MaPhieuNhap], [MaSanPham], [SoLuong], [DonGiaNhap], [GiamGia], [ThanhTien]) VALUES (N'HDN8202023_174052STT0', N'HDN8202023_174052', N'LTKHO1NCC11', 0, 2000000, 0, 0)
INSERT [dbo].[CTPhieuNhap] ([STT], [MaPhieuNhap], [MaSanPham], [SoLuong], [DonGiaNhap], [GiamGia], [ThanhTien]) VALUES (N'HDN8202023_174421STT0', N'HDN8202023_174421', N'LTKHO1NCC111', 20, 10000000, 50, 100000000)
INSERT [dbo].[CTPhieuNhap] ([STT], [MaPhieuNhap], [MaSanPham], [SoLuong], [DonGiaNhap], [GiamGia], [ThanhTien]) VALUES (N'HDN8202023_174905STT0', N'HDN8202023_174905', N'LTKHO1NCC11', 10, 2000000, 0, 20000000)
INSERT [dbo].[CTPhieuNhap] ([STT], [MaPhieuNhap], [MaSanPham], [SoLuong], [DonGiaNhap], [GiamGia], [ThanhTien]) VALUES (N'HDN8202023_175541STT0', N'HDN8202023_175541', N'LTKHO1NCC11', 10, 2000000, 0, 20000000)
INSERT [dbo].[CTPhieuNhap] ([STT], [MaPhieuNhap], [MaSanPham], [SoLuong], [DonGiaNhap], [GiamGia], [ThanhTien]) VALUES (N'HDN8202023_175753STT0', N'HDN8202023_175753', N'LTKHO1NCC11', 10, 2000000, 30, 14000000)
INSERT [dbo].[CTPhieuNhap] ([STT], [MaPhieuNhap], [MaSanPham], [SoLuong], [DonGiaNhap], [GiamGia], [ThanhTien]) VALUES (N'HDN8202023_175753STT1', N'HDN8202023_175753', N'LTKHO1NCC12', 25, 2500000, 30, 43750000)
INSERT [dbo].[CTPhieuNhap] ([STT], [MaPhieuNhap], [MaSanPham], [SoLuong], [DonGiaNhap], [GiamGia], [ThanhTien]) VALUES (N'HDN8202023_175753STT2', N'HDN8202023_175753', N'LTKHO1NCC13', 50, 1800000, 30, 63000000)
INSERT [dbo].[CTPhieuNhap] ([STT], [MaPhieuNhap], [MaSanPham], [SoLuong], [DonGiaNhap], [GiamGia], [ThanhTien]) VALUES (N'HDN8202023_192037STT0', N'HDN8202023_192037', N'LTKHO1NCC11', 20, 2000000, 0, 40000000)
INSERT [dbo].[CTPhieuNhap] ([STT], [MaPhieuNhap], [MaSanPham], [SoLuong], [DonGiaNhap], [GiamGia], [ThanhTien]) VALUES (N'HDN8202023_192037STT1', N'HDN8202023_192037', N'LTKHO1NCC12', 10, 2500000, 0, 25000000)
INSERT [dbo].[CTPhieuNhap] ([STT], [MaPhieuNhap], [MaSanPham], [SoLuong], [DonGiaNhap], [GiamGia], [ThanhTien]) VALUES (N'HDN8202023_193607STT0', N'HDN8202023_193607', N'LTKHO1NCC11', 2, 2000000, 0, 4000000)
INSERT [dbo].[CTPhieuNhap] ([STT], [MaPhieuNhap], [MaSanPham], [SoLuong], [DonGiaNhap], [GiamGia], [ThanhTien]) VALUES (N'HDN8202023_193607STT1', N'HDN8202023_193607', N'LTKHO1NCC12', 2, 2500000, 0, 5000000)
INSERT [dbo].[CTPhieuNhap] ([STT], [MaPhieuNhap], [MaSanPham], [SoLuong], [DonGiaNhap], [GiamGia], [ThanhTien]) VALUES (N'HDN8202023_193914STT0', N'HDN8202023_193914', N'LTKHO1NCC11', 2, 2000000, 0, 4000000)
INSERT [dbo].[CTPhieuNhap] ([STT], [MaPhieuNhap], [MaSanPham], [SoLuong], [DonGiaNhap], [GiamGia], [ThanhTien]) VALUES (N'HDN8202023_194257STT0', N'HDN8202023_194257', N'LTKHO1NCC11', 3, 2000000, 0, 6000000)
INSERT [dbo].[CTPhieuNhap] ([STT], [MaPhieuNhap], [MaSanPham], [SoLuong], [DonGiaNhap], [GiamGia], [ThanhTien]) VALUES (N'HDN8202023_194421STT0', N'HDN8202023_194421', N'LTKHO1NCC11', 3, 2000000, 0, 6000000)
INSERT [dbo].[CTPhieuNhap] ([STT], [MaPhieuNhap], [MaSanPham], [SoLuong], [DonGiaNhap], [GiamGia], [ThanhTien]) VALUES (N'HDN8202023_194730STT0', N'HDN8202023_194730', N'LTKHO1NCC11', 1, 2000000, 0, 2000000)
INSERT [dbo].[CTPhieuNhap] ([STT], [MaPhieuNhap], [MaSanPham], [SoLuong], [DonGiaNhap], [GiamGia], [ThanhTien]) VALUES (N'HDN8202023_204700STT0', N'HDN8202023_204700', N'LTKHO1NCC11', 5, 2000000, 20, 8000000)
INSERT [dbo].[CTPhieuNhap] ([STT], [MaPhieuNhap], [MaSanPham], [SoLuong], [DonGiaNhap], [GiamGia], [ThanhTien]) VALUES (N'HDN8202023_204700STT1', N'HDN8202023_204700', N'LTKHO1NCC12', 10, 2500000, 60, 10000000)
GO
INSERT [dbo].[CTPhieuXuat] ([STT], [MaPhieuXuat], [MaSanPham], [SoLuong], [DonGiaBan], [GiamGia], [ThanhTien]) VALUES (N'HDB8202023_04045STT0', N'HDB8202023_04045', N'LTKHO1NCC11', 3, 3000000, 0, 9000000)
INSERT [dbo].[CTPhieuXuat] ([STT], [MaPhieuXuat], [MaSanPham], [SoLuong], [DonGiaBan], [GiamGia], [ThanhTien]) VALUES (N'HDB8202023_195606STT0', N'HDB8202023_195606', N'LTKHO1NCC11', 2, 3000000, 3, 5999997)
INSERT [dbo].[CTPhieuXuat] ([STT], [MaPhieuXuat], [MaSanPham], [SoLuong], [DonGiaBan], [GiamGia], [ThanhTien]) VALUES (N'HDB8202023_200823STT0', N'HDB8202023_200823', N'LTKHO1NCC11', 3, 3000000, 10, 8999990)
INSERT [dbo].[CTPhieuXuat] ([STT], [MaPhieuXuat], [MaSanPham], [SoLuong], [DonGiaBan], [GiamGia], [ThanhTien]) VALUES (N'HDB8202023_202240STT0', N'HDB8202023_202240', N'LTKHO1NCC11', 2, 3000000, 2, 5999998)
INSERT [dbo].[CTPhieuXuat] ([STT], [MaPhieuXuat], [MaSanPham], [SoLuong], [DonGiaBan], [GiamGia], [ThanhTien]) VALUES (N'HDB8202023_202556STT0', N'HDB8202023_202556', N'LTKHO1NCC11', 3, 3000000, 0, 9000000)
INSERT [dbo].[CTPhieuXuat] ([STT], [MaPhieuXuat], [MaSanPham], [SoLuong], [DonGiaBan], [GiamGia], [ThanhTien]) VALUES (N'HDB8202023_203020STT0', N'HDB8202023_203020', N'LTKHO1NCC11', 5, 3000000, 0, 15000000)
INSERT [dbo].[CTPhieuXuat] ([STT], [MaPhieuXuat], [MaSanPham], [SoLuong], [DonGiaBan], [GiamGia], [ThanhTien]) VALUES (N'HDB8202023_203110STT0', N'HDB8202023_203110', N'LTKHO1NCC11', 5, 3000000, 0, 15000000)
INSERT [dbo].[CTPhieuXuat] ([STT], [MaPhieuXuat], [MaSanPham], [SoLuong], [DonGiaBan], [GiamGia], [ThanhTien]) VALUES (N'HDB8202023_203326STT0', N'HDB8202023_203326', N'LTKHO1NCC11', 5, 3000000, 10, 14999990)
GO
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH1', N'Trương Thị Phượng', N'Quảng Bình', N'(031) 765-7322', N'Đồng')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH10', N'Nguyen Van Dung', N'Nghệ An', N'(038) 765-4321', N'Bạch Kim')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH11', N'Le Thi Thu', N'Đồng Tháp', N'(067) 345-6789', N'Kim Cương')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH12', N'Vo Minh Phuc', N'An Giang', N'(076) 123-4567', N'VIP')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH13', N'Hoang Thị Huong', N'Bạc Liêu', N'(029) 876-5432', N'Đồng')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH14', N'Nguyen Van Tuan', N'Sóc Trăng', N'(079) 234-5678', N'Bạc')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH15', N'Phan Hoai Nam', N'Kiên Giang', N'(077) 345-6789', N'Vàng')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH16', N'Nguyen Thi Lan', N'Vĩnh Long', N'(070) 987-6543', N'Bạch Kim')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH17', N'Trương Minh Hieu', N'Bến Tre', N'(075) 765-4321', N'Kim Cương')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH18', N'Le Van Dung', N'Tây Ninh', N'(066) 654-3210', N'VIP')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH19', N'Hoang Thi Mai', N'Long An', N'(072) 234-5678', N'Đồng')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH2', N'Nguyễn Văn An', N'Thái Bình', N'(021) 456-7890', N'Bạc')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH20', N'Nguyen Van Anh', N'Bình Dương', N'(084) 345-6789', N'Bạc')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH21', N'Vo Van Tuan', N'Đồng Nai', N'(061) 876-5432', N'Vàng')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH22', N'Phan Thị Huong', N'Bình Phước', N'(065) 345-6789', N'Bạch Kim')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH23', N'Tran Minh Phuc', N'Bà Rịa - Vũng Tàu', N'(064) 987-6543', N'Kim Cương')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH24', N'Nguyen Thi Thu', N'Lâm Đồng', N'(063) 876-5432', N'VIP')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH25', N'Le Van Hieu', N'Gia Lai', N'(059) 765-4321', N'Đồng')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH26', N'Vo Van Anh', N'Kon Tum', N'(060) 654-3210', N'Bạc')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH27', N'Phan Van Tuan', N'Quảng Bình', N'(052) 234-5678', N'Vàng')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH28', N'Tran Thị Huong', N'Thừa Thiên Huế', N'(054) 345-6789', N'Bạch Kim')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH29', N'Nguyen Van Dung', N'Quảng Nam', N'(055) 654-3210', N'Kim Cương')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH3', N'Lê Thị Hương', N'Bình Dương', N'(084) 123-4567', N'Vàng')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH30', N'Hoang Van Hieu', N'Quảng Ngãi', N'(055) 876-5432', N'VIP')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH31', N'TRUONG', N'Q9', N'(096) 156-5563', N'VIP')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH4', N'Phạm Minh Tuấn', N'Hà Nội', N'(024) 567-8901', N'Bạch Kim')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH5', N'Nguyễn Thị Lan', N'Hồ Chí Minh', N'(028) 123-4567', N'Kim Cương')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH6', N'Vũ Hoàng Nam', N'Hải Phòng', N'(022) 345-6789', N'VIP')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH7', N'Tran Van Hieu', N'Quảng Ninh', N'(020) 123-4567', N'Đồng')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH8', N'Nguyen Thi Mai', N'Đà Nẵng', N'(023) 456-7890', N'Bạc')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhach], [DiaChi], [DienThoai], [HangThanhVien]) VALUES (N'KH9', N'Phan Tuan Anh', N'Quảng Trị', N'(052) 987-6543', N'Vàng')
GO
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (N'KHO1', N'Kho Hà Nội', N'Hà Nội')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (N'KHO10', N'Kho Đồng Nai', N'Đồng Nai')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (N'KHO11', N'Kho TP Hồ Chí Minh', N'TP Hồ Chí Minh')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (N'KHO12', N'Kho Long An', N'Long An')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (N'KHO13', N'Kho Tiền Giang', N'Tiền Giang')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (N'KHO14', N'Kho Vũng Tàu', N'Vũng Tàu')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (N'KHO15', N'Kho Bến Tre', N'Bến Tre')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (N'KHO16', N'Kho Cà Mau', N'Cà Mau')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (N'KHO17', N'Kho Vũ Hán', N'Trung Quốc')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (N'KHO18', N'Kho Seoul', N'Hàn Quốc')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (N'KHO19', N'Kho Tokyo', N'Nhật Bản')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (N'KHO2', N'Kho Bắc Ninh', N'Bắc Ninh')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (N'KHO20', N'Kho Washington', N'Mỹ')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (N'KHO3', N'Kho Hà Tĩnh', N'Hà Tĩnh')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (N'KHO4', N'Kho Huế', N'Huế')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (N'KHO5', N'Kho Gia Lai', N'Gia Lai')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (N'KHO6', N'Kho Bình Định', N'Bình Định')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (N'KHO7', N'Kho Phú Yên', N'Phú Yên')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (N'KHO8 ', N'Kho Đắk Lắk', N'Đắk Lắk')
INSERT [dbo].[Kho] ([MaKho], [TenKho], [DiaChi]) VALUES (N'KHO9', N'Kho Bình Phước', N'Bình Phước')
GO
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang]) VALUES (N'DT', N'Điện Thoại')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang]) VALUES (N'KB', N'Bàn Phím')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang]) VALUES (N'LT', N'LapTop')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang]) VALUES (N'MA', N'Máy Ảnh')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang]) VALUES (N'MO', N'Chuột')
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC1', N'SamSung', N'Hàn Quốc', N'(031) 765-7321')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC10', N'Acer', N'Đài Loan', N'(044) 890-1234')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC11', N'HP', N'Mỹ', N'(042) 901-2345')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC12', N'Canon', N'Nhật Bản', N'(081) 012-3456')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC13', N'Epson', N'Nhật Bản', N'(085) 123-4567')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC14', N'Sharp', N'Nhật Bản', N'(091) 234-5678')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC15', N'Panasonic', N'Nhật Bản', N'(093) 345-6789')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC16', N'Western Digital', N'Mỹ', N'(095) 456-7890')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC17', N'Samsung Electronics', N'Hàn Quốc', N'(011) 567-8901')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC18', N'Sandisk', N'Mỹ', N'(014) 678-9012')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC19', N'Kingston', N'Mỹ', N'(017) 789-0123')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC2', N'Apple', N'Mỹ', N'(045) 234-5678')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC20', N'Logitech', N'Switzerland', N'(019) 890-1234')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC3', N'Sony', N'Nhật Bản', N'(051) 678-9012')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC4', N'LG', N'Hàn Quốc', N'(038) 901-2345')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC5', N'Xiaomi', N'Trung Quốc', N'(022) 345-6789')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC6', N'Huawei', N'Trung Quốc', N'(023) 456-7890')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC7', N'Lenovo', N'Hồng Kông', N'(084) 567-8901')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC8', N'Asus', N'Đài Loan', N'(073) 678-9012')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC9', N'Dell', N'Mỹ', N'(043) 789-0123')
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH1', N'Nguyễn Minh An', N'NVBH', N'CN1', CAST(N'2003-08-10T02:04:43.000' AS DateTime), N'Nam', N'Tiền Giang', N'(054) 915-1231')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH10', N'Nguyễn Minh Mạnh', N'NVBH', N'CN1', CAST(N'2004-01-03T09:20:00.000' AS DateTime), N'Nam', N'Hà Tĩnh', N'(039) 678-9012')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH11', N'Nguyễn Minh Nga', N'NVBH', N'CN5', CAST(N'2002-05-15T14:50:00.000' AS DateTime), N'Nữ', N'Nghệ An', N'(038) 789-0123')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH12', N'Nguyễn Minh Oanh', N'NVBH', N'CN2', CAST(N'1993-10-20T11:40:00.000' AS DateTime), N'Nữ', N'Quảng Bình', N'(052) 890-1234')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH13', N'Nguyễn Minh Phương', N'NVBH', N'CN3', CAST(N'2001-12-25T13:30:00.000' AS DateTime), N'Nữ', N'Cần Thơ', N'(071) 901-2345')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH14', N'Nguyễn Minh Quang', N'NVBH', N'CN1', CAST(N'1997-09-08T12:15:00.000' AS DateTime), N'Nam', N'Bạc Liêu', N'(029) 123-4567')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH15', N'Nguyễn Minh Sơn', N'NVBH', N'CN3', CAST(N'1994-04-28T15:00:00.000' AS DateTime), N'Nam', N'Long An', N'(072) 567-8901')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH16', N'Nguyễn Minh Thanh', N'NVBH', N'CN4', CAST(N'1996-07-12T10:30:00.000' AS DateTime), N'Nam', N'Quảng Ngãi', N'(055) 345-6789')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH17', N'Nguyễn Minh Uyên', N'NVBH', N'CN1', CAST(N'2004-01-03T09:20:00.000' AS DateTime), N'Nữ', N'Hà Tĩnh', N'(039) 678-9012')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH18', N'Nguyễn Minh Vân', N'NVBH', N'CN5', CAST(N'2002-05-15T14:50:00.000' AS DateTime), N'Nữ', N'Nghệ An', N'(038) 789-0123')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH19', N'Nguyễn Minh Xuan', N'NVBH', N'CN2', CAST(N'1993-10-20T11:40:00.000' AS DateTime), N'Nam', N'Quảng Bình', N'(052) 890-1234')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH2', N'Nguyễn Minh Bình', N'NVBH', N'CN2', CAST(N'1995-06-20T12:30:00.000' AS DateTime), N'Nam', N'Bình Dương', N'(084) 987-6543')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH20', N'Nguyễn Minh Yến', N'NVBH', N'CN3', CAST(N'2001-12-25T13:30:00.000' AS DateTime), N'Nữ', N'Cần Thơ', N'(071) 901-2345')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH21', N'Nguyễn Minh Zô', N'NVBH', N'CN1', CAST(N'1997-09-08T12:15:00.000' AS DateTime), N'Nam', N'Bạc Liêu', N'(029) 123-4567')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH22', N'Nguyễn Minh Ánh', N'NVBH', N'CN4', CAST(N'1998-07-20T14:30:00.000' AS DateTime), N'Nữ', N'Phú Yên', N'(057) 987-6543')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH23', N'Nguyễn Minh Bắc', N'NVBH', N'CN1', CAST(N'2000-02-05T09:10:00.000' AS DateTime), N'Nam', N'Thái Bình', N'(036) 876-5432')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH24', N'Nguyễn Minh Châu', N'NVBH', N'CN3', CAST(N'1996-11-15T17:20:00.000' AS DateTime), N'Nữ', N'Kiên Giang', N'(077) 765-4321')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH25', N'Nguyễn Minh Đạt', N'NVBH', N'CN2', CAST(N'2003-03-30T10:00:00.000' AS DateTime), N'Nam', N'Cà Mau', N'(059) 654-3210')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH26', N'Nguyễn Minh Giang', N'NVBH', N'CN5', CAST(N'1999-09-25T15:40:00.000' AS DateTime), N'Nam', N'Lâm Đồng', N'(063) 543-2109')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH27', N'Nguyễn Minh Hùng', N'NVBH', N'CN1', CAST(N'1997-05-10T08:30:00.000' AS DateTime), N'Nam', N'Thanh Hóa', N'(037) 432-1098')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH28', N'Nguyễn Minh Khánh', N'NVBH', N'CN2', CAST(N'2001-08-08T11:50:00.000' AS DateTime), N'Nam', N'Hải Phòng', N'(031) 321-0987')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH29', N'Nguyễn Minh Linh', N'NVBH', N'CN3', CAST(N'1995-12-01T13:25:00.000' AS DateTime), N'Nữ', N'Quảng Trị', N'(053) 210-9876')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH3', N'Nguyễn Minh Cường', N'NVBH', N'CN3', CAST(N'1998-02-15T08:15:00.000' AS DateTime), N'Nam', N'Đồng Nai', N'(028) 456-7890')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH30', N'Nguyễn Minh Mỹ', N'NVBH', N'CN4', CAST(N'2002-04-18T16:15:00.000' AS DateTime), N'Nữ', N'Nam Định', N'(035) 109-8765')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH31', N'Nguyễn Minh Nam', N'NVBH', N'CN3', CAST(N'1996-07-20T14:30:00.000' AS DateTime), N'Nam', N'Ninh Bình', N'(057) 987-6543')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH32', N'Nguyễn Minh Ôn', N'NVBH', N'CN1', CAST(N'2000-02-05T09:10:00.000' AS DateTime), N'Nam', N'Quảng Nam', N'(036) 876-5432')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH33', N'Nguyễn Minh Phong', N'NVBH', N'CN5', CAST(N'1996-11-15T17:20:00.000' AS DateTime), N'Nam', N'Bình Định', N'(077) 765-4321')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH34', N'Nguyễn Minh Quyên', N'NVBH', N'CN2', CAST(N'2003-03-30T10:00:00.000' AS DateTime), N'Nữ', N'Sóc Trăng', N'(059) 654-3210')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH35', N'Nguyễn Minh Rạng', N'NVBH', N'CN4', CAST(N'1999-09-25T15:40:00.000' AS DateTime), N'Nam', N'Đắk Lắk', N'(063) 543-2109')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH36', N'Nguyễn Minh Sáng', N'NVBH', N'CN1', CAST(N'1997-05-10T08:30:00.000' AS DateTime), N'Nam', N'Bà Rịa - Vũng Tàu', N'(037) 432-1098')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH37', N'Nguyễn Minh Thái', N'NVBH', N'CN2', CAST(N'2001-08-08T11:50:00.000' AS DateTime), N'Nam', N'Thừa Thiên Huế', N'(031) 321-0987')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH38', N'Nguyễn Minh Uyên', N'NVBH', N'CN3', CAST(N'1995-12-01T13:25:00.000' AS DateTime), N'Nữ', N'Lai Châu', N'(053) 210-9876')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH39', N'Nguyễn Minh Vũ', N'NVBH', N'CN4', CAST(N'2002-04-18T16:15:00.000' AS DateTime), N'Nam', N'Bến Tre', N'(035) 109-8765')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH4', N'Nguyễn Minh Đan', N'NVBH', N'CN4', CAST(N'1992-09-05T18:00:00.000' AS DateTime), N'Nam', N'Vũng Tàu', N'(033) 567-8901')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH40', N'Nguyễn Minh Xuyến', N'NVBH', N'CN3', CAST(N'1998-03-17T18:45:00.000' AS DateTime), N'Nữ', N'Gia Lai', N'(084) 987-6543')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH41', N'Nguyễn Minh Yên', N'NVBH', N'CN2', CAST(N'1994-09-11T21:30:00.000' AS DateTime), N'Nữ', N'Phú Thọ', N'(089) 876-5432')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH42', N'Nguyễn Minh Zin', N'NVBH', N'CN5', CAST(N'2000-12-22T03:20:00.000' AS DateTime), N'Nam', N'An Giang', N'(078) 765-4321')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH43', N'Nguyễn Minh Ái', N'NVBH', N'CN1', CAST(N'1996-05-30T06:10:00.000' AS DateTime), N'Nữ', N'Bắc Giang', N'(079) 654-3210')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH44', N'Nguyễn Minh Bổng', N'NVBH', N'CN4', CAST(N'1999-01-09T09:40:00.000' AS DateTime), N'Nam', N'Cao Bằng', N'(080) 543-2109')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH45', N'Nguyễn Minh Chính', N'NVBH', N'CN3', CAST(N'2001-10-27T12:20:00.000' AS DateTime), N'Nam', N'Hưng Yên', N'(081) 432-1098')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH46', N'Nguyễn Minh Đình', N'NVBH', N'CN2', CAST(N'1997-08-14T15:50:00.000' AS DateTime), N'Nam', N'Bắc Ninh', N'(082) 321-0987')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH47', N'Nguyễn Minh Huyền', N'NVBH', N'CN5', CAST(N'2003-02-02T18:30:00.000' AS DateTime), N'Nữ', N'Thái Nguyên', N'(083) 210-9876')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH48', N'Nguyễn Minh Kỳ', N'NVBH', N'CN1', CAST(N'1995-06-10T21:10:00.000' AS DateTime), N'Nam', N'Yên Bái', N'(084) 109-8765')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH49', N'Nguyễn Minh Lễ', N'NVBH', N'CN4', CAST(N'2002-09-18T03:50:00.000' AS DateTime), N'Nữ', N'Lào Cai', N'(085) 987-6543')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH5', N'Nguyễn Minh Hải', N'NVBH', N'CN5', CAST(N'2000-03-25T09:45:00.000' AS DateTime), N'Nam', N'Hà Nội', N'(024) 123-4567')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH50', N'Nguyễn Minh Mạnh', N'NVBH', N'CN3', CAST(N'1998-12-05T06:30:00.000' AS DateTime), N'Nam', N'Ninh Thuận', N'(086) 876-5432')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH6', N'Nguyễn Minh Hoa', N'NVBH', N'CN2', CAST(N'1997-12-01T14:20:00.000' AS DateTime), N'Nam', N'Đà Nẵng', N'(051) 987-6543')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH7', N'Nguyễn Minh Lan', N'NVBH', N'CN1', CAST(N'1999-11-18T11:10:00.000' AS DateTime), N'Nữ', N'Sài Gòn', N'(083) 123-4567')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH8', N'Nguyễn Minh Khôi', N'NVBH', N'CN3', CAST(N'1994-04-28T15:00:00.000' AS DateTime), N'Nam', N'Long An', N'(072) 567-8901')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'NVBH9', N'Nguyễn Minh Lâm', N'NVBH', N'CN4', CAST(N'1996-07-12T10:30:00.000' AS DateTime), N'Nam', N'Quảng Ngãi', N'(055) 345-6789')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'QL1', N'Nguyễn Trung Kiên', N'QL', N'CN1', CAST(N'2003-04-26T00:00:00.000' AS DateTime), N'Nam', N'Long An', N'(086)977-0912')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'QL10', N'Nguyễn Thị Hoài', N'QL', N'CN2', CAST(N'1998-11-10T12:45:00.000' AS DateTime), N'Nữ', N'Hà Nội', N'(024) 543-2109')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'QL11', N'Phạm Đình Huy', N'QL', N'CN3', CAST(N'1997-02-28T10:30:00.000' AS DateTime), N'Nam', N'Hải Phòng', N'(031) 765-4321')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'QL2', N'Nguyễn Trung Trực', N'QL', N'CN2', CAST(N'1995-06-20T12:30:00.000' AS DateTime), N'Nam', N'Bình Dương', N'(084) 987-6543')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'QL3', N'Nguyễn Văn Anh', N'QL', N'CN3', CAST(N'1994-09-15T13:45:00.000' AS DateTime), N'Nam', N'Hải Phòng', N'(031) 321-0987')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'QL4', N'Nguyễn Thị Mai', N'QL', N'CN4', CAST(N'1993-05-12T14:25:00.000' AS DateTime), N'Nữ', N'Lâm Đồng', N'(063) 456-7890')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'QL5', N'Trần Thị Hương', N'QL', N'CN1', CAST(N'1997-12-01T11:30:00.000' AS DateTime), N'Nữ', N'Hà Nội', N'(024) 123-4567')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'QL6', N'Phạm Văn Thắng', N'QL', N'CN2', CAST(N'1996-03-18T10:20:00.000' AS DateTime), N'Nam', N'Thái Bình', N'(036) 234-5678')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'QL7', N'Lê Hoàng Nam', N'QL', N'CN3', CAST(N'1999-08-05T09:10:00.000' AS DateTime), N'Nam', N'Quảng Ngãi', N'(055) 789-0123')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'QL8', N'Vũ Thị Phương', N'QL', N'CN4', CAST(N'1992-07-30T08:15:00.000' AS DateTime), N'Nữ', N'Đà Nẵng', N'(051) 890-1234')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [MaChucVu], [MaChiNhanh], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (N'QL9', N'Nguyễn Minh Tuấn', N'QL', N'CN1', CAST(N'2000-04-25T14:00:00.000' AS DateTime), N'Nam', N'Hồ Chí Minh', N'(083) 901-2345')
GO
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [NgayNhap], [MaNCC], [TongTien], [MaKho]) VALUES (N'HDN8202023_174052', N'NVBH11', CAST(N'2023-08-20T17:40:52.363' AS DateTime), N'NCC1', N'0.00 VNĐ', N'KHO1')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [NgayNhap], [MaNCC], [TongTien], [MaKho]) VALUES (N'HDN8202023_174421', N'NVBH30', CAST(N'2023-08-20T17:44:21.057' AS DateTime), N'NCC1', N'110,000,000.00 VNĐ', N'KHO1')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [NgayNhap], [MaNCC], [TongTien], [MaKho]) VALUES (N'HDN8202023_174905', N'NVBH17', CAST(N'2023-08-20T17:49:05.030' AS DateTime), N'NCC3', N'77,360,000.00 VNĐ', N'KHO1')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [NgayNhap], [MaNCC], [TongTien], [MaKho]) VALUES (N'HDN8202023_175541', N'NVBH17', CAST(N'2023-08-20T17:55:41.190' AS DateTime), N'NCC3', N'77,360,000.00 VNĐ', N'KHO1')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [NgayNhap], [MaNCC], [TongTien], [MaKho]) VALUES (N'HDN8202023_175753', N'NVBH34', CAST(N'2023-08-20T17:57:53.703' AS DateTime), N'NCC3', N'120,750,000.00 VNĐ', N'KHO1')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [NgayNhap], [MaNCC], [TongTien], [MaKho]) VALUES (N'HDN8202023_192037', N'NVBH18', CAST(N'2023-08-20T19:20:37.537' AS DateTime), N'NCC2', N'65,000,000.00 VNĐ', N'KHO1')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [NgayNhap], [MaNCC], [TongTien], [MaKho]) VALUES (N'HDN8202023_193607', N'NVBH21', CAST(N'2023-08-20T19:36:07.190' AS DateTime), N'NCC2', N'9,000,000.00 VNĐ', N'KHO1')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [NgayNhap], [MaNCC], [TongTien], [MaKho]) VALUES (N'HDN8202023_193914', N'NVBH18', CAST(N'2023-08-20T19:39:14.963' AS DateTime), N'NCC1', N'4,000,000.00 VNĐ', N'KHO1')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [NgayNhap], [MaNCC], [TongTien], [MaKho]) VALUES (N'HDN8202023_194257', N'NVBH15', CAST(N'2023-08-20T19:42:57.813' AS DateTime), N'NCC1', N'6,000,000.00 VNĐ', N'KHO1')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [NgayNhap], [MaNCC], [TongTien], [MaKho]) VALUES (N'HDN8202023_194421', N'NVBH2', CAST(N'2023-08-20T19:44:21.590' AS DateTime), N'NCC1', N'6,000,000.00 VNĐ', N'KHO1')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [NgayNhap], [MaNCC], [TongTien], [MaKho]) VALUES (N'HDN8202023_194730', N'NVBH14', CAST(N'2023-08-20T19:47:30.160' AS DateTime), N'NCC1', N'2,000,000.00 VNĐ', N'KHO1')
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhanVien], [NgayNhap], [MaNCC], [TongTien], [MaKho]) VALUES (N'HDN8202023_204700', N'NVBH2', CAST(N'2023-08-20T20:47:00.703' AS DateTime), N'NCC2', N'18,000,000.00 VNĐ', N'KHO1')
GO
INSERT [dbo].[PhieuXuat] ([MaPhieuXuat], [MaNhanVien], [NgayXuat], [MaKhachHang], [TongTien], [MaKho]) VALUES (N'HDB8202023_04045', N'NVBH1', CAST(N'2023-08-20T12:40:45.393' AS DateTime), N'KH31', N'9,000,000.00 VNĐ', N'KHO1')
INSERT [dbo].[PhieuXuat] ([MaPhieuXuat], [MaNhanVien], [NgayXuat], [MaKhachHang], [TongTien], [MaKho]) VALUES (N'HDB8202023_195606', N'NVBH1', CAST(N'2023-08-20T19:56:06.553' AS DateTime), N'KH1', N'5,999,997.00 VNĐ', N'KHO1')
INSERT [dbo].[PhieuXuat] ([MaPhieuXuat], [MaNhanVien], [NgayXuat], [MaKhachHang], [TongTien], [MaKho]) VALUES (N'HDB8202023_200823', N'NVBH1', CAST(N'2023-08-20T20:08:23.387' AS DateTime), N'KH1', N'36,999,970.00 VNĐ', N'KHO1')
INSERT [dbo].[PhieuXuat] ([MaPhieuXuat], [MaNhanVien], [NgayXuat], [MaKhachHang], [TongTien], [MaKho]) VALUES (N'HDB8202023_202240', N'NVBH1', CAST(N'2023-08-20T20:22:40.270' AS DateTime), N'KH1', N'16,499,996.00 VNĐ', N'KHO1')
INSERT [dbo].[PhieuXuat] ([MaPhieuXuat], [MaNhanVien], [NgayXuat], [MaKhachHang], [TongTien], [MaKho]) VALUES (N'HDB8202023_202556', N'NVBH1', CAST(N'2023-08-20T20:25:56.413' AS DateTime), N'KH1', N'19,500,000.00 VNĐ', N'KHO1')
INSERT [dbo].[PhieuXuat] ([MaPhieuXuat], [MaNhanVien], [NgayXuat], [MaKhachHang], [TongTien], [MaKho]) VALUES (N'HDB8202023_203020', N'NVBH1', CAST(N'2023-08-20T20:30:20.103' AS DateTime), N'KH1', N'43,000,000.00 VNĐ', N'KHO1')
INSERT [dbo].[PhieuXuat] ([MaPhieuXuat], [MaNhanVien], [NgayXuat], [MaKhachHang], [TongTien], [MaKho]) VALUES (N'HDB8202023_203110', N'NVBH1', CAST(N'2023-08-20T20:31:10.273' AS DateTime), N'KH1', N'43,000,000.00 VNĐ', N'KHO1')
INSERT [dbo].[PhieuXuat] ([MaPhieuXuat], [MaNhanVien], [NgayXuat], [MaKhachHang], [TongTien], [MaKho]) VALUES (N'HDB8202023_203326', N'QL1', CAST(N'2023-08-20T20:33:26.103' AS DateTime), N'KH1', N'14,999,990.00 VNĐ', N'KHO1')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO1NCC11', N'SamSung Galaxy S22', N'LT', 10992, 2000000, 3000000, N'', N'SamSung S22
RAM : 8GB
SSD : 128GB', N'KHO1', N'NCC1')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO1NCC110', N'SamSung Galaxy S22', N'LT', 7, 0, 0, N'', N'', N'KHO1', N'NCC1')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO1NCC111', N'SamSung Galaxy S22', N'LT', 100, 10000000, 0, N'', N'', N'KHO1', N'NCC1')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO1NCC12', N'iPhone 13 Pro', N'LT', 10992, 2500000, 3500000, NULL, NULL, N'KHO1', N'NCC2')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO1NCC13', N'Sony Xperia 5 III', N'LT', 1006, 1800000, 2800000, NULL, NULL, N'KHO1', N'NCC3')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO1NCC14', N'SamSung Galaxy S22', N'LT', 1010, 0, 0, N'', N'', N'KHO1', N'NCC1')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO1NCC15', N'SamSung Galaxy S22', N'LT', 1010, 0, 0, N'', N'', N'KHO1', N'NCC1')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO1NCC16', N'SamSung Galaxy S21', N'LT', 0, 0, 0, N'', N'mmmm', N'KHO1', N'NCC1')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO1NCC17', N'SamSung Galaxy S22', N'LT', 0, 0, 0, N'', N'', N'KHO1', N'NCC1')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO1NCC18', N'SamSung Galaxy S22', N'LT', 0, 0, 0, N'', N'', N'KHO1', N'NCC1')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO1NCC19', N'SamSung Galaxy S22', N'LT', 100, 0, 0, N'', N'', N'KHO1', N'NCC1')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO1NCC26', N'Western Digital My Passport 2TB', N'LT', 18, 1200000, 2200000, NULL, NULL, N'KHO1', N'NCC1')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO1NCC31', N'SamSung Galaxy Tab S7', N'LT', 7, 3200000, 5200000, NULL, NULL, N'KHO1', N'NCC6')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO1NCC36', N'Huawei FreeBuds Pro', N'LT', 11, 1300000, 2300000, NULL, NULL, N'KHO1', N'NCC11')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO1NCC41', N'SamSung T5 Portable SSD 500GB', N'LT', 15, 1100000, 2100000, NULL, NULL, N'KHO1', N'NCC16')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO1NCC46', N'Huawei Watch Fit', N'LT', 15, 700000, 900000, NULL, NULL, N'KHO1', N'NCC1')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO1NCC51', N'SamSung Galaxy A52', N'LT', 15, 1500000, 2500000, NULL, NULL, N'KHO1', N'NCC1')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO1NCC52', N'iPhone SE (2nd generation)', N'LT', 12, 1700000, 2700000, NULL, NULL, N'KHO1', N'NCC2')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO1NCC53', N'Sony WH-1000XM3 Wireless Headphones', N'LT', 10, 2600000, 3600000, NULL, NULL, N'KHO1', N'NCC3')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO1NCC54', N'LG 27GN950-B 4K Gaming Monitor', N'LT', 8, 6000000, 8000000, NULL, NULL, N'KHO1', N'NCC4')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO1NCC55', N'Xiaomi Mi 11 Lite', N'LT', 18, 1800000, 2800000, NULL, NULL, N'KHO1', N'NCC5')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO2NCC14', N'LG OLED TV 55 Inch', N'LT', 5, 5000000, 7000000, NULL, NULL, N'KHO2', N'NCC4')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO2NCC15', N'Xiaomi Redmi Note 10', N'LT', 20, 1500000, 2500000, NULL, NULL, N'KHO2', N'NCC5')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO2NCC16', N'Huawei MateBook X Pro', N'LT', 10, 2200000, 3200000, NULL, NULL, N'KHO2', N'NCC6')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO2NCC27', N'Samsung Odyssey G9 Monitor', N'LT', 9, 4500000, 6500000, NULL, NULL, N'KHO2', N'NCC2')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO2NCC32', N'iPhone 13 Mini', N'LT', 14, 2400000, 3400000, NULL, NULL, N'KHO2', N'NCC7')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO2NCC37', N'Lenovo Smart Clock', N'LT', 13, 900000, 1100000, NULL, NULL, N'KHO2', N'NCC12')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO2NCC42', N'iPhone 13 Smart Battery Case', N'LT', 10, 800000, 1000000, NULL, NULL, N'KHO2', N'NCC17')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO2NCC47', N'Lenovo IdeaPad Flex 5', N'LT', 11, 1800000, 2800000, NULL, NULL, N'KHO2', N'NCC2')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO2NCC56', N'Huawei MatePad Pro', N'LT', 10, 2300000, 3300000, NULL, NULL, N'KHO2', N'NCC6')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO2NCC57', N'Lenovo Legion 5 Laptop', N'LT', 7, 3200000, 4200000, NULL, NULL, N'KHO2', N'NCC7')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO2NCC58', N'Asus ROG Strix XG279Q Monitor', N'LT', 9, 3800000, 4800000, NULL, NULL, N'KHO2', N'NCC8')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO2NCC59', N'Dell G5 Gaming Desktop', N'LT', 11, 3500000, 4500000, NULL, NULL, N'KHO2', N'NCC9')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO2NCC60', N'Logitech G502 Hero Mouse', N'LT', 15, 900000, 1100000, NULL, NULL, N'KHO2', N'NCC10')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO3NCC17', N'Lenovo ThinkPad T14', N'LT', 12, 2300000, 3300000, NULL, NULL, N'KHO3', N'NCC7')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO3NCC18', N'Asus ROG Zephyrus G14', N'LT', 7, 2800000, 3800000, NULL, NULL, N'KHO3', N'NCC8')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO3NCC19', N'Dell XPS 15', N'LT', 9, 2600000, 3600000, NULL, NULL, N'KHO3', N'NCC9')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO3NCC28', N'Sandisk Ultra 128GB MicroSD', N'LT', 25, 300000, 500000, NULL, NULL, N'KHO3', N'NCC3')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO3NCC33', N'Sony PlayStation 5', N'LT', 6, 5500000, 7500000, NULL, NULL, N'KHO3', N'NCC8')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO3NCC38', N'Asus RT-AX86U Router', N'LT', 5, 2500000, 3500000, NULL, NULL, N'KHO3', N'NCC13')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO3NCC43', N'Sony WH-1000XM4 Wireless Headphones', N'LT', 9, 2800000, 3800000, NULL, NULL, N'KHO3', N'NCC18')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO3NCC48', N'Asus TUF Gaming VG279QM Monitor', N'LT', 8, 4000000, 6000000, NULL, NULL, N'KHO3', N'NCC3')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO4NCC20', N'Acer Predator Helios 300', N'LT', 11, 2100000, 3100000, NULL, NULL, N'KHO4', N'NCC10')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO4NCC21', N'HP Spectre x360', N'LT', 6, 2700000, 3700000, NULL, NULL, N'KHO4', N'NCC11')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO4NCC22', N'Canon EOS 90D', N'LT', 10, 1800000, 2800000, NULL, NULL, N'KHO4', N'NCC12')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO4NCC29', N'Kingston HyperX Cloud II Headset', N'LT', 14, 800000, 1000000, NULL, NULL, N'KHO4', N'NCC4')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO4NCC34', N'LG Soundbar SN9YG', N'LT', 9, 1800000, 2800000, NULL, NULL, N'KHO4', N'NCC9')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO4NCC39', N'Dell UltraSharp U2719D Monitor', N'LT', 8, 3200000, 4200000, NULL, NULL, N'KHO4', N'NCC14')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO4NCC44', N'LG Gram 17 Laptop', N'LT', 7, 3400000, 4400000, NULL, NULL, N'KHO4', N'NCC19')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO4NCC49', N'Dell Inspiron 14', N'LT', 12, 2500000, 3500000, NULL, NULL, N'KHO4', N'NCC4')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO5NCC23', N'Epson EcoTank ET-2750', N'LT', 15, 1400000, 2400000, NULL, NULL, N'KHO5', N'NCC13')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO5NCC24', N'Sharp Aquos 65 Inch', N'LT', 4, 5500000, 7500000, NULL, NULL, N'KHO5', N'NCC14')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO5NCC25', N'Panasonic Lumix GH5', N'LT', 6, 3200000, 4200000, NULL, NULL, N'KHO5', N'NCC15')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO5NCC30', N'Logitech G Pro Wireless Mouse', N'LT', 11, 700000, 900000, NULL, NULL, N'KHO5', N'NCC5')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO5NCC35', N'Xiaomi Mi Band 6', N'LT', 22, 500000, 700000, NULL, NULL, N'KHO5', N'NCC10')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO5NCC40', N'Logitech C920S HD Pro Webcam', N'LT', 6, 1800000, 2800000, NULL, NULL, N'KHO5', N'NCC15')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO5NCC45', N'Xiaomi Mi Smart Band 5', N'LT', 18, 300000, 500000, NULL, NULL, N'KHO5', N'NCC20')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaLoaiHang], [SoLuong], [DonGiaNhap], [DonGiaBan], [Anh], [GhiChu], [MaKho], [MaNCC]) VALUES (N'LTKHO5NCC50', N'Logitech MX Master 3 Mouse', N'LT', 10, 1200000, 2200000, NULL, NULL, N'KHO5', N'NCC5')
GO
INSERT [dbo].[YeuCauNhapHang] ([MaNhanVien], [ThoiGian], [MaSanPham]) VALUES (N'NVBH1', CAST(N'2023-04-16T00:00:00.000' AS DateTime), N'LTKHO1NCC11')
INSERT [dbo].[YeuCauNhapHang] ([MaNhanVien], [ThoiGian], [MaSanPham]) VALUES (N'NVBH1', CAST(N'2023-08-20T13:21:24.000' AS DateTime), N'LTKHO1NCC11')
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_NhanVien]
GO
ALTER TABLE [dbo].[CTPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuNhap_PhieuNhap] FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PhieuNhap] ([MaPhieuNhap])
GO
ALTER TABLE [dbo].[CTPhieuNhap] CHECK CONSTRAINT [FK_CTPhieuNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[CTPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuNhap_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[CTPhieuNhap] CHECK CONSTRAINT [FK_CTPhieuNhap_SanPham]
GO
ALTER TABLE [dbo].[CTPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuXuat_PhieuXuat] FOREIGN KEY([MaPhieuXuat])
REFERENCES [dbo].[PhieuXuat] ([MaPhieuXuat])
GO
ALTER TABLE [dbo].[CTPhieuXuat] CHECK CONSTRAINT [FK_CTPhieuXuat_PhieuXuat]
GO
ALTER TABLE [dbo].[CTPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuXuat_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[CTPhieuXuat] CHECK CONSTRAINT [FK_CTPhieuXuat_SanPham]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChiNhanh] FOREIGN KEY([MaChiNhanh])
REFERENCES [dbo].[ChiNhanh] ([MaChiNhanh])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChiNhanh]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhanVien]
GO
ALTER TABLE [dbo].[PhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_PhieuXuat_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[PhieuXuat] CHECK CONSTRAINT [FK_PhieuXuat_KhachHang]
GO
ALTER TABLE [dbo].[PhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_PhieuXuat_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuXuat] CHECK CONSTRAINT [FK_PhieuXuat_NhanVien]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Kho] FOREIGN KEY([MaKho])
REFERENCES [dbo].[Kho] ([MaKho])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_Kho]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiHang] FOREIGN KEY([MaLoaiHang])
REFERENCES [dbo].[LoaiHang] ([MaLoaiHang])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiHang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
ALTER TABLE [dbo].[YeuCauNhapHang]  WITH CHECK ADD  CONSTRAINT [FK_YeuCauNhapHang_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[YeuCauNhapHang] CHECK CONSTRAINT [FK_YeuCauNhapHang_NhanVien]
GO
ALTER TABLE [dbo].[YeuCauNhapHang]  WITH CHECK ADD  CONSTRAINT [FK_YeuCauNhapHang_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[YeuCauNhapHang] CHECK CONSTRAINT [FK_YeuCauNhapHang_SanPham]
GO
/****** Object:  StoredProcedure [dbo].[FilterCTSanPhamByMaPhieuXuat]    Script Date: 8/20/2023 9:04:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[FilterCTSanPhamByMaPhieuXuat]
    @MaPhieuXuat NVARCHAR(50) 
AS
BEGIN
    SELECT *
    FROM CTPhieuXuat
    WHERE MaPhieuXuat = @MaPhieuXuat;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetAllSanPham]    Script Date: 8/20/2023 9:04:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllSanPham]
AS
BEGIN
    SELECT * FROM SanPham;
END;
GO
USE [master]
GO
ALTER DATABASE [CellPhoneS_QLBH] SET  READ_WRITE 
GO
