﻿CREATE TABLE [dbo].[TAIKHOAN] (
    [MATK]    VARCHAR (10) NOT NULL,
    [TENTK]   VARCHAR (20) NULL,
    [MATKHAU] VARCHAR (32) NULL,
    [MANV]    VARCHAR (10) NOT NULL,
    [MACV]    VARCHAR (10) NOT NULL,
    CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED ([MATK] ASC, [MANV] ASC, [MACV] ASC),
    CONSTRAINT [FK_TAIKHOAN_CHUCVU] FOREIGN KEY ([MACV]) REFERENCES [dbo].[CHUCVU] ([MACV]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_TAIKHOAN_NHANVIEN] FOREIGN KEY ([MANV]) REFERENCES [dbo].[NHANVIEN] ([MANV]) ON DELETE CASCADE ON UPDATE CASCADE,
    UNIQUE NONCLUSTERED ([MATK] ASC)
);
