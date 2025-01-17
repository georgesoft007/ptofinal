USE [master]
GO
/****** Object:  Database [HuamangaPaniora_web]    Script Date: 05/30/2019 16:46:14 ******/
CREATE DATABASE [HuamangaPaniora_web] ON  PRIMARY 
( NAME = N'HuamangaPaniora_web', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\HuamangaPaniora_web.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HuamangaPaniora_web_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\HuamangaPaniora_web_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HuamangaPaniora_web] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HuamangaPaniora_web].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HuamangaPaniora_web] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [HuamangaPaniora_web] SET ANSI_NULLS OFF
GO
ALTER DATABASE [HuamangaPaniora_web] SET ANSI_PADDING OFF
GO
ALTER DATABASE [HuamangaPaniora_web] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [HuamangaPaniora_web] SET ARITHABORT OFF
GO
ALTER DATABASE [HuamangaPaniora_web] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [HuamangaPaniora_web] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [HuamangaPaniora_web] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [HuamangaPaniora_web] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [HuamangaPaniora_web] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [HuamangaPaniora_web] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [HuamangaPaniora_web] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [HuamangaPaniora_web] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [HuamangaPaniora_web] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [HuamangaPaniora_web] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [HuamangaPaniora_web] SET  ENABLE_BROKER
GO
ALTER DATABASE [HuamangaPaniora_web] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [HuamangaPaniora_web] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [HuamangaPaniora_web] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [HuamangaPaniora_web] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [HuamangaPaniora_web] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [HuamangaPaniora_web] SET READ_COMMITTED_SNAPSHOT ON
GO
ALTER DATABASE [HuamangaPaniora_web] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [HuamangaPaniora_web] SET  READ_WRITE
GO
ALTER DATABASE [HuamangaPaniora_web] SET RECOVERY FULL
GO
ALTER DATABASE [HuamangaPaniora_web] SET  MULTI_USER
GO
ALTER DATABASE [HuamangaPaniora_web] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [HuamangaPaniora_web] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'HuamangaPaniora_web', N'ON'
GO
USE [HuamangaPaniora_web]
GO
/****** Object:  Table [dbo].[Rols]    Script Date: 05/30/2019 16:46:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rols](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](max) NULL,
	[DiaDeCreacion] [datetime] NOT NULL,
	[UltimaDiaDeEdicion] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Rols] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 05/30/2019 16:46:15 ******/
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
/****** Object:  Table [dbo].[Usuarios]    Script Date: 05/30/2019 16:46:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NombreUsuario] [nvarchar](max) NULL,
	[Apellidos] [nvarchar](max) NULL,
	[Nombres] [nvarchar](max) NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[Telefono] [nvarchar](max) NULL,
	[EstadoCivil] [nvarchar](max) NULL,
	[Estado] [bit] NOT NULL,
	[RolId] [int] NOT NULL,
	[DiaDeCreacion] [datetime] NOT NULL,
	[UltimaDiaDeEdicion] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Usuarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RolId] ON [dbo].[Usuarios] 
(
	[RolId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[UsuariosPagedList]    Script Date: 05/30/2019 16:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UsuariosPagedList]
@startRow int,
@endRow int
AS
BEGIN
WITH CustomerResult AS
(
SELECT 
U.Id,
U.NombreUsuario,
U.Apellidos, 
U.Nombres,
U.FechaNacimiento,
U.Telefono,
U.EstadoCivil,
U.Estado,
R.descripcion
,ROW_NUMBER() OVER (ORDER BY U.Id) AS RowNum
FROM dbo.Usuarios U
Inner join dbo.Rols R ON U.RolId=R.Id
)
SELECT 
Id
,NombreUsuario
,Apellidos
,Nombres
,FechaNacimiento
,Telefono
,EstadoCivil
,Estado
,descripcion
FROM CustomerResult
WHERE RowNum BETWEEN @startRow AND @endRow;
END
GO
/****** Object:  ForeignKey [FK_dbo.Usuarios_dbo.Rols_RolId]    Script Date: 05/30/2019 16:46:15 ******/
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Usuarios_dbo.Rols_RolId] FOREIGN KEY([RolId])
REFERENCES [dbo].[Rols] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_dbo.Usuarios_dbo.Rols_RolId]
GO
