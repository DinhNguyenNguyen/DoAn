﻿CREATE TABLE [dbo].[DANGNHAP] (
    [STT]      INT          IDENTITY (1, 1) NOT NULL,
    [MATK]     VARCHAR (10) NOT NULL,
    [THOIGIAN] DATETIME     NOT NULL,
    CONSTRAINT [PK_DANGNHAP] PRIMARY KEY CLUSTERED ([STT] ASC),
    CONSTRAINT [FK_DN_TK] FOREIGN KEY ([MATK]) REFERENCES [dbo].[TAIKHOAN] ([MATK])
);
