/****** This is the script to generate the basic fields for a table, more can be added as per requirement ******/
/****** Script Date: 11/2/2015 4:29:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TableName](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[DateAdded] [datetime] NOT NULL,
	[DateModified] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[TableName] ADD  CONSTRAINT [DF_TableName_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO

ALTER TABLE [dbo].[TableName] ADD  CONSTRAINT [DF_TableName_DateModified]  DEFAULT (getdate()) FOR [DateModified]
GO

ALTER TABLE [dbo].[TableName] ADD  CONSTRAINT [DF_TableName_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO

ALTER TABLE [dbo].[TableName] ADD  CONSTRAINT [DF_TableName_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO


