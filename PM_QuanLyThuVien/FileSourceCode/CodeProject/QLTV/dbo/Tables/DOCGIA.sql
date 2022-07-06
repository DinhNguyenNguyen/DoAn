﻿CREATE TABLE [dbo].[DOCGIA] (
    [MADG]     VARCHAR (10)   NOT NULL,
    [HOTEN]    NVARCHAR (50)  NULL,
    [NAMSINH]  DATE           NULL,
    [DIACHI]   NVARCHAR (100) NULL,
    [SDT]      VARCHAR (10)   NULL,
    [EMAIL]    VARCHAR (50)   NULL,
    [GIOITINH] NVARCHAR (10)  NOT NULL,
    CONSTRAINT [PK_DOCGIA] PRIMARY KEY CLUSTERED ([MADG] ASC)
);

