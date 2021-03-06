USE [{DATABASE_NAME}]
GO
/****** Object:  Table [dbo].[Favorites]    Script Date: 12/10/2012 22:16:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Favorites](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Protocol] [nvarchar](5) NOT NULL,
	[Port] [int] NOT NULL,
	[ServerName] [nvarchar](255) NOT NULL,
	[NewWindow] [bit] NOT NULL,
	[DesktopShare] [nvarchar](255) NULL,
	[Notes] [nvarchar](500) NULL,
	[ProtocolProperties] [xml] NULL,
	[IconData] [varbinary](max) NULL,
 CONSTRAINT [PK_Favorites] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Only to simplyfy relations, otherwise redundant because of Guid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Favorites', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'XML serialized properties depending on selected protocol. This allowes create customized features without changing database schema independent on selected protol' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Favorites', @level2type=N'COLUMN',@level2name=N'ProtocolProperties'
GO
