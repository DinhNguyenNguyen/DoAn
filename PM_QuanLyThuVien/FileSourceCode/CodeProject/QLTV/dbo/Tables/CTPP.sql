CREATE TABLE [dbo].[CTPP] (
    [MAPHAT]    VARCHAR (10)  NOT NULL,
    [MASACH]    VARCHAR (10)  NOT NULL,
    [LYDOPHAT]  NVARCHAR (50) NOT NULL,
    [SOLUONG]   INT           NOT NULL,
    [DONVITINH] NVARCHAR (10) NULL,
    [TIEN]      INT           NOT NULL,
    CONSTRAINT [FK_CTPP_PHIEUPHAT] FOREIGN KEY ([MAPHAT]) REFERENCES [dbo].[PHIEUPHAT] ([MAPHAT]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_CTPP_SACH] FOREIGN KEY ([MASACH]) REFERENCES [dbo].[SACH] ([MASACH]) ON DELETE CASCADE ON UPDATE CASCADE
);

