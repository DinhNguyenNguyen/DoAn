use QLTV
go
/*
1. chức vụ
2. ctpm
3.độc giả
4. loại sách
5. nhân viên
6.nxb
7.phạt
8.phiếu mượn
9. sách
10. tài khoản
11.vị tri
---Set lại đúng
1. chức vụ/ nhân viên
2. tài khoản/ độc giả

3. loại sách
4. vị trí
5. nhà xuất bản
6. sách
*/


-- insert Chức vụ
INSERT [dbo].[CHUCVU] ([MACV], [TENCV]) VALUES (N'CV0001', N'Quản trị viên')
go
INSERT [dbo].[CHUCVU] ([MACV], [TENCV]) VALUES (N'CV0002', N'Nhân viên')
go

--insert nhân viên
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 09/22/2021 11:22:20 ******/
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [NAMSINH], [DIACHI], [SDT], [EMAIL]) 
VALUES (N'NV0001', N'Nguyễn Đình Nguyên', CAST(0x20250B00 AS Date), N'Sóc Trăng', N'0357920463', N'nguyendinhnguyen39@gmail.com')
go
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [NAMSINH], [DIACHI], [SDT], [EMAIL]) 
VALUES (N'NV0002', N'Võ Thành Quỳnh', CAST(0x07240B00 AS Date), N'An Giang', N'0123456789', N'vothanhquynh@gmail.com')
go

--Tài Khoản

/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 09/22/2021 11:25:48 ******/
INSERT [dbo].[TAIKHOAN] ( [TENTK], [MATKHAU], [MANV], [MACV]) 
VALUES ( N'admin1', N'admin', N'NV0001', N'CV0001')
go
INSERT [dbo].[TAIKHOAN] ( [TENTK], [MATKHAU], [MANV], [MACV]) 
VALUES ( N'admin2', N'admin', N'NV0002', N'CV0001')
go

--Độc giả
/****** Object:  Table [dbo].[DOCGIA]    Script Date: 09/22/2021 11:31:37 ******/
INSERT [dbo].[DOCGIA] ([MADG], [HOTEN], [NAMSINH], [DIACHI], [SDT], [EMAIL]) 
VALUES (N'DG0001', N'Nguyễn Đình Nguyên', CAST(0x07240B00 AS Date), N'Sóc Trang','0123456789', N'nguyendinhnguyen39@gmail.com')
go
INSERT [dbo].[DOCGIA] ([MADG], [HOTEN], [NAMSINH], [DIACHI], [SDT], [EMAIL]) 
VALUES (N'DG0002', N'Võ Thành Quỳnh', CAST(0x07240B00 AS Date), N'An Giang','0123456789', N'vothanhquynh@gmail.com')
go
