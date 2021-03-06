CREATE TABLE [dbo].[SACH] (
    [MASACH]  VARCHAR (10)   NOT NULL,
    [TENSACH] NVARCHAR (100) NULL,
    [TACGIA]  NVARCHAR (100) NULL,
    [SOLUONG] INT            NOT NULL,
    [NAMXB]   NUMERIC (4)    NULL,
    [MANXB]   VARCHAR (10)   NOT NULL,
    [MALOAI]  VARCHAR (10)   NULL,
    [GIATIEN] INT            NULL,
    CONSTRAINT [PK_SACH] PRIMARY KEY CLUSTERED ([MASACH] ASC),
    CONSTRAINT [FK_SACH_LOAISACH] FOREIGN KEY ([MALOAI]) REFERENCES [dbo].[LOAISACH] ([MALOAI]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_SACH_NXB] FOREIGN KEY ([MANXB]) REFERENCES [dbo].[NXB] ([MANXB]) ON DELETE CASCADE ON UPDATE CASCADE
);

