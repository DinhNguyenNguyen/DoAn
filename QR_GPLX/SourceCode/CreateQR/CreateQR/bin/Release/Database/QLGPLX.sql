
USE [QL_GPLX]
GO
/****** Object:  Table [dbo].[Infomation]    Script Date: 09/08/2021 21:56:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Infomation](
	[maso] [varchar](12) NOT NULL,
	[hoten] [nvarchar](50) NOT NULL,
	[ngaysinh] [varchar](10) NOT NULL,
	[quequan] [nvarchar](100) NOT NULL,
	[loaibang] [nvarchar](50) NOT NULL,
	[ngaycap] [varchar](10) NOT NULL,
	[thoihan] [nvarchar](50) NOT NULL,
	[hethan] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[maso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[P_Infor]    Script Date: 09/08/2021 21:56:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[P_Infor]
as
begin
		select ROW_NUMBER() OVER (ORDER BY maso) as [Số Thứ Tự], maso as [Mã số], hoten as [Họ tên],
		ngaysinh as [Ngày sinh], quequan as [Quê quán], loaibang as [Loại bằng], ngaycap as [Ngày cấp],
		 thoihan as[Thời hạn],hethan as [Hết hạn]
		from Infomation
end
GO
