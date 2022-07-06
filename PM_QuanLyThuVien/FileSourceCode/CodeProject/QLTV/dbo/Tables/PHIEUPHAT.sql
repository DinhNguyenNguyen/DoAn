﻿CREATE TABLE [dbo].[PHIEUPHAT] (
    [MAPHAT]       VARCHAR (10) NOT NULL,
    [MAPM]         VARCHAR (10) NOT NULL,
    [NGAYPHAT]     DATE         NOT NULL,
    [TONGTIENPHAT] INT          NOT NULL,
    CONSTRAINT [PK_PHIEUPHAT] PRIMARY KEY CLUSTERED ([MAPHAT] ASC),
    CONSTRAINT [FK_PHIEUPHAT_PHIEUPHAT] FOREIGN KEY ([MAPM]) REFERENCES [dbo].[PHIEUMUON] ([MAPM]) ON DELETE CASCADE ON UPDATE CASCADE
);

