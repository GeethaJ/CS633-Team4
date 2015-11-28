USE [AAD]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DTS_defect_comment]') AND type in (N'U'))
DROP TABLE [dbo].[DTS_defect_comment]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DTS_defect_comment](
    [defect_id] int NOT NULL,
	[date_created] datetime NOT NULL,
	[comment] [nvarchar](500) NULL,
 CONSTRAINT DTS_defectID_DateCreated PRIMARY KEY CLUSTERED 
(
	[defect_id] ASC,
	[date_created] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY],
) ON [PRIMARY]
GO

GRANT INSERT, SELECT, UPDATE, DELETE ON [DTS_defect_comment] TO WEBWISE
GO
