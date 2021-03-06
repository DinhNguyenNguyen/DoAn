create database QuanLyBaoChi
go



use QuanLyBaoChi
go

create table TaiKhoan
(
	ID_TK int identity(1,1) not null primary key,
	Username varchar(50) not null ,
	PassWord varchar(50) not null,
	Display nvarchar(50) not null,
	status int not null,
)
go

insert into TaiKhoan(Username,PassWord,Display,status)
values ('admin', 'admin','Admin',0)
go
insert into TaiKhoan(Username,PassWord,Display,status)
values ('user1', 'user1','User',1)
go
insert into TaiKhoan(Username,PassWord,Display,status)
values ('user2', 'user1','User',1)
go

create Proc USP_DangNhap
	@user varchar(50), @pass varchar(50), @status int
as
begin
	select * from DangNhap where Username= @user and PassWord= @pass and status= @status
end
go

/*==============================================================*/
/* 1 Table: THELOAI                                               */
/*==============================================================*/
create table THELOAI (
   ID_THELOAI       int    identity(1,1)                 not null ,
   TENTHELOAI           nvarchar(100)         null,
   DIENGIAI_TL          nvarchar(100)         null,
   constraint PK_THELOAI primary key (ID_THELOAI)
)
go

/*==============================================================*/
/* 2 Table: PHATHANH                                              */
/*==============================================================*/
create table PHATHANH (
   ID_PHATHANH          int          identity(1,1)        not null,
   THOIGIANPH           nvarchar(100)             null,
   DIENGIAI_PH          nvarchar(100)         null,
   constraint PK_PHATHANH primary key (ID_PHATHANH)
)
go



/*==============================================================*/
/* 4 Table: BAOTAPCHI                                             */
/*==============================================================*/
create table BAOTAPCHI (
   ID_TAPCHI            int       identity(1,1)           not null ,
   TENTAPCHI            nvarchar(100)         null,
   DIACHITC             nvarchar(100)         null,
   ID_PHATHANH          int                  null,
   EMAIL_TC             nvarchar(100)         null,
   SDT_TC               nvarchar(11)         null,
   constraint PK_BAOTAPCHI primary key (ID_TAPCHI)
)
go


/*==============================================================*/
/* 5 Table: NHABAO                                                */
/*==============================================================*/
create table NHABAO (
   ID_NHABAO            int   identity(1,1)               not null,
   TENNHABAO            nvarchar(100)         null,
   BUTHIEU              nvarchar(100)         null,
   SDT_NB               nvarchar(11)            null,
   EMAIL_NB             varchar(100)             null,
   DIACHI_NB            nvarchar(100)            null,
   constraint PK_NHABAO primary key (ID_NHABAO)
)
go




/*==============================================================*/
/* 6 Table: BAIVIET                                               */
/*==============================================================*/
create table BAIVIET (
   ID_BAIVIET           int     identity(1,1)             not null  ,
   TENBAIVIET           nvarchar(100)         null,
   NOIDUNG_BV           nvarchar(100)         null,
   NGAYVIET             date     null,
   ID_NHABAO            int                  null,
   constraint PK_BAIVIET primary key (ID_BAIVIET)
)
go


/*==============================================================*/
/* 8 Table: BAIBAO                                                */
/*==============================================================*/
create table BAIBAO (
   ID_BAIBAO            int     identity(1,1)             not null ,
   TENBAIBAO            nvarchar(100)         null,
   NOIDUNGCHINH         nvarchar(100)         null,
   NGAYDANG             date			null,
   ID_TAPCHI            int                  null,
   ID_THELOAI           int                  null,
   ID_NHABAO            int                  null,
   ID_BAIVIET           int                  null,
   constraint PK_BAIBAO primary key (ID_BAIBAO)
)
go

/*==============================================================*/
/* 8 Table: BAIDANG                                               */
/*==============================================================*/
create table BAIDANG (
   ID_BAIBAO            int                not  null ,
   ID_TAPCHI            int                 not null,
   VITRITRANG           int                  null
)
go

--rang buoc FK


alter table BAIBAO
   add constraint FK_BaiBao_BaoTapChi foreign key (ID_TAPCHI)
      references BAOTAPCHI (ID_TAPCHI)
         on update cascade on delete cascade
go

alter table BAIBAO
   add constraint FK_BaiBao_NhaBao foreign key (ID_NHABAO)
      references NHABAO (ID_NHABAO)
         on update cascade on delete cascade
go

alter table BAIBAO
   add constraint FK_BaiBao_BaiViet foreign key (ID_BAIVIET)
      references BAIVIET (ID_BAIVIET)
         on update cascade on delete cascade
go

alter table BAIBAO
   add constraint FK_BaiBao_TheLoai foreign key (ID_THELOAI)
      references THELOAI (ID_THELOAI)
         on update cascade on delete cascade
go


--Bai Dang
alter table BAIDANG
   add constraint FK_BaiDang_BaiBao foreign key (ID_BAIBAO)
      references BAIBAO (ID_BAIBAO)
         on update cascade on delete cascade
go

alter table BAIDANG -- 
   add constraint FK_BaiDang_BaoTC foreign key (ID_TAPCHI)
      references BAOTAPCHI (ID_TAPCHI)
        
go

------------
alter table BAIVIET 
   add constraint FK_BaiViet_NhaBao foreign key (ID_NHABAO)
      references NHABAO (ID_NHABAO)      
go

alter table BAOTAPCHI
   add constraint FK_BaoTC_PH foreign key (ID_PHATHANH)
      references PHATHANH (ID_PHATHANH)
         on update cascade on delete cascade
go




/*===============================================================================*/
/*								ADD DATABASE									*/
/*===============================================================================*/
select convert(varchar, getdate(), 103)
go


-- Thêm thể loại
insert into THELOAI (TENTHELOAI,DIENGIAI_TL)
values (N'Pháp Luật',N'Tổng hợp các bài báo về pháp luật')
go
insert into THELOAI (TENTHELOAI,DIENGIAI_TL)
values (N'Đời Sống',N'Tổng hợp các bài báo về đời sống')
go
insert into THELOAI (TENTHELOAI,DIENGIAI_TL)
values (N'Âm Nhạc',N'Tổng hợp các bài báo về âm nhạc')
go
insert into THELOAI (TENTHELOAI,DIENGIAI_TL)
values (N'Thể Thao',N'Tổng hợp các bài báo về thể thao')
go
insert into THELOAI (TENTHELOAI,DIENGIAI_TL)
values (N'Giải Trí',N'Tổng hợp các bài báo về giải trí')
go

--thêm phát hành
insert into PHATHANH(THOIGIANPH, DIENGIAI_PH)
values (N'Chủ Nhật',N'Báo tạp chí được phát hành vào ngày chủ nhật hàng tuần')
go
insert into PHATHANH(THOIGIANPH, DIENGIAI_PH)
values (N'Thứ Hai',N'Báo tạp chí được phát hành vào ngày thứ hai hàng tuần')
go
insert into PHATHANH(THOIGIANPH, DIENGIAI_PH)
values (N'Thứ Ba',N'Báo tạp chí được phát hành vào ngày thứ ba hàng tuần')
go
insert into PHATHANH(THOIGIANPH, DIENGIAI_PH)
values (N'Thứ Tư',N'Báo tạp chí được phát hành vào ngày thứ tư hàng tuần')
go
insert into PHATHANH(THOIGIANPH, DIENGIAI_PH)
values (N'Thứ Năm',N'Báo tạp chí được phát hành vào ngày thứ năm hàng tuần')
go
insert into PHATHANH(THOIGIANPH, DIENGIAI_PH)
values (N'Thứ Sáu',N'Báo tạp chí được phát hành vào ngày thứ sáu hàng tuần')
go
insert into PHATHANH(THOIGIANPH, DIENGIAI_PH)
values (N'Thứ Bảy',N'Báo tạp chí được phát hành vào ngày thứ bảy hàng tuần')
go


--Báo Tạp Chí
insert into BAOTAPCHI(TENTAPCHI,DIACHITC,EMAIL_TC,SDT_TC,ID_PHATHANH)
values (N'Báo Pháp Luật',N'Hà Nội',N'phapluat@email.com',N'012235678',1)
go
insert into BAOTAPCHI(TENTAPCHI,DIACHITC,EMAIL_TC,SDT_TC,ID_PHATHANH)
values (N'Báo Tuổi Trẻ',N'Hồ Chí Minh',N'tuoitre@email.com',N'0988765443',3)
go
insert into BAOTAPCHI(TENTAPCHI,DIACHITC,EMAIL_TC,SDT_TC,ID_PHATHANH)
values (N'Báo Lao Động',N'Hải Phòng',N'laodong@email.com',N'0432356276',4)
go
insert into BAOTAPCHI(TENTAPCHI,DIACHITC,EMAIL_TC,SDT_TC,ID_PHATHANH)
values (N'Báo Đời Sống',N'Hà Nội',N'doisong@email.com',N'0345836731',2)
go
insert into BAOTAPCHI(TENTAPCHI,DIACHITC,EMAIL_TC,SDT_TC,ID_PHATHANH)
values (N'Báo Giáo Dục',N'Cần Thơ',N'giaoduc@email.com',N'0874275273',7)
go


--nhà Báo
insert into NHABAO (TENNHABAO,BUTHIEU,SDT_NB,EMAIL_NB,DIACHI_NB)
values (N'Nguyễn Văn A',N'A Chính Trực','01234567890','nhabao@gmail.com',N'Sóc Trăng')
go
insert into NHABAO (TENNHABAO,BUTHIEU,SDT_NB,EMAIL_NB,DIACHI_NB)
values (N'Nguyễn Văn B',N'B Lừa Dối','01234567890','nhabao@gmail.com',N'An Giang')
go
insert into NHABAO (TENNHABAO,BUTHIEU,SDT_NB,EMAIL_NB,DIACHI_NB)
values (N'Nguyễn Văn C',N'C Mạnh Mẽ','01234567890','nhabao@gmail.com',N'Cà Mau')
go
insert into NHABAO (TENNHABAO,BUTHIEU,SDT_NB,EMAIL_NB,DIACHI_NB)
values (N'Nguyễn Văn D',N'D Ôn Hoà','01234567890','nhabao@gmail.com',N'Kiên Giang')
go
insert into NHABAO (TENNHABAO,BUTHIEU,SDT_NB,EMAIL_NB,DIACHI_NB)
values (N'Nguyễn Văn E',N'E Xinh Đẹp','01234567890','nhabao@gmail.com',N'Hà Nội')
go

--bai viet
	
insert into BAIVIET(TENBAIVIET,NOIDUNG_BV,NGAYVIET,ID_NHABAO)
values(N'chào buổi sáng',N'123','1/2/2021' ,2 )
go
insert into BAIVIET(TENBAIVIET,NOIDUNG_BV,NGAYVIET,ID_NHABAO)
values(N'chào buổi trưa',N'235','3/4/2011' ,4)
go
insert into BAIVIET(TENBAIVIET,NOIDUNG_BV,NGAYVIET,ID_NHABAO)
values(N'chào buổi chiều',N'345','4/6/2020' ,1)
go
insert into BAIVIET(TENBAIVIET,NOIDUNG_BV,NGAYVIET,ID_NHABAO)
values(N'chào buổi tối',N'6456','7/8/2032' ,5)
go
insert into BAIVIET(TENBAIVIET,NOIDUNG_BV,NGAYVIET,ID_NHABAO)
values(N'chào buổi sáng mai',N'467475', '3/6/2019',3)
go


select convert(varchar, getdate(), 103)
go


--bai bao
insert into BAIBAO(TENBAIBAO, NOIDUNGCHINH,NGAYDANG,ID_TAPCHI,ID_THELOAI, ID_NHABAO, ID_BAIVIET)
values (N'Miền kí ức',N'Kí ức  của tuổi trẻ','3/05/2021',4,3,4,2)
go
insert into BAIBAO(TENBAIBAO, NOIDUNGCHINH,NGAYDANG,ID_TAPCHI,ID_THELOAI, ID_NHABAO, ID_BAIVIET)
values (N'Miền đất mới',N'đất của tuổi trẻ','4/15/2020',2,2,5,1)
go
insert into BAIBAO(TENBAIBAO, NOIDUNGCHINH,NGAYDANG,ID_TAPCHI,ID_THELOAI, ID_NHABAO, ID_BAIVIET)
values (N'Miền kí ức',N'Kí ức  của tuổi trẻ','2/12/2020',3,2,2,4)
go
insert into BAIBAO(TENBAIBAO, NOIDUNGCHINH,NGAYDANG,ID_TAPCHI,ID_THELOAI, ID_NHABAO, ID_BAIVIET)
values (N'Miền kí ức',N'Kí ức  của tuổi trẻ','6/12/2020',5,2,4,1)
go
insert into BAIBAO(TENBAIBAO, NOIDUNGCHINH,NGAYDANG,ID_TAPCHI,ID_THELOAI, ID_NHABAO, ID_BAIVIET)
values (N'Miền kí ức',N'Kí ức  của tuổi trẻ','4/12/2020',3,4,5,1)
go

--bài đăng
insert into BAIDANG
values (1,2,7)
go
insert into BAIDANG
values (2,5,8)
go
insert into BAIDANG
values (9,2,20)
go
insert into BAIDANG
values (10,5,10)
go
insert into BAIDANG
values (11,4,9)
go


/*===============================================================================*/
/*										PROC									*/
/*===============================================================================*/

--Load Thể Loại
create proc USP_LoadTheLoai
as 
begin
	select ID_THELOAI as [ID Thể Loại], TENTHELOAI as[Tên Thể Loại], DIENGIAI_TL as[Mô Tả]
	from THELOAI
end
go

exec USP_LoadTheLoai
go

--Load Phát Hành
create proc USP_LoadPhatHanh
as
begin
	select ID_PHATHANH as [ID Phát Hành], THOIGIANPH as[Thời gian phát hành trong tuần], 
			DIENGIAI_PH as[Mô tả phát hành]
	from PHATHANH
end
go

exec USP_LoadPhatHanh
go


--load Báo Tạp Chí
create proc USP_LoadTapChi
as
begin
	select ID_TAPCHI as[ID Tạp Chí], TENTAPCHI as[Tên Tạp Chí], DIACHITC as[Địa Chỉ],
			ph.THOIGIANPH as[Thời Gian Phát Hành], EMAIL_TC as[Email], SDT_TC as [Số Điện Thoại]
	from BAOTAPCHI as btc, PHATHANH as ph
	where btc.ID_PHATHANH = ph.ID_PHATHANH
end
go

exec USP_LoadTapChi
go

--Load  Nhà Báo
create proc USP_LoadNhaBao
as
begin
	select  ID_NHABAO as[ID Nhà Báo], TENNHABAO as[Tên Nhà Báo], BUTHIEU as[Bút Hiệu], 
			SDT_NB as[Số Điện Thoại], EMAIL_NB as[Email], DIACHI_NB as [Địa Chỉ]
	from NHABAO as nb
	
end
go

exec USP_LoadNhaBao
go

--Load Quyền


--Load Bài Báo

create proc USP_LoadBaiBao
as
begin	
	select	ID_BAIBAO as[ID Bài Báo], TENBAIBAO as[Tên Bài Báo], NOIDUNGCHINH as[Nội Dung Chính],
			NGAYDANG as[Ngày Đăng Bài], btc.TENTAPCHI as[Báo Tạp Chí], tl.TENTHELOAI as[Thể Loại],
			nb.BUTHIEU as[Bút Hiệu], bv.ID_BAIVIET as[ID Bài Viết]
	from BAOTAPCHI as btc, THELOAI as tl, NHABAO as nb, BAIVIET as bv, BAIBAO as bb
	where btc.ID_TAPCHI= bb.ID_TAPCHI
			and tl.ID_THELOAI= bb.ID_THELOAI
			and nb.ID_NHABAO= bb.ID_NHABAO
			and bv.ID_BAIVIET=bb.ID_BAIVIET
end
go

exec USP_LoadBaiBao
go

--Load Bài Viết
create proc USP_LoadBaiViet
as
begin
	select ID_BAIVIET as[ID Bài Viết], TENBAIVIET as[Tên Bài Viết], NOIDUNG_BV as[Nội Dung Chính], 
	NGAYVIET as[Ngày Viết Bài], nb.BUTHIEU as[Tác Giả]
	from BAIVIET as bv, NHABAO as nb
	where bv.ID_BAIVIET= nb.ID_NHABAO
end
go

exec USP_LoadBaiViet
go


create proc USP_LoadBaiDang
as
begin
	select  bb.TENBAIBAO as [Tên Bài Báo],btc.TENTAPCHI as[Tên Tạp Chí],bd.VITRITRANG as[Vị Trí Trang]
	from BAOTAPCHI as btc, BAIBAO as bb, BAIDANG as bd
	where bb.ID_BAIBAO= bd.ID_BAIBAO
		and btc.ID_TAPCHI= bd.ID_TAPCHI
end
go

create proc USP_LoadMain
as
begin	
	select	ROW_NUMBER() OVER (ORDER BY ID_BAIBAO) as [Số Thứ Tự], TENBAIBAO as[Tên Bài Báo], NGAYDANG as[Ngày Đăng Bài],
			btc.TENTAPCHI as[Báo Tạp Chí], tl.TENTHELOAI as[Thể Loại], nb.BUTHIEU as[Bút Hiệu]
	from BAOTAPCHI as btc, THELOAI as tl, NHABAO as nb, BAIBAO as bb
	where		btc.ID_TAPCHI= bb.ID_TAPCHI
			and tl.ID_THELOAI= bb.ID_THELOAI
			and nb.ID_NHABAO= bb.ID_NHABAO
			
end
go	


--chuyển
CREATE FUNCTION FuncConvert ( @strInput NVARCHAR(4000) ) RETURNS NVARCHAR(4000) AS BEGIN IF @strInput IS NULL RETURN @strInput IF @strInput = '' RETURN @strInput DECLARE @RT NVARCHAR(4000) DECLARE @SIGN_CHARS NCHAR(136) DECLARE @UNSIGN_CHARS NCHAR (136) SET @SIGN_CHARS = N'ăâđêôơưàảãạáằẳẵặắầẩẫậấèẻẽẹéềểễệế ìỉĩịíòỏõọóồổỗộốờởỡợớùủũụúừửữựứỳỷỹỵý ĂÂĐÊÔƠƯÀẢÃẠÁẰẲẴẶẮẦẨẪẬẤÈẺẼẸÉỀỂỄỆẾÌỈĨỊÍ ÒỎÕỌÓỒỔỖỘỐỜỞỠỢỚÙỦŨỤÚỪỬỮỰỨỲỶỸỴÝ' +NCHAR(272)+ NCHAR(208) SET @UNSIGN_CHARS = N'aadeoouaaaaaaaaaaaaaaaeeeeeeeeee iiiiiooooooooooooooouuuuuuuuuuyyyyy AADEOOUAAAAAAAAAAAAAAAEEEEEEEEEEIIIII OOOOOOOOOOOOOOOUUUUUUUUUUYYYYYDD' DECLARE @COUNTER int DECLARE @COUNTER1 int SET @COUNTER = 1 WHILE (@COUNTER <=LEN(@strInput)) BEGIN SET @COUNTER1 = 1 WHILE (@COUNTER1 <=LEN(@SIGN_CHARS)+1) BEGIN IF UNICODE(SUBSTRING(@SIGN_CHARS, @COUNTER1,1)) = UNICODE(SUBSTRING(@strInput,@COUNTER ,1) ) BEGIN IF @COUNTER=1 SET @strInput = SUBSTRING(@UNSIGN_CHARS, @COUNTER1,1) + SUBSTRING(@strInput, @COUNTER+1,LEN(@strInput)-1) ELSE SET @strInput = SUBSTRING(@strInput, 1, @COUNTER-1) +SUBSTRING(@UNSIGN_CHARS, @COUNTER1,1) + SUBSTRING(@strInput, @COUNTER+1,LEN(@strInput)- @COUNTER) BREAK END SET @COUNTER1 = @COUNTER1 +1 END SET @COUNTER = @COUNTER +1 END SET @strInput = replace(@strInput,' ','-') RETURN @strInput END
go



create proc USP_LoadRP
as
begin	
	select	ID_BAIBAO , TENBAIBAO , NOIDUNGCHINH ,NGAYDANG , btc.TENTAPCHI , tl.TENTHELOAI ,
			nb.BUTHIEU, bv.ID_BAIVIET	
			from BAOTAPCHI as btc, THELOAI as tl, NHABAO as nb, BAIVIET as bv, BAIBAO as bb
	where btc.ID_TAPCHI= bb.ID_TAPCHI
			and tl.ID_THELOAI= bb.ID_THELOAI
			and nb.ID_NHABAO= bb.ID_NHABAO
			and bv.ID_BAIVIET=bb.ID_BAIVIET
end
go

create proc USP_RPNhaBao
as
begin
	select ROW_NUMBER() OVER (ORDER BY nb.TENNHABAO) as [STT] ,nb.TENNHABAO as [Tên Nhà Báo], 
	count(bb.TENBAIBAO)  as [Số Lượng]
	from BAIBAO as bb, NHABAO as nb
	where nb.ID_NHABAO= bb.ID_NHABAO
	group by(nb.TENNHABAO)
end
go

create proc USP_RP_TheLoai
as
begin
	select ROW_NUMBER() over (order by tl.tentheloai) as [STT],tl.TENTHELOAI as [Tên Thể Loại], 
	COUNT(bb.TENBAIBAO) as [Số Lượng]
	from BAIBAO bb, THELOAI tl
	where bb.ID_BAIBAO= tl.ID_THELOAI
	group by (tl.TENTHELOAI)
end
go

select * from BAOTAPCHI
go

create proc USP_PR_PhatHanh
as
begin
	select ROW_NUMBER() over (order by ph.THOIGIANPH) as [STT], ph.THOIGIANPH as [Thời Gian] ,COUNT(btc.ID_PHATHANH) as [Số Lượng]
	from PHATHANH ph, BAOTAPCHI btc, BAIBAO  bb
	where ph.ID_PHATHANH=btc.ID_PHATHANH and btc.ID_PHATHANH= bb.ID_TAPCHI
	group by (ph.THOIGIANPH) 
end
go

exec  USP_RP_NB_BB
go

select convert(varchar, getdate(), 103)
go

create proc USP_RP_NB_BB
as
begin
	select	ROW_NUMBER() over (order by TENNHABAO) AS [Số thứ tự],nb.TENNHABAO as [Tên Nhà Báo] , TENBAIBAO as [Tên Bài Báo] ,NGAYDANG as[Ngày Đăng] , btc.TENTAPCHI as[Tên Tạp Chí] , tl.TENTHELOAI  as[Tên Thể Loại]
	from BAOTAPCHI as btc, THELOAI as tl, NHABAO as nb, BAIVIET as bv, BAIBAO as bb
	where btc.ID_TAPCHI= bb.ID_TAPCHI and tl.ID_THELOAI= bb.ID_THELOAI and nb.ID_NHABAO= bb.ID_NHABAO and bv.ID_BAIVIET=bb.ID_BAIVIET 
	
	
end
go
