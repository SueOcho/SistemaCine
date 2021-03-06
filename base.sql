USE [master]
GO
/****** Object:  Database [isil2021]    Script Date: 5/02/2021 23:16:12 ******/
CREATE DATABASE [isil2021]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'isil2021', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\isil2021.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'isil2021_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\isil2021_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [isil2021] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [isil2021].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [isil2021] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [isil2021] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [isil2021] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [isil2021] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [isil2021] SET ARITHABORT OFF 
GO
ALTER DATABASE [isil2021] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [isil2021] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [isil2021] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [isil2021] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [isil2021] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [isil2021] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [isil2021] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [isil2021] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [isil2021] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [isil2021] SET  ENABLE_BROKER 
GO
ALTER DATABASE [isil2021] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [isil2021] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [isil2021] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [isil2021] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [isil2021] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [isil2021] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [isil2021] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [isil2021] SET RECOVERY FULL 
GO
ALTER DATABASE [isil2021] SET  MULTI_USER 
GO
ALTER DATABASE [isil2021] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [isil2021] SET DB_CHAINING OFF 
GO
ALTER DATABASE [isil2021] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [isil2021] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [isil2021] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'isil2021', N'ON'
GO
ALTER DATABASE [isil2021] SET QUERY_STORE = OFF
GO
USE [isil2021]
GO
/****** Object:  User [Sue]    Script Date: 5/02/2021 23:16:12 ******/
CREATE USER [Sue] FOR LOGIN [Sue] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 5/02/2021 23:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[apellido] [varchar](30) NOT NULL,
	[correo] [varchar](30) NOT NULL,
	[telefono] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 5/02/2021 23:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](20) NOT NULL,
	[clave] [varchar](20) NOT NULL,
	[tipo] [varchar](20) NOT NULL,
	[estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cliente] ON 

INSERT [dbo].[cliente] ([id], [nombre], [apellido], [correo], [telefono]) VALUES (1, N'Paolin', N'Guerrerin', N'paolo1@fpf.edu.pe', N'55030304')
INSERT [dbo].[cliente] ([id], [nombre], [apellido], [correo], [telefono]) VALUES (3, N'Paolo', N'Guerrero', N'Eldepredador99@hotmail.com', N'948347458')
INSERT [dbo].[cliente] ([id], [nombre], [apellido], [correo], [telefono]) VALUES (6, N'Pizarro', N'dalo', N'sonia@hotmail.com', N'948347458')
INSERT [dbo].[cliente] ([id], [nombre], [apellido], [correo], [telefono]) VALUES (9, N'Paolo', N'Guerrero', N'xeeed@hotmail.com', N'948347458')
INSERT [dbo].[cliente] ([id], [nombre], [apellido], [correo], [telefono]) VALUES (10, N'Mario', N'garcia', N'dfahjsf@hotmai.com', N'312312')
INSERT [dbo].[cliente] ([id], [nombre], [apellido], [correo], [telefono]) VALUES (11, N'Paolo', N'Guerrero', N'Eldepredador9@hotmail.com', N'948347458')
INSERT [dbo].[cliente] ([id], [nombre], [apellido], [correo], [telefono]) VALUES (13, N'Juan', N'Guerrero', N'xd@hotmail.com', N'948347458')
SET IDENTITY_INSERT [dbo].[cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[usuario] ON 

INSERT [dbo].[usuario] ([id], [usuario], [clave], [tipo], [estado]) VALUES (1, N'maravilla', N'12345693939', N'usuario', 1)
INSERT [dbo].[usuario] ([id], [usuario], [clave], [tipo], [estado]) VALUES (2, N'mario', N'123', N'usuario', 1)
INSERT [dbo].[usuario] ([id], [usuario], [clave], [tipo], [estado]) VALUES (3, N'lu', N'123', N'usuario', 1)
INSERT [dbo].[usuario] ([id], [usuario], [clave], [tipo], [estado]) VALUES (4, N'Pepeee', N'12345693939', N'usuario', 1)
INSERT [dbo].[usuario] ([id], [usuario], [clave], [tipo], [estado]) VALUES (5, N'juan', N'12312312', N'usuario', 1)
SET IDENTITY_INSERT [dbo].[usuario] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__cliente__2A586E0BADCC23C6]    Script Date: 5/02/2021 23:16:12 ******/
ALTER TABLE [dbo].[cliente] ADD UNIQUE NONCLUSTERED 
(
	[correo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__usuario__9AFF8FC61DE9BEE1]    Script Date: 5/02/2021 23:16:12 ******/
ALTER TABLE [dbo].[usuario] ADD UNIQUE NONCLUSTERED 
(
	[usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[login]    Script Date: 5/02/2021 23:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[login](
@vusuario varchar(20),
@clave varchar(20)
)
as
begin
select count(*) from usuario where usuario=@vusuario and clave=@clave
end
GO
/****** Object:  StoredProcedure [dbo].[pa_insertar]    Script Date: 5/02/2021 23:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[pa_insertar](
@vusuario varchar(20),
@vclave varchar(20),
@vtipo varchar(20),
@vestado int
)
as
begin
INSERT INTO usuario(usuario,clave,tipo,estado) VALUES(@vusuario,@vclave,@vtipo,@vestado)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_listar]    Script Date: 5/02/2021 23:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_listar]
as
begin 
select * from cliente
end
GO
/****** Object:  StoredProcedure [dbo].[sp_listarPorcorreo]    Script Date: 5/02/2021 23:16:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_listarPorcorreo]
@correo varchar(30)
as 
begin
select nombre,correo from cliente where correo=@correo
end
GO
USE [master]
GO
ALTER DATABASE [isil2021] SET  READ_WRITE 
GO
