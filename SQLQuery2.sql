USE [Stage]
GO

/****** Object:  Table [aba].[Estado]    Script Date: 01/21/2019 22:20:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [aba].[Unidad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descrip] [varchar](255) NOT NULL,
 CONSTRAINT [PK_aba.Unidad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE `db_gold`.`produccion` 
ADD COLUMN `concesionid` INT NULL AFTER `organizacionid`;

