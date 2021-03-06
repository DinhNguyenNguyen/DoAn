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
1. chức vụ/ nhân viên r
2. tài khoản/ độc giả r
3. loại sách r
4. vị trí 
5. nhà xuất bản r
6. sách
*/


-- insert Chức vụ
INSERT INTO CHUCVU 
VALUES (N'CV00000001', N'Quản trị viên')
go
INSERT INTO CHUCVU
VALUES (N'CV00000002', N'Nhân viên')
go


--insert nhân viên
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 09/22/2021 11:22:20 ******/
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [NAMSINH], [DIACHI], [SDT], [EMAIL],[ngayvaolam],[GIOITINH]) 
VALUES (N'NV00000001', N'Nguyễn Đình Nguyên', CAST(0x20250B00 AS Date), N'Sóc Trăng', N'0357920463', N'nguyendinhnguyen39@gmail.com','12/12/2020',N'Nam')
go
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [NAMSINH], [DIACHI], [SDT], [EMAIL],[ngayvaolam],[GIOITINH]) 
VALUES (N'NV00000002', N'Võ Thành Quỳnh', CAST(0x07240B00 AS Date), N'An Giang', N'0123456789', N'vothanhquynh@gmail.com','10/12/2020', N'Nam')
go

--Tài Khoản
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 09/22/2021 11:25:48 ******/
INSERT into [dbo].[TAIKHOAN] 
VALUES ('TK00000001',N'admin', N'admin', N'NV00000001', N'CV00000001')
go
INSERT [dbo].[TAIKHOAN]
VALUES ('TK00000002',N'admin2', N'admin', N'NV00000002', N'CV00000001')
go

--Độc giả
/****** Object:  Table [dbo].[DOCGIA]    Script Date: 09/22/2021 11:31:37 ******/

Select GETDATE()
SET DATEFORMAT dmy;  
GO 
INSERT [dbo].[DOCGIA] ([MADG], [HOTEN], [NAMSINH], [DIACHI], [SDT], [EMAIL],[GIOITINH]) 
VALUES (N'DG00000001', N'Nguyễn Đình Nguyên', CAST(0x07240B00 AS Date), N'Sóc Trang','0123456789', N'nguyendinhnguyen39@gmail.com', N'Nam')
go
INSERT [dbo].[DOCGIA] ([MADG], [HOTEN], [NAMSINH], [DIACHI], [SDT], [EMAIL],[GIOITINH]) 
VALUES (N'DG00000002', N'Võ Thành Quỳnh', CAST(0x07240B00 AS Date), N'An Giang','0123456789', N'vothanhquynh@gmail.com',N'Nam')
go
insert into DocGia values ('DG00000003', N'Huỳnh Khánh An', '28/4/2001', N'An Giang', '0699483347', 'huynhkhanhan58@gmail.com', N'Nam' )
insert into DocGia values ('DG00000004', N'Thái Văn Chương', '2/6/1997', N'Thừa Thiên - Huế', '0981106882', 'thaivanchuong62@gmail.com', N'Nữ' )
insert into DocGia values ('DG00000005', N'Từ Tấn Đạt', '26/3/1995', N'Bắc Giang', '0484569649', 'tutandat20@gmail.com', N'Nam' )
insert into DocGia values ('DG00000006', N'Lý Nguyễn Duy Kha', '10/1/1997', N'Bắc Ninh', '0643803411', 'lynguyenduykha69@gmail.com', N'Nữ' )
insert into DocGia values ('DG00000007', N'Trần Minh Khánh', '28/7/1996', N'An Giang', '0550410356', 'tranminhkhanh71@gmail.com', N'Nam' )
insert into DocGia values ('DG00000008', N'Lê Minh Khôi', '12/2/2000', N'Hậu Giang', '0775519360', 'leminhkhoi39@gmail.com', N'Nam' )
insert into DocGia values ('DG00000009', N'Võ Nguyễn Như Lụa', '7/3/1996', N'Thái Nguyên', '0214026549', 'vonguyennhulua21@gmail.com', N'Nữ' )
insert into DocGia values ('DG00000010', N'Võ Thị Phương Mai', '14/8/1998', N'Quảng Ngãi', '0789677655', 'vothiphuongmai48@gmail.com', N'Nữ' )
insert into DocGia values ('DG00000011', N'Nguyễn Trà My', '19/5/2000', N'Tây Ninh', '0783790532', 'nguyentramy49@gmail.com', N'Nam' )
insert into DocGia values ('DG00000012', N'Nguyễn Thoại Mỹ', '9/2/2003', N'Bình Thuận', '0625146611', 'nguyenthoaimy71@gmail.com', N'Nữ' )
insert into DocGia values ('DG00000013', N'Nguyễn Thị Mai Nghi', '7/2/1996', N'Kon Tum', '0252065590', 'nguyenthimainghi48@gmail.com', N'Nam' )
insert into DocGia values ('DG00000014', N'Nguyễn Hữu Nghị', '28/11/1995', N'Thừa Thiên - Huế', '0629987185', 'nguyenhuunghi20@gmail.com', N'Nữ' )
insert into DocGia values ('DG00000015', N'Lê You Hi', '21/1/1998', N'Hải Phòng ', '0326325548', 'leyouhi32@gmail.com', N'Nữ' )
insert into DocGia values ('DG00000016', N'Lê Thị Hoa', '11/11/1998', N'Yên Bái', '0993343251', 'lethihoa97@gmail.com', N'Nam' )
insert into DocGia values ('DG00000017', N'Huỳnh Nguyễn Hưng', '5/2/1997', N'Quảng Nam', '0378550310', 'huynhnguyenhung34@gmail.com', N'Nam' )
insert into DocGia values ('DG00000018', N'Nguyễn Duy Khang', '5/9/1996', N'Cà Mau', '0906237986', 'nguyenduykhang24@gmail.com', N'Nam' )
insert into DocGia values ('DG00000019', N'Trần Trúc Lam', '18/1/1999', N'Lâm Đồng', '0934578085', 'trantruclam7@gmail.com', N'Nam' )
insert into DocGia values ('DG00000020', N'Nguyễn Lê Lợi', '19/4/1995', N'Hải Phòng', '0691913513', 'nguyenleloi6@gmail.com', N'Nam' )
insert into DocGia values ('DG00000021', N'Lê You Hi', '1/5/2000', N'Phú Thọ', '0195164884', 'leyouhi40@gmail.com', N'Nam' )
insert into DocGia values ('DG00000022', N'Cao Quốc Thái', '21/2/1997', N'Thừa Thiên - Huế', '0431118897', 'caoquocthai94@gmail.com', N'Nữ' )
insert into DocGia values ('DG00000023', N'Bùi Thị Ngọc Trân', '4/9/1995', N'Cà Mau', '0578338053', 'buithingoctran59@gmail.com', N'Nữ' )
insert into DocGia values ('DG00000024', N'Nguyễn Phương Trinh', '22/7/1997', N'Đồng Nai', '0196648735', 'nguyenphuongtrinh7@gmail.com', N'Nam' )
insert into DocGia values ('DG00000025', N'Nguyễn Chí Vĩ', '3/4/1995', N'Kiên Giang', '0386324313', 'nguyenchivi82@gmail.com', N'Nam' )
insert into DocGia values ('DG00000026', N'Trần Thị Yến Vy', '14/3/2003', N'Gia Lai', '0937340216', 'tranthiyenvy20@gmail.com', N'Nam' )
insert into DocGia values ('DG00000027', N'Đinh Gia Vỹ', '16/10/1996', N'Vĩnh Phúc', '0711504619', 'dinhgiavy33@gmail.com', N'Nữ' )
insert into DocGia values ('DG00000028', N'Phú Anh Tuấn', '10/1/1997', N'Ninh Bình', '0863888062', 'phuanhtuan0@gmail.com', N'Nữ' )
insert into DocGia values ('DG00000029', N'Cao Quốc Thái', '21/7/1997', N'Thái Bình', '0231348475', 'caoquocthai66@gmail.com', N'Nữ' )
insert into DocGia values ('DG00000030', N'Bùi Thị Ngọc Trân', '19/6/2001', N'Hưng Yên', '0494906186', 'buithingoctran62@gmail.com', N'Nữ' )
insert into DocGia values ('DG00000031', N'Nguyễn Phương Trinh', '4/9/1998', N'Bắc Ninh', '0886151708', 'nguyenphuongtrinh76@gmail.com', N'Nữ' )
insert into DocGia values ('DG00000032', N'Nguyễn Chí Vĩ', '2/11/2002', N'Hà Tây', '0814351524', 'nguyenchivi21@gmail.com', N'Nữ' )
insert into DocGia values ('DG00000033', N'Trần Thị Yến Vy', '21/1/2002', N'Hòa Bình', '0102453679', 'tranthiyenvy86@gmail.com', N'Nữ' )
insert into DocGia values ('DG00000034', N'Đinh Gia Vỹ', '8/7/2002', N'Bắc Kạn', '0104461626', 'dinhgiavy62@gmail.com', N'Nữ' )
insert into DocGia values ('DG00000035', N'Lý Vưu Thành Phú', '26/11/1999', N'Hải Phòng', '0605970759', 'lyvuuthanhphu75@gmail.com', N'Nam' )
insert into DocGia values ('DG00000036', N'Lê Thi Tú Quỳnh', '23/4/2003', N'Gia Lai', '0727438857', 'lethituquynh78@gmail.com', N'Nam' )
insert into DocGia values ('DG00000037', N'Nguyễn Hoàng Sang', '1/7/2001', N'Khánh Hòa', '0698121183', 'nguyenhoangsang52@gmail.com', N'Nữ' )
insert into DocGia values ('DG00000038', N'Huỳnh Cẩm Tiên', '24/12/2000', N'Thái Bình', '0965334115', 'huynhcamtien54@gmail.com', N'Nam' )
insert into DocGia values ('DG00000039', N'Trần Chí Tình', '18/6/1999', N'Ninh Bình', '0608343321', 'tranchitinh88@gmail.com', N'Nam' )
insert into DocGia values ('DG00000040', N'Đặng Hoàng Túc', '9/6/1995', N'Thái Nguyên', '0786186136', 'danghoangtuc68@gmail.com', N'Nữ' )
insert into DocGia values ('DG00000041', N'Nguyễn Xuân Thành', '13/3/1998', N'Quảng Ninh', '0820847312', 'nguyenxuanthanh51@gmail.com', N'Nam' )
insert into DocGia values ('DG00000042', N'Nguyễn Văn Thiện', '25/7/2001', N'Cà Mau', '0135367997', 'nguyenvanthien27@gmail.com', N'Nam' )
insert into DocGia values ('DG00000043', N'Trần Mỹ Quyên', '25/8/1996', N'Thanh Hóa', '0418949196', 'tranmyquyen17@gmail.com', N'Nam' )
insert into DocGia values ('DG00000044', N'Đinh Văn Sịn', '1/5/2003', N'Nam Định', '0974252174', 'dinhvansin64@gmail.com', N'Nam' )
insert into DocGia values ('DG00000045', N'Tạ Thanh Tài', '11/12/1999', N'Ninh Bình', '0484054328', 'tathanhtai38@gmail.com', N'Nam' )
insert into DocGia values ('DG00000046', N'Phan Thanh Tùng', '17/8/2001', N'Cao Bằng', '0192049489', 'phanthanhtung4@gmail.com', N'Nữ' )
insert into DocGia values ('DG00000047', N'Huỳnh Kim Thoa', '13/8/1998', N'Gia Lai', '0225977217', 'huynhkimthoa14@gmail.com', N'Nam' )
insert into DocGia values ('DG00000048', N'Nguyễn Anh Thư', '11/10/2000', N'Cần Thơ', '0219945781', 'nguyenanhthu79@gmail.com', N'Nam' )
insert into DocGia values ('DG00000049', N'Đặng Kiều Trang', '5/10/1996', N'Tiền Giang', '0847379749', 'dangkieutrang67@gmail.com', N'Nam' )
insert into DocGia values ('DG00000050', N'Từ Gia Trấn', '6/4/2002', N'Thanh Hóa', '0476370472', 'tugiatran62@gmail.com', N'Nữ' )
insert into DocGia values ('DG00000051', N'Nguyễn Trần Thanh Trúc', '20/7/1998', N'Hà Giang', '0955146468', 'nguyentranthanhtruc46@gmail.com', N'Nữ' )
insert into DocGia values ('DG00000052', N'Huỳnh Nhật Trường', '7/11/1997', N'Nam Định', '0116712716', 'huynhnhattruong89@gmail.com', N'Nam' )
go



--loại sách
Insert into loaisach values('LS00000001', N'Sách công nghệ thông tin', 'VT00000008')
Insert into loaisach values('LS00000002', N'Sách kế toán', 'VT00000003')
Insert into loaisach values('LS00000003', N'sách Giải Trí', 'VT00000002')
Insert into loaisach values('LS00000004', N'sách Y Khoa', 'VT00000007')
Insert into loaisach values('LS00000005', N'sách Môi trường', 'VT00000005')
Insert into loaisach values('LS00000006', N'sách Dược', 'VT00000005')
Insert into loaisach values('LS00000007', N'sách Nhiếp ảnh', 'VT00000009')
Insert into loaisach values('LS00000008', N'sách Văn chương', 'VT00000003')
Insert into loaisach values('LS00000009', N'sách Luật', 'VT00000008')
Insert into loaisach values('LS00000010', N'sách Ngôn ngữ nước ngoài', 'VT00000005')
Insert into loaisach values('LS00000011', N'sách Giáo trình', 'VT00000009')
Insert into loaisach values('LS00000012', N'sách Tạp chí', 'VT00000004')
Insert into loaisach values('LS00000013', N'sách Hướng dẫn', 'VT00000001')
Insert into loaisach values('LS00000014', N'sách Du lịch', 'VT00000007')
Insert into loaisach values('LS00000015', N'sách Sách kỹ năng', 'VT00000002')
Insert into loaisach values('LS00000016', N'sách Sách dành cho các em thiếu nhi', 'VT00000008')
Insert into loaisach values('LS00000017', N'sách Thể loại sách chuyên ngành', 'VT00000001')
Insert into loaisach values('LS00000018', N'sách Thể loại kinh tế, chính trị, xã hội', 'VT00000006')

go



--Nhà xuất bản
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000001', N'Nhà xuất bản Chính trị Quốc gia', N'An Giang', '0699483347', 'nhaxuatbanchinhtriquocgia@gmail.com', 'chinhtriquocgia.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000002', N'Nhà xuất bản Tư pháp', N'Thừa Thiên - Huế', '0981106882', 'nhaxuatbantuphap@gmail.com', 'tuphap.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000003', N'Nhà xuất bản Hồng Đức', N'Bắc Giang', '0484569649', 'nhaxuatbanhongduc@gmail.com', 'hongduc.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000004', N'Nhà xuất bản Quân đội', N'Bắc Ninh', '0643803411', 'nhaxuatbanquandoi@gmail.com', 'quandoi.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000005', N'Nhà xuất bản Công an nhân dân', N'An Giang', '0550410356', 'nhaxuatbancongannhandan@gmail.com', 'congannhandan.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000006', N'Nhà xuất bản Kim Đồng', N'Hậu Giang', '0775519360', 'nhaxuatbankimdong@gmail.com', 'kimdong.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000007', N'Nhà xuất bản Thanh niên', N'Thái Nguyên', '0214026549', 'nhaxuatbanthanhnien@gmail.com', 'thanhnien.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000008', N'Nhà xuất bản Lao động', N'Quảng Ngãi', '0789677655', 'nhaxuatbanlaodong@gmail.com', 'laodong.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000009', N'Nhà xuất bản Phụ nữ', N'Tây Ninh', '0783790532', 'nhaxuatbanphunu@gmail.com', 'phunu.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000010', N'Nhà xuất bản Mỹ thuật', N'Bình Thuận', '0625146611', 'nhaxuatbanmythuat@gmail.com', 'mythuat.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000011', N'Nhà xuất bản Sân khấu', N'Kon Tum', '0252065590', 'nhaxuatbansankhau@gmail.com', 'sankhau.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000012', N'Nhà xuất bản Hội nhà văn', N'Thừa Thiên - Huế', '0629987185', 'nhaxuatbanhoinhavan@gmail.com', 'hoinhavan.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000013', N'Nhà xuất bản Lao động xã hội', N'Hải Phòng ', '0326325548', 'nhaxuatbanlaodongxahoi@gmail.com', 'laodongxahoi.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000014', N'Nhà xuất bản Khoa học xã hội', N'Yên Bái', '0993343251', 'nhaxuatbankhoahocxahoi@gmail.com', 'khoahocxahoi.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000015', N'Nhà xuất bản Tôn giáo', N'Quảng Nam', '0378550310', 'nhaxuatbantongiao@gmail.com', 'tongiao.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000016', N'Nhà xuất bản Thông tấn', N'Cà Mau', '0906237986', 'nhaxuatbanthongtan@gmail.com', 'thongtan.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000017', N'Nhà xuất bản Bản đồ', N'Lâm Đồng', '0934578085', 'nhaxuatbanbando@gmail.com', 'bando.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000018', N'Nhà xuất bản Bưu điện', N'Hải Phòng', '0691913513', 'nhaxuatbanbuudien@gmail.com', 'buudien.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000019', N'Nhà xuất bản Giao thông', N'Phú Thọ', '0195164884', 'nhaxuatbangiaothong@gmail.com', 'giaothong.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000020', N'Nhà xuất bản Khoa học và kỹ thuật', N'Thừa Thiên - Huế', '0431118897', 'nhaxuatbankhoahocvakythuat@gmail.com', 'khoahocvakythuat.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000021', N'Nhà xuất bản Khoa học tự nhiên và Công nghệ', N'Cà Mau', '0578338053', 'nhaxuatbankhoahoctunhienvacongnghe@gmail.com', 'khoahoctunhienvacongnghe.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000022', N'Nhà xuất bản Nông nghiệp', N'Đồng Nai', '0196648735', 'nhaxuatbannongnghiep@gmail.com', 'nongnghiep.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000023', N'Nhà xuất bản Tài chính', N'Kiên Giang', '0386324313', 'nhaxuatbantaichinh@gmail.com', 'taichinh.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000024', N'Nhà xuất bản Thống kê', N'Gia Lai', '0937340216', 'nhaxuatbanthongke@gmail.com', 'thongke.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000025', N'Nhà xuất bản Thể dục thể thao', N'Vĩnh Phúc', '0711504619', 'nhaxuatbantheducthethao@gmail.com', 'theducthethao.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000026', N'Nhà xuất bản Y học', N'Ninh Bình', '0863888062', 'nhaxuatbanyhoc@gmail.com', 'yhoc.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000027', N'Nhà xuất bản Xây dựng', N'Thái Bình', '0231348475', 'nhaxuatbanxaydung@gmail.com', 'xaydung.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000028', N'Nhà xuất bản Từ điển bách khoa', N'Hưng Yên', '0494906186', 'nhaxuatbantudienbachkhoa@gmail.com', 'tudienbachkhoa.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000029', N'Nhà xuất bản Tri thức', N'Bắc Ninh', '0886151708', 'nhaxuatbantrithuc@gmail.com', 'trithuc.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000030', N'Nhà xuất bản Thế giới', N'Hà Tây', '0814351524', 'nhaxuatbanthegioi@gmail.com', 'thegioi.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000031', N'Nhà xuất bản Âm nhạc', N'Hòa Bình', '0102453679', 'nhaxuatbanamnhac@gmail.com', 'amnhac.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000032', N'Nhà xuất bản Văn học', N'Bắc Kạn', '0104461626', 'nhaxuatbanvanhoc@gmail.com', 'vanhoc.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000033', N'Nhà xuất bản Văn hoá dân tộc', N'Hải Phòng', '0605970759', 'nhaxuatbanvanhoadantoc@gmail.com', 'vanhoadantoc.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000034', N'Nhà xuất bản Văn hoá - Thông tin', N'Gia Lai', '0727438857', 'nhaxuatbanvanhoa-thongtin@gmail.com', 'vanhoa-thongtin.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000035', N'Nhà xuất bản Lý luận chính trị', N'Khánh Hòa', '0698121183', 'nhaxuatbanlyluanchinhtri@gmail.com', 'lyluanchinhtri.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000036', N'Nhà xuất bản Đại học kinh tế quốc dân', N'Thái Bình', '0965334115', 'nhaxuatbandaihockinhtequocdan@gmail.com', 'daihockinhtequocdan.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000037', N'Nhà xuất bản Đại học Bách khoa Hà Nội', N'Ninh Bình', '0608343321', 'nhaxuatbandaihocbachkhoahanoi@gmail.com', 'daihocbachkhoahanoi.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000038', N'Nhà xuất bản Đại học Huế', N'Thái Nguyên', '0786186136', 'nhaxuatbandaihochue@gmail.com', 'daihochue.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000039', N'Nhà xuất bản Đại học Quốc gia Hà Nội', N'Quảng Ninh', '0820847312', 'nhaxuatbandaihocquocgiahanoi@gmail.com', 'daihocquocgiahanoi.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000040', N'Nhà xuất bản Đại học sư phạm', N'Cà Mau', '0135367997', 'nhaxuatbandaihocsupham@gmail.com', 'daihocsupham.edu.vn')
--insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000041', N'Nhà xuất bản Đại học Quốc gia thành phố Hồ Chí Minh', N'Thanh Hóa', '0418949196', 'nhaxuatbandaihocquocgiathanhphohochiminh@gmail.com', 'daihocquocgiathanhphohochiminh.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000042', N'Nhà xuất bản Giáo dục', N'Nam Định', '0974252174', 'nhaxuatbangiaoduc@gmail.com', 'giaoduc.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000043', N'Nhà xuất bản Đại học Thái Nguyên', N'Ninh Bình', '0484054328', 'nhaxuatbandaihocthainguyen@gmail.com', 'daihocthainguyen.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000044', N'Nhà xuất bản Hà Nội', N'Cao Bằng', '0192049489', 'nhaxuatbanhanoi@gmail.com', 'hanoi.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000045', N'Nhà xuất bản Hải phòng', N'Gia Lai', '0225977217', 'nhaxuatbanhaiphong@gmail.com', 'haiphong.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000046', N'Nhà xuất bản Thanh Hoá', N'Cần Thơ', '0219945781', 'nhaxuatbanthanhhoa@gmail.com', 'thanhhoa.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000047', N'Nhà xuất bản Nghệ An', N'Tiền Giang', '0847379749', 'nhaxuatbannghean@gmail.com', 'nghean.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000048', N'Nhà xuất bản Thuận Hoá', N'Thanh Hóa', '0476370472', 'nhaxuatbanthuanhoa@gmail.com', 'thuanhoa.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000049', N'Nhà xuất bản Đà Nẵng', N'Hà Giang', '0955146468', 'nhaxuatbandanang@gmail.com', 'danang.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000050', N'Nhà xuất bản Văn hoá Sài gòn', N'Nam Định', '0116712716', 'nhaxuatbanvanhoasaigon@gmail.com', 'vanhoasaigon.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000051', N'Nhà xuất bản Tổng hợp thành phố Hồ Chí Minh', N'Ninh Bình', '0219945781', 'nhaxuatbantonghopthanhphohochiminh@gmail.com', 'tonghopthanhphohochiminh.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000052', N'Nhà xuất bản Trẻ', N'Cao Bằng', '0847379749', 'nhaxuatbantre@gmail.com', 'tre.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000053', N'Nhà xuất bản Văn nghệ', N'Gia Lai', '0476370472', 'nhaxuatbanvannghe@gmail.com', 'vannghe.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000054', N'Nhà xuất bản Đồng Nai', N'Cần Thơ', '0955146468', 'nhaxuatbandongnai@gmail.com', 'dongnai.edu.vn')
insert into NXB (Manxb,tennxb, diachi,sdt,email,websize)  values('XB00000055', N'Nhà xuất bản Phương Đông', N'Tiền Giang', '0116712716', 'nhaxuatbanphuongdong@gmail.com', 'phuongdong.edu.vn')

go

--Vị trí
insert into VITRI values('VT00000001',N'Kệ sách Khoa Kỹ Thuật Công Nghệ')
insert into VITRI values('VT00000002',N'Kệ sách Khoa Kinh Tế')
insert into VITRI values('VT00000003',N'Kệ sách Khoa Môi Trường')
insert into VITRI values('VT00000004',N'Kệ sách Khoa Y')
insert into VITRI values('VT00000005',N'Kệ sách Khoa Dược')
insert into VITRI values('VT00000006',N'Kệ sách Khoa Luật')
insert into VITRI values('VT00000007',N'Kệ sách Giải trí')
insert into VITRI values('VT00000008',N'Kệ sách hội hoạ')
insert into VITRI values('VT00000009',N'Kệ sách Khoa Nông nghiệp')
insert into VITRI values('VT00000010',N'Kệ sách Khoa Ngoại ngữ')
go


--sách
insert into Sach values ('MS00000001', N'Lên gác rút thang', N'Carol Kinsey Goman', 36, 1991, 'XB00000025', 'LS00000003', 94000)
insert into Sach values ('MS00000002', N'Nước Mỹ nhìn từ bên trong', N'Dan Senor – Saul Singer', 20, 2011, 'XB00000009', 'LS00000002', 39000)
insert into Sach values ('MS00000003', N'Hòa bình, tình yêu và tự do', N'Steve Young', 25, 2002, 'XB00000020', 'LS00000001', 480000)
insert into Sach values ('MS00000004', N'Đừng bao giờ đi ăn một mình', N'Michael Spencer', 50, 2019, 'XB00000044', 'LS00000003', 324000)
insert into Sach values ('MS00000005', N'Ai che lưng cho bạn', N'Mark Tier', 31, 1991, 'XB00000037', 'LS00000007', 451000)
insert into Sach values ('MS00000006', N'Keynes và thế giới hậu khủng hoảng', N'Joseph Murphy', 25, 1998, 'XB00000038', 'LS00000010', 350000)
insert into Sach values ('MS00000007', N'Nền giáo dục của người giàu', N'Debra Fine', 6, 2004, 'XB00000030', 'LS00000009', 57000)
insert into Sach values ('MS00000008', N'Khuyến học', N'Đặng Phong', 13, 1990, 'XB00000006', 'LS00000005', 216000)
insert into Sach values ('MS00000009', N'Quốc gia khởi nghiệp', N'Vãn Tình', 15, 1991, 'XB00000034', 'LS00000003', 166000)
insert into Sach values ('MS00000010', N'Khi bong bóng vỡ', N'Lê Văn Tề', 16, 2006, 'XB00000012', 'LS00000007', 475000)
insert into Sach values ('MS00000011', N'Kinh tế học lãng mạn', N'Dale Carnegie', 15, 2007, 'XB00000026', 'LS00000007', 500000)
insert into Sach values ('MS00000012', N'Tri thức khách quan', N'Keith Ferrazzi', 42, 2010, 'XB00000046', 'LS00000006', 416000)
insert into Sach values ('MS00000013', N'Chiến tranh tiền tệ', N'Clark A. Campbell & Mick Campbell', 29, 2009, 'XB00000021', 'LS00000009', 204000)
insert into Sach values ('MS00000014', N'Tiền không mọc trên cây', N'Neale S. Godfrey & Carolina Edwards', 46, 2003, 'XB00000002', 'LS00000010', 270000)
insert into Sach values ('MS00000015', N'Phá rào kinh tế trong đêm trước đổi mới', N'Azit Nexin', 14, 1990, 'XB00000028', 'LS00000003', 449000)
insert into Sach values ('MS00000016', N'Những đỉnh cao chỉ huy', N'Joseph Murphy', 49, 1995, 'XB00000043', 'LS00000006', 472000)
insert into Sach values ('MS00000017', N'Sự hội tụ kế tiếp', N'Andrew Matthews', 31, 2004, 'XB00000008', 'LS00000006', 145000)
insert into Sach values ('MS00000018', N'Đồng tiền lên ngôi', N'Keynesian', 19, 2020, 'XB00000049', 'LS00000002', 413000)
insert into Sach values ('MS00000019', N'Cuộc đào thoát vĩ đại', N'Sugahara Yuko', 40, 2010, 'XB00000036', 'LS00000006', 256000)
insert into Sach values ('MS00000020', N'Sự bí ẩn của vốn', N'Robert T.Kiyosaki', 35, 2007, 'XB00000037', 'LS00000002', 305000)
insert into Sach values ('MS00000021', N'Ý tưởng mới từ các kinh tế gia tiền bối', N'Debra Fine', 43, 2006, 'XB00000015', 'LS00000010', 256000)
insert into Sach values ('MS00000022', N'Cách nền kinh tế vận hành', N'Dale Carnegie', 33, 1998, 'XB00000009', 'LS00000005', 372000)
insert into Sach values ('MS00000023', N'Lựa chọn công', N'David Stabler', 26, 2013, 'XB00000001', 'LS00000010', 316000)
insert into Sach values ('MS00000024', N'Em phải đến Harvard học kinh tế', N'David Stabler', 7, 2019, 'XB00000036', 'LS00000003', 366000)
insert into Sach values ('MS00000025', N'Vượt lên chính mình', N'Donald Trump', 5, 2009, 'XB00000043', 'LS00000003', 252000)
insert into Sach values ('MS00000026', N'Một tuần trong đời tỷ phú', N'Tony Buzan', 19, 2003, 'XB00000002', 'LS00000006', 383000)
insert into Sach values ('MS00000027', N'Triết lý cuộc đời', N'Vãn Tình', 13, 1993, 'XB00000024', 'LS00000010', 492000)
insert into Sach values ('MS00000028', N'Vị giám đốc 1 phút', N'Keynesian', 31, 2007, 'XB00000045', 'LS00000002', 204000)
insert into Sach values ('MS00000029', N'Thiên tài được đào luyện như thế nào', N'Chung Ju Yung', 11, 1996, 'XB00000005', 'LS00000004', 337000)
insert into Sach values ('MS00000030', N'Bí mật ngôi mộ Khổng Minh', N'Sugahara Yuko', 37, 1991, 'XB00000023', 'LS00000001', 210000)
insert into Sach values ('MS00000032', N'Bán khống', N'Keith Ferrazzi', 36, 2017, 'XB00000028', 'LS00000010', 149000)
insert into Sach values ('MS00000033', N'Để thành công trong chứng khoán', N'David Stabler', 45, 2017, 'XB00000046', 'LS00000004', 450000)
insert into Sach values ('MS00000034', N'Bí quyết đầu tư & kinh doanh chứng khoán', N'Song Hongbing', 42, 2014, 'XB00000047', 'LS00000004', 153000)
insert into Sach values ('MS00000035', N'Tiền không phải là vấn đề', N'Todd G. Buchholz', 44, 2014, 'XB00000003', 'LS00000001', 219000)
insert into Sach values ('MS00000036', N'Dạy con làm giàu (tập 1-5)', N'Steven E. Landsburg', 46, 2009, 'XB00000024', 'LS00000002', 152000)
insert into Sach values ('MS00000037', N'Quản lý dự án trên 1 trang giấy', N'Vãn Tình', 30, 2010, 'XB00000046', 'LS00000006', 57000)
insert into Sach values ('MS00000038', N'Hiểu nghề giữ nghiệp (ngành ngân hàng)', N'Tony Buổi sáng', 36, 1999, 'XB00000039', 'LS00000008', 334000)
insert into Sach values ('MS00000039', N'The Ugly Duckling (song ngữ)', N'Dale Carnegie', 22, 2010, 'XB00000033', 'LS00000005', 154000)
insert into Sach values ('MS00000041', N'Thời thơ ấu của các tổng thống Mỹ', N'Daniel Yergin & Joseph Stanislaw', 46, 2002, 'XB00000035', 'LS00000009', 373000)
insert into Sach values ('MS00000042', N'Sách kỹ năng', N'Steven E. Landsburg', 15, 2009, 'XB00000005', 'LS00000001', 187000)
insert into Sach values ('MS00000043', N'Đời thay đổi khi chúng ta thay đổi', N'Debra Fine', 31, 2003, 'XB00000019', 'LS00000006', 170000)
insert into Sach values ('MS00000045', N'Đến lúc rồi, tự lập thôi', N'Debra Fine', 47, 1996, 'XB00000045', 'LS00000010', 152000)
insert into Sach values ('MS00000046', N'Bí mật ngôn ngữ cơ thể', N'Vãn Tình', 39, 2018, 'XB00000048', 'LS00000010', 442000)
insert into Sach values ('MS00000047', N'Trên đường băng', N'Eamonn Butler', 47, 2016, 'XB00000020', 'LS00000009', 170000)
insert into Sach values ('MS00000048', N'Cafe cùng Tony', N'Carol Kinsey Goman', 39, 2009, 'XB00000025', 'LS00000010', 426000)
insert into Sach values ('MS00000049', N'Small Talk', N'Michael Lewis', 26, 2011, 'XB00000005', 'LS00000003', 186000)
insert into Sach values ('MS00000050', N'Ngày xưa có 1 con bò (once upon a cow)', N'Ha-Joon Chang', 19, 1997, 'XB00000010', 'LS00000007', 337000)
insert into Sach values ('MS00000051', N'Khéo ăn nói sẽ có được thiên hạ', N'Eamonn Butler', 50, 2014, 'XB00000042', 'LS00000010', 375000)
insert into Sach values ('MS00000052', N'Vô cùng tàn nhẫn, vô cùng yêu thương', N'Fukuzawa Yukichi', 36, 1993, 'XB00000013', 'LS00000001', 310000)
insert into Sach values ('MS00000053', N'Con cái chúng ta giỏi thật', N'Lê Thẩm Dương', 49, 2013, 'XB00000033', 'LS00000007', 336000)
insert into Sach values ('MS00000054', N'Sức mạnh tiềm thức', N'Philip A. Fisher', 32, 2017, 'XB00000022', 'LS00000008', 415000)
insert into Sach values ('MS00000055', N'Khí chất bao nhiêu, hạnh phúc bấy nhiêu', N'Đặng Phong', 35, 2017, 'XB00000050', 'LS00000010', 86000)
insert into Sach values ('MS00000056', N'Cha mẹ Nhật dạy con tự lập', N'Chung Ju Yung', 33, 2014, 'XB00000030', 'LS00000010', 500000)
insert into Sach values ('MS00000057', N'Lập bản đồ tư duy', N'Lê Thẩm Dương', 32, 2017, 'XB00000017', 'LS00000005', 495000)
insert into Sach values ('MS00000058', N'Nói thế nào để được chào đón, làm thế nào để được ghi nhận', N'Lê Văn Tề', 41, 1994, 'XB00000014', 'LS00000005', 498000)
insert into Sach values ('MS00000059', N'Cách khen, cách mắng, cách phạt con', N'Napoleon Hill', 6, 2013, 'XB00000009', 'LS00000008', 344000)
insert into Sach values ('MS00000060', N'Bạn đắt giá bao nhiêu', N'Vãn Tình', 34, 2018, 'XB00000007', 'LS00000005', 354000)
insert into Sach values ('MS00000061', N'Không bao giờ là thất bại, tất cả là thử thách', N'Vãn Tình', 11, 2000, 'XB00000016', 'LS00000001', 315000)
insert into Sach values ('MS00000062', N'Đắc nhân tâm', N'Camilo Cruz', 17, 2001, 'XB00000040', 'LS00000004', 145000)
insert into Sach values ('MS00000063', N'Nghĩ giàu làm giàu', N'Tony Buổi sáng', 19, 2000, 'XB00000048', 'LS00000008', 64000)
insert into Sach values ('MS00000064', N'Thuật hồi xuân cho nam nữ', N'Michael Ellsberg', 17, 1995, 'XB00000011', 'LS00000008', 183000)
insert into Sach values ('MS00000065', N'Tử huyệt cảm xúc', N'Roger E. A. Farmer', 31, 2014, 'XB00000038', 'LS00000007', 479000)
insert into Sach values ('MS00000066', N'Cảm xúc - kẻ thù số 1 của thành công', N'Vãn Tình', 14, 2009, 'XB00000022', 'LS00000002', 116000)
