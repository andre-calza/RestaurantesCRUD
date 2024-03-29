USE [TesteCRUD]
GO
/****** Object:  User [usTesteCRUD]    Script Date: 01/06/2018 13:43:19 ******/
CREATE USER [usTesteCRUD] FOR LOGIN [usTesteCRUD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 01/06/2018 13:43:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Restaurantes]    Script Date: 01/06/2018 13:43:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restaurantes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Restaurantes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pratoes]    Script Date: 01/06/2018 13:43:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pratoes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](max) NOT NULL,
	[Preco] [decimal](18, 2) NOT NULL,
	[RestauranteID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Pratoes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_dbo.Pratoes_dbo.Restaurantes_RestauranteID]    Script Date: 01/06/2018 13:43:19 ******/
ALTER TABLE [dbo].[Pratoes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Pratoes_dbo.Restaurantes_RestauranteID] FOREIGN KEY([RestauranteID])
REFERENCES [dbo].[Restaurantes] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pratoes] CHECK CONSTRAINT [FK_dbo.Pratoes_dbo.Restaurantes_RestauranteID]
GO
