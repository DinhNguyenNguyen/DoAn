CREATE TABLE [dbo].[CTPM] (
    [MAPM]      VARCHAR (10)  NOT NULL,
    [MASACH]    VARCHAR (10)  NOT NULL,
    [HENTRA]    DATE          NULL,
    [SOLUONG]   INT           NULL,
    [TRANGTHAI] NVARCHAR (20) NOT NULL,
    CONSTRAINT [PK_CTPM] PRIMARY KEY CLUSTERED ([MAPM] ASC, [MASACH] ASC),
    CONSTRAINT [FK_CTPM_PHIEUMUON] FOREIGN KEY ([MAPM]) REFERENCES [dbo].[PHIEUMUON] ([MAPM]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_CTPM_SACH] FOREIGN KEY ([MASACH]) REFERENCES [dbo].[SACH] ([MASACH]) ON DELETE CASCADE ON UPDATE CASCADE
);

