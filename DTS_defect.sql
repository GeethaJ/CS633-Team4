USE [AAD]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DTS_defect]') AND type in (N'U'))
DROP TABLE [dbo].[DTS_defect]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DTS_defect](
    [defect_id] int NOT NULL,
	[defect_title] [nvarchar](50) NOT NULL,
	[description] [nvarchar](500) NULL,
	[date_created] datetime NOT NULL,
	[reported_by] nvarchar(30) NULL,
	[component_name] [nvarchar](30) NULL,
	[status] nvarchar(10) NOT NULL,
	[priority] nvarchar(10) NOT NULL,
	[assigned_to] nvarchar(30) NULL,
	[tester_name] nvarchar(30) NULL,
 CONSTRAINT DTS_defect_id PRIMARY KEY CLUSTERED 
(
	[defect_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY],
) ON [PRIMARY]
GO

GRANT INSERT, SELECT, UPDATE, DELETE ON [DTS_defect] TO WEBWISE
GO
