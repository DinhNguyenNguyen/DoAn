create database QL_GPLX
use QL_GPLX
go

create table Infomation
(
	maso varchar(12) primary key,
	hoten nvarchar(50) not null,
	ngaysinh VARCHAR(10) not null,
	quequan nvarchar(100) not null,
	loaibang nvarchar(50) not null,
	ngaycap VARCHAR(10) not null,
	thoihan nvarchar(50) not null,
	hethan VARCHAR(10)  null
)
 go
 
 insert into Infomation
 values('012375678123',N'Nguyễn đình nguyên', '08-10-2000', N'Sóc Trăng',N'Bằng A1','1-1-2020',N'Vô thời hạn', null)
 go
 
 
EXEC P_Infor
GO


create proc P_Infor
as
begin
		select ROW_NUMBER() OVER (ORDER BY maso) as [Số Thứ Tự], maso as [Mã số], hoten as [Họ tên],
		ngaysinh as [Ngày sinh], quequan as [Quê quán], loaibang as [Loại bằng], ngaycap as [Ngày cấp],
		 thoihan as[Thời hạn],hethan as [Hết hạn]
		from Infomation
end
go


 