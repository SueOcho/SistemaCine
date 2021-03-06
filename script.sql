USE [master]
GO
/****** Object:  Database [SistemaCine]    Script Date: 5/02/2021 20:54:28 ******/
CREATE DATABASE [SistemaCine]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SistemaCine', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SistemaCine.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SistemaCine_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SistemaCine_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SistemaCine] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SistemaCine].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SistemaCine] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SistemaCine] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SistemaCine] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SistemaCine] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SistemaCine] SET ARITHABORT OFF 
GO
ALTER DATABASE [SistemaCine] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SistemaCine] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SistemaCine] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SistemaCine] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SistemaCine] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SistemaCine] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SistemaCine] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SistemaCine] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SistemaCine] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SistemaCine] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SistemaCine] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SistemaCine] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SistemaCine] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SistemaCine] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SistemaCine] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SistemaCine] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SistemaCine] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SistemaCine] SET RECOVERY FULL 
GO
ALTER DATABASE [SistemaCine] SET  MULTI_USER 
GO
ALTER DATABASE [SistemaCine] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SistemaCine] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SistemaCine] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SistemaCine] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SistemaCine] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SistemaCine', N'ON'
GO
ALTER DATABASE [SistemaCine] SET QUERY_STORE = OFF
GO
USE [SistemaCine]
GO
/****** Object:  User [Sue]    Script Date: 5/02/2021 20:54:29 ******/
CREATE USER [Sue] FOR LOGIN [Sue] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Cine]    Script Date: 5/02/2021 20:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cine](
	[idCine] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[logo] [image] NULL,
	[estado] [bit] NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[fechaModificacion] [datetime] NULL,
	[admiModificacion] [varchar](50) NULL,
	[idDistrito] [tinyint] NOT NULL,
 CONSTRAINT [pk_idCine] PRIMARY KEY CLUSTERED 
(
	[idCine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 5/02/2021 20:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compra](
	[idCompra] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NOT NULL,
	[idEntrada] [int] NOT NULL,
	[numeroEntradas] [tinyint] NOT NULL,
	[total] [money] NULL,
	[estado] [bit] NULL,
	[fechaCompra] [datetime] NOT NULL,
 CONSTRAINT [pk_idCompra] PRIMARY KEY CLUSTERED 
(
	[idCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Distrito]    Script Date: 5/02/2021 20:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distrito](
	[idDistrito] [tinyint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](40) NOT NULL,
 CONSTRAINT [pk_idDistrito] PRIMARY KEY CLUSTERED 
(
	[idDistrito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entrada]    Script Date: 5/02/2021 20:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entrada](
	[idEntrada] [int] IDENTITY(1,1) NOT NULL,
	[precio] [money] NOT NULL,
	[tipo] [char](2) NULL,
	[estado] [bit] NOT NULL,
	[idSala] [tinyint] NOT NULL,
	[idPelicula] [int] NOT NULL,
	[stock] [smallint] NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[fechaModificacion] [datetime] NULL,
	[admiModificacion] [varchar](50) NULL,
 CONSTRAINT [pk_idEntrada] PRIMARY KEY CLUSTERED 
(
	[idEntrada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 5/02/2021 20:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pelicula](
	[idPelicula] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](40) NOT NULL,
	[duracion] [varchar](10) NOT NULL,
	[fechaEstreno] [datetime] NOT NULL,
	[idioma] [varchar](30) NULL,
	[pais] [varchar](30) NULL,
	[subtitulos] [bit] NULL,
	[doblada] [bit] NULL,
	[portada] [image] NULL,
	[descripcion] [varchar](300) NULL,
	[genero] [varchar](30) NOT NULL,
	[estado] [bit] NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[fechaModificacion] [datetime] NULL,
	[admiModificacion] [varchar](50) NULL,
 CONSTRAINT [pk_idPelicula] PRIMARY KEY CLUSTERED 
(
	[idPelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sala]    Script Date: 5/02/2021 20:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sala](
	[idSala] [tinyint] IDENTITY(1,1) NOT NULL,
	[numero] [smallint] NOT NULL,
	[idCine] [int] NOT NULL,
	[capacidad] [tinyint] NOT NULL,
	[tipoSala] [char](2) NOT NULL,
	[estado] [bit] NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[fechaModificacion] [datetime] NULL,
	[admiModificacion] [varchar](50) NULL,
 CONSTRAINT [pk_idSala] PRIMARY KEY CLUSTERED 
(
	[idSala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Usuario]    Script Date: 5/02/2021 20:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Usuario](
	[idTipoUsuario] [tinyint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](20) NOT NULL,
	[descripcion] [varchar](40) NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[fechaModificacion] [datetime] NULL,
	[admiModificacion] [varchar](50) NULL,
 CONSTRAINT [pk_idTipoUsuario] PRIMARY KEY CLUSTERED 
(
	[idTipoUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 5/02/2021 20:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [char](40) NOT NULL,
	[apellido] [varchar](40) NOT NULL,
	[correo] [varchar](60) NOT NULL,
	[contrasena] [varchar](30) NOT NULL,
	[tipoDocumento] [bit] NOT NULL,
	[numeroDocumento] [varchar](15) NOT NULL,
	[idTipoUsuario] [tinyint] NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
	[fechaModificacion] [datetime] NULL,
	[admiModificacion] [varchar](50) NULL,
	[estado] [bit] NULL,
 CONSTRAINT [pk_idUsuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario_Entrada]    Script Date: 5/02/2021 20:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario_Entrada](
	[idUsuarioEntrada] [int] IDENTITY(1,1) NOT NULL,
	[idCompra] [int] NOT NULL,
	[estado] [bit] NOT NULL,
	[fechaRegistro] [datetime] NOT NULL,
 CONSTRAINT [pk_idUsuarioEntrada] PRIMARY KEY CLUSTERED 
(
	[idUsuarioEntrada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cine] ON 

INSERT [dbo].[Cine] ([idCine], [nombre], [direccion], [logo], [estado], [fechaRegistro], [fechaModificacion], [admiModificacion], [idDistrito]) VALUES (1, N'Cineplanet', N'Calle las Camelias 278', NULL, 1, CAST(N'2021-01-24T16:35:25.173' AS DateTime), CAST(N'2021-02-02T15:32:14.887' AS DateTime), N'DESKTOP-DR3B8JA\JosueFlores', 36)
SET IDENTITY_INSERT [dbo].[Cine] OFF
GO
SET IDENTITY_INSERT [dbo].[Compra] ON 

INSERT [dbo].[Compra] ([idCompra], [idUsuario], [idEntrada], [numeroEntradas], [total], [estado], [fechaCompra]) VALUES (1, 1, 1, 1, 20.0000, 1, CAST(N'2021-01-24T19:53:53.043' AS DateTime))
INSERT [dbo].[Compra] ([idCompra], [idUsuario], [idEntrada], [numeroEntradas], [total], [estado], [fechaCompra]) VALUES (2, 1, 1, 1, 30.0000, 1, CAST(N'2021-02-02T20:28:18.190' AS DateTime))
INSERT [dbo].[Compra] ([idCompra], [idUsuario], [idEntrada], [numeroEntradas], [total], [estado], [fechaCompra]) VALUES (3, 1, 1, 1, NULL, 1, CAST(N'2021-02-02T20:31:12.497' AS DateTime))
INSERT [dbo].[Compra] ([idCompra], [idUsuario], [idEntrada], [numeroEntradas], [total], [estado], [fechaCompra]) VALUES (4, 1, 1, 2, NULL, 1, CAST(N'2021-02-02T21:00:32.673' AS DateTime))
INSERT [dbo].[Compra] ([idCompra], [idUsuario], [idEntrada], [numeroEntradas], [total], [estado], [fechaCompra]) VALUES (5, 1, 1, 2, 40.0000, 1, CAST(N'2021-02-02T21:03:17.210' AS DateTime))
INSERT [dbo].[Compra] ([idCompra], [idUsuario], [idEntrada], [numeroEntradas], [total], [estado], [fechaCompra]) VALUES (6, 1, 1, 2, 40.0000, 1, CAST(N'2021-02-02T21:38:06.517' AS DateTime))
INSERT [dbo].[Compra] ([idCompra], [idUsuario], [idEntrada], [numeroEntradas], [total], [estado], [fechaCompra]) VALUES (7, 1, 1, 1, 20.0000, 1, CAST(N'2021-02-02T23:25:42.460' AS DateTime))
INSERT [dbo].[Compra] ([idCompra], [idUsuario], [idEntrada], [numeroEntradas], [total], [estado], [fechaCompra]) VALUES (8, 1, 1, 1, 20.0000, 1, CAST(N'2021-02-02T23:25:56.933' AS DateTime))
INSERT [dbo].[Compra] ([idCompra], [idUsuario], [idEntrada], [numeroEntradas], [total], [estado], [fechaCompra]) VALUES (9, 1, 1, 1, 20.0000, 1, CAST(N'2021-02-02T23:25:58.047' AS DateTime))
INSERT [dbo].[Compra] ([idCompra], [idUsuario], [idEntrada], [numeroEntradas], [total], [estado], [fechaCompra]) VALUES (10, 1, 1, 1, 20.0000, 1, CAST(N'2021-02-02T23:25:58.863' AS DateTime))
INSERT [dbo].[Compra] ([idCompra], [idUsuario], [idEntrada], [numeroEntradas], [total], [estado], [fechaCompra]) VALUES (11, 1, 1, 2, 40.0000, 0, CAST(N'2021-02-02T23:29:42.603' AS DateTime))
INSERT [dbo].[Compra] ([idCompra], [idUsuario], [idEntrada], [numeroEntradas], [total], [estado], [fechaCompra]) VALUES (12, 1, 1, 2, 40.0000, 1, CAST(N'2021-02-02T23:29:54.317' AS DateTime))
INSERT [dbo].[Compra] ([idCompra], [idUsuario], [idEntrada], [numeroEntradas], [total], [estado], [fechaCompra]) VALUES (13, 1, 1, 2, 40.0000, 1, CAST(N'2021-02-02T23:36:32.120' AS DateTime))
INSERT [dbo].[Compra] ([idCompra], [idUsuario], [idEntrada], [numeroEntradas], [total], [estado], [fechaCompra]) VALUES (14, 1, 1, 2, 40.0000, 0, CAST(N'2021-02-02T23:38:25.247' AS DateTime))
SET IDENTITY_INSERT [dbo].[Compra] OFF
GO
SET IDENTITY_INSERT [dbo].[Distrito] ON 

INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (1, N'LIMA')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (2, N'ANCON')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (3, N'ATE')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (4, N'BREÑA')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (5, N'CARABAYLLO')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (6, N'COMAS')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (7, N'CHACLACAYO')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (8, N'CHORRILLOS')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (9, N'LA VICTORIA')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (10, N'LA MOLINA')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (11, N'LINCE')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (12, N'LURIGANCHO')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (13, N'LURIN')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (14, N'MAGDALENA DEL MAR')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (15, N'MIRAFLORES')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (16, N'PACHACAMAC')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (17, N'PUEBLO LIBRE')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (18, N'PUCUSANA')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (19, N'PUENTE PIEDRA')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (20, N'PUNTA HERMOSA')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (21, N'PUNTA NEGRA')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (22, N'RIMAC')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (23, N'SAN BARTOLO')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (24, N'SAN ISIDRO')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (25, N'BARRANCO')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (26, N'SAN MARTIN DE PORRES')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (27, N'SAN MIGUEL')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (28, N'SANTA MARIA DEL MAR')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (29, N'SANTA ROSA')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (30, N'SANTIAGO DE SURCO')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (31, N'SURQUILLO')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (32, N'VILLA MARIA DEL TRIUNFO')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (33, N'JESUS MARIA')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (34, N'INDEPENDENCIA')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (35, N'EL AGUSTINO')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (36, N'SAN JUAN DE MIRAFLORES')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (37, N'SAN JUAN DE LURIGANCHO')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (38, N'SAN LUIS')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (39, N'CIENEGUILLA')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (40, N'SAN BORJA')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (41, N'VILLA EL SALVADOR')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (42, N'LOS OLIVOS')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (43, N'SANTA ANITA')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (44, N'CALLAO')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (45, N'BELLAVISTA')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (46, N'LA PUNTA')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (47, N'CARMEN DE LA LEGUA-REYNOSO')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (48, N'LA PERLA')
INSERT [dbo].[Distrito] ([idDistrito], [Nombre]) VALUES (49, N'VENTANILLA')
SET IDENTITY_INSERT [dbo].[Distrito] OFF
GO
SET IDENTITY_INSERT [dbo].[Entrada] ON 

INSERT [dbo].[Entrada] ([idEntrada], [precio], [tipo], [estado], [idSala], [idPelicula], [stock], [fechaRegistro], [fechaModificacion], [admiModificacion]) VALUES (1, 20.0000, N'2D', 1, 1, 1, 242, CAST(N'2021-01-24T17:06:24.537' AS DateTime), CAST(N'2021-02-02T23:42:24.683' AS DateTime), N'DESKTOP-DR3B8JA\JosueFlores')
SET IDENTITY_INSERT [dbo].[Entrada] OFF
GO
SET IDENTITY_INSERT [dbo].[Pelicula] ON 

INSERT [dbo].[Pelicula] ([idPelicula], [nombre], [duracion], [fechaEstreno], [idioma], [pais], [subtitulos], [doblada], [portada], [descripcion], [genero], [estado], [fechaRegistro], [fechaModificacion], [admiModificacion]) VALUES (1, N'El hombre araña', N'2:01:00', CAST(N'2002-05-16T00:00:00.000' AS DateTime), N'Ingles', N'EEUU', 1, 1, NULL, NULL, N'Accion/fantasia', 1, CAST(N'2021-01-24T17:01:56.333' AS DateTime), CAST(N'2021-02-02T17:02:28.080' AS DateTime), N'DESKTOP-DR3B8JA\JosueFlores')
SET IDENTITY_INSERT [dbo].[Pelicula] OFF
GO
SET IDENTITY_INSERT [dbo].[Sala] ON 

INSERT [dbo].[Sala] ([idSala], [numero], [idCine], [capacidad], [tipoSala], [estado], [fechaRegistro], [fechaModificacion], [admiModificacion]) VALUES (1, 1, 1, 250, N'2D', 1, CAST(N'2021-01-24T16:47:26.750' AS DateTime), CAST(N'2021-02-02T16:30:59.743' AS DateTime), N'DESKTOP-DR3B8JA\JosueFlores')
SET IDENTITY_INSERT [dbo].[Sala] OFF
GO
SET IDENTITY_INSERT [dbo].[Tipo_Usuario] ON 

INSERT [dbo].[Tipo_Usuario] ([idTipoUsuario], [nombre], [descripcion], [fechaRegistro], [fechaModificacion], [admiModificacion]) VALUES (1, N'Admi', N'El dios del sistema', CAST(N'2021-01-24T11:58:40.587' AS DateTime), NULL, NULL)
INSERT [dbo].[Tipo_Usuario] ([idTipoUsuario], [nombre], [descripcion], [fechaRegistro], [fechaModificacion], [admiModificacion]) VALUES (2, N'User', N'Semidios del sistema', CAST(N'2021-01-24T12:00:49.193' AS DateTime), CAST(N'2021-02-02T15:23:22.387' AS DateTime), N'DESKTOP-DR3B8JA\JosueFlores')
INSERT [dbo].[Tipo_Usuario] ([idTipoUsuario], [nombre], [descripcion], [fechaRegistro], [fechaModificacion], [admiModificacion]) VALUES (3, N'Cliente', N'Ser humano comun y corriente', CAST(N'2021-01-24T12:01:48.973' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tipo_Usuario] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (1, N'Jane                                    ', N'Armstrong', N'purus.Duis@magnaSedeu.net', N'MKS75KAB9FT', 0, N'48826733', 3, CAST(N'2021-01-24T12:52:19.400' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (2, N'Josue                                   ', N'Campbell', N'pharetra.felis@liberoInteger.co.uk', N'LNS68MZZ1WZ', 0, N'13556570', 3, CAST(N'2021-01-24T12:52:19.423' AS DateTime), CAST(N'2021-02-02T15:27:32.117' AS DateTime), N'DESKTOP-DR3B8JA\JosueFlores', NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (3, N'Dorothy                                 ', N'Montoya', N'dictum@Mauris.com', N'RQO19QFB7DL', 0, N'25053098', 3, CAST(N'2021-01-24T12:52:19.423' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (4, N'Melodie                                 ', N'Johnston', N'non.enim@liberoDonec.org', N'CJV53MKG7HA', 0, N'45331211', 3, CAST(N'2021-01-24T12:52:19.423' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (5, N'Alvin                                   ', N'Gordon', N'lacus@urna.ca', N'XVG13TDV0NZ', 0, N'6032834', 3, CAST(N'2021-01-24T12:52:19.427' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (6, N'Cassady                                 ', N'Garcia', N'ligula.Aenean@dapibus.edu', N'MQK96JGO5XD', 0, N'47372260', 3, CAST(N'2021-01-24T12:52:19.427' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (7, N'Erasmus                                 ', N'Spence', N'neque@enim.com', N'VZC99CJP7VR', 0, N'10543727', 3, CAST(N'2021-01-24T12:52:19.427' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (8, N'Amela                                   ', N'Bolton', N'enim@acsem.com', N'WLM52PKY6AL', 0, N'5108059', 3, CAST(N'2021-01-24T12:52:19.427' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (9, N'Mary                                    ', N'Schmidt', N'feugiat.Sed.nec@fringilla.com', N'YUV49CFO4EM', 0, N'33069203', 3, CAST(N'2021-01-24T12:52:19.427' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (10, N'Samson                                  ', N'Silva', N'facilisi.Sed@SedmolestieSed.com', N'SZV50YCR7OA', 0, N'34525622', 3, CAST(N'2021-01-24T12:52:19.427' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (11, N'Germane                                 ', N'Ryan', N'auctor@egestasrhoncusProin.edu', N'BIF10WHM6LW', 0, N'7441358', 3, CAST(N'2021-01-24T12:52:19.427' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (12, N'Mohammad                                ', N'Wells', N'malesuada.fames@nisiaodio.net', N'YII10LMZ8SI', 0, N'34874440', 3, CAST(N'2021-01-24T12:52:19.427' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (13, N'Irma                                    ', N'Winters', N'dapibus.quam.quis@pedenec.org', N'ZYR34ZFK7JX', 0, N'36194214', 3, CAST(N'2021-01-24T12:52:19.427' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (14, N'Callie                                  ', N'Bray', N'magna.et.ipsum@ProinvelitSed.org', N'QJY82KDL0HB', 0, N'48459991', 3, CAST(N'2021-01-24T12:52:19.427' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (15, N'Isaac                                   ', N'Roberson', N'eget@a.ca', N'ZBS63MLW9EQ', 0, N'17821233', 3, CAST(N'2021-01-24T12:52:19.430' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (16, N'Fritz                                   ', N'Huff', N'non.bibendum@orcilobortis.co.uk', N'LIR40RZJ7IS', 0, N'47235378', 3, CAST(N'2021-01-24T12:52:19.430' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (17, N'Iola                                    ', N'Short', N'amet.faucibus@sedturpis.edu', N'LFW31YQB1WF', 0, N'49607739', 3, CAST(N'2021-01-24T12:52:19.430' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (18, N'Ariel                                   ', N'Buck', N'velit.dui@Donecluctusaliquet.ca', N'XZY40CIE4GF', 0, N'7751369', 3, CAST(N'2021-01-24T12:52:19.430' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (19, N'Xander                                  ', N'Justice', N'nibh@Morbineque.co.uk', N'UGM42HLX9KO', 0, N'32743701', 3, CAST(N'2021-01-24T12:52:19.430' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (20, N'Chaney                                  ', N'Fernandez', N'est.vitae@Suspendisse.co.uk', N'OWT97OYY4HX', 0, N'41109842', 3, CAST(N'2021-01-24T12:52:19.430' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (21, N'Shaeleigh                               ', N'Mayer', N'mauris.id.sapien@enimnon.ca', N'YOW57UDA3OP', 0, N'11586169', 3, CAST(N'2021-01-24T12:52:19.430' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (22, N'Keefe                                   ', N'Alston', N'felis.orci@elitAliquam.edu', N'MXY37CPR0RB', 0, N'9313351', 3, CAST(N'2021-01-24T12:52:19.430' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (23, N'Talon                                   ', N'Phelps', N'auctor@libero.org', N'OHA90GAB1XK', 0, N'35866281', 3, CAST(N'2021-01-24T12:52:19.430' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (24, N'Hunter                                  ', N'Black', N'aliquet.molestie@dictum.com', N'ITN02IKS0WC', 0, N'45544909', 3, CAST(N'2021-01-24T12:52:19.430' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (25, N'Autumn                                  ', N'Meadows', N'amet.massa.Quisque@sociisnatoque.edu', N'FIP31GFA4NW', 0, N'6696178', 3, CAST(N'2021-01-24T12:52:19.430' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (26, N'Amy                                     ', N'Pacheco', N'ultrices.Vivamus@ategestas.ca', N'IJY74JNR5VD', 0, N'23933590', 3, CAST(N'2021-01-24T12:52:19.430' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (27, N'Patricia                                ', N'Allen', N'arcu.Vestibulum@arcu.edu', N'MAR95KKP6DL', 0, N'30922207', 3, CAST(N'2021-01-24T12:52:19.430' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (28, N'Amos                                    ', N'Chambers', N'justo@orci.com', N'MEK24ZYN2QI', 0, N'29144900', 3, CAST(N'2021-01-24T12:52:19.433' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (29, N'Alisa                                   ', N'Spencer', N'sem.ut@eleifendegestas.ca', N'YEK79IHW5IA', 0, N'44356764', 3, CAST(N'2021-01-24T12:52:19.433' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (30, N'Ayanna                                  ', N'Savage', N'orci.Ut@mauris.co.uk', N'BVK93RYW2RI', 0, N'36023518', 3, CAST(N'2021-01-24T12:52:19.433' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (31, N'Raymond                                 ', N'Lloyd', N'conubia@ornareelitelit.edu', N'QFK58VQM0GI', 0, N'31317805', 3, CAST(N'2021-01-24T12:52:19.433' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (32, N'Benjamin                                ', N'Jackson', N'sed@Sed.edu', N'FDC30YNF5LS', 0, N'20485901', 3, CAST(N'2021-01-24T12:52:19.433' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (33, N'Colby                                   ', N'Taylor', N'cubilia.Curae.Phasellus@faucibusid.co.uk', N'KFL16IZD9MF', 0, N'30718070', 3, CAST(N'2021-01-24T12:52:19.433' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (34, N'Harlan                                  ', N'Kaufman', N'urna@est.com', N'VDH13NEJ1XF', 0, N'17069962', 3, CAST(N'2021-01-24T12:52:19.433' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (35, N'Bradley                                 ', N'Harmon', N'Curae.Donec@velitjusto.net', N'BSQ02JOY0CP', 0, N'29525076', 3, CAST(N'2021-01-24T12:52:19.433' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (36, N'Nomlanga                                ', N'Vasquez', N'tempor@telluseu.org', N'XDT61PMS8CO', 0, N'26646595', 3, CAST(N'2021-01-24T12:52:19.433' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (37, N'Nina                                    ', N'Hubbard', N'semper.rutrum@magna.org', N'WBZ58ERT2RM', 0, N'18071865', 3, CAST(N'2021-01-24T12:52:19.433' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (38, N'Mercedes                                ', N'Diaz', N'velit@facilisis.ca', N'MXQ81DKJ4AT', 0, N'49009950', 3, CAST(N'2021-01-24T12:52:19.433' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (39, N'Ferris                                  ', N'Wong', N'mus.Proin@egestasligula.net', N'BWZ20ABZ7OU', 0, N'37072378', 3, CAST(N'2021-01-24T12:52:19.433' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (40, N'Robert                                  ', N'Logan', N'convallis.erat.eget@luctus.edu', N'MUN66IUJ7JY', 0, N'16578287', 3, CAST(N'2021-01-24T12:52:19.433' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (41, N'Iliana                                  ', N'Bell', N'at.augue@auctornonfeugiat.com', N'GST75KIA3NL', 0, N'50763612', 3, CAST(N'2021-01-24T12:52:19.433' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (42, N'Aquila                                  ', N'Parrish', N'ornare.placerat@porttitor.org', N'ZGP39JKR0ML', 0, N'48334985', 3, CAST(N'2021-01-24T12:52:19.433' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (43, N'Ivor                                    ', N'Curry', N'libero@lectusCumsociis.net', N'YDH76HRU0DU', 0, N'17706834', 3, CAST(N'2021-01-24T12:52:19.433' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (44, N'Alfreda                                 ', N'Patel', N'elit.a@lectus.org', N'FPX50PDP4WH', 0, N'32437952', 3, CAST(N'2021-01-24T12:52:19.433' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (45, N'Edward                                  ', N'Mcknight', N'risus.a.ultricies@congueelit.ca', N'EJB42VGO1EX', 0, N'7568212', 3, CAST(N'2021-01-24T12:52:19.437' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (46, N'Hedda                                   ', N'Hensley', N'lobortis@dolor.com', N'HIM82UIC3ZY', 0, N'41746205', 3, CAST(N'2021-01-24T12:52:19.437' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (47, N'Kirk                                    ', N'Zamora', N'magna.sed.dui@nuncid.net', N'FYG16WEO3BV', 0, N'43237081', 3, CAST(N'2021-01-24T12:52:19.437' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (48, N'April                                   ', N'Hansen', N' ', N'QSR43KQS2FS', 0, N'47160220', 3, CAST(N'2021-01-24T12:52:19.437' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (49, N'Mark                                    ', N'Mcdowell', N'cubilia.Curae.Donec@euismodmauris.ca', N'LTV30XOV0CD', 0, N'47607608', 3, CAST(N'2021-01-24T12:52:19.437' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (50, N'Quentin                                 ', N'Estes', N'in.faucibus@arcu.ca', N'LDS14VAW1VX', 0, N'13973916', 3, CAST(N'2021-01-24T12:52:19.437' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (51, N'James                                   ', N'Hughes', N'sed@veliteu.net', N'QBO57DZS7FT', 0, N'50942455', 3, CAST(N'2021-01-24T12:52:19.437' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (52, N'Austin                                  ', N'Rowe', N'a.dui@Nulla.org', N'IZV90USV7LV', 0, N'8204274', 3, CAST(N'2021-01-24T12:52:19.437' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (53, N'Francesca                               ', N'Pierce', N'tellus.imperdiet@ultricesmauris.com', N'BIJ78OZJ6GR', 0, N'32802134', 3, CAST(N'2021-01-24T12:52:19.437' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (54, N'Barry                                   ', N'Wagner', N'Donec.nibh@Cras.edu', N'YOS84PRN6XZ', 0, N'49381062', 3, CAST(N'2021-01-24T12:52:19.437' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (55, N'Aidan                                   ', N'Shepherd', N'a.mi.fringilla@inmolestie.co.uk', N'YEP89PYO3YZ', 0, N'20633577', 3, CAST(N'2021-01-24T12:52:19.437' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (56, N'Dillon                                  ', N'Bauer', N'urna.justo@Etiamligulatortor.org', N'CTZ30CJM8EL', 0, N'28763164', 3, CAST(N'2021-01-24T12:52:19.437' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (57, N'Madonna                                 ', N'Wong', N'et.euismod@facilisisnonbibendum.net', N'FJK09CFH4QZ', 0, N'8991559', 3, CAST(N'2021-01-24T12:52:19.437' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (58, N'Miranda                                 ', N'Kirk', N'Aliquam.nisl@suscipitnonummyFusce.edu', N'EYU06QJM2QL', 0, N'9545944', 3, CAST(N'2021-01-24T12:52:19.437' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (59, N'Thomas                                  ', N'Houston', N'nisi.sem.semper@sitametmassa.edu', N'DBX13SYM3MZ', 0, N'46974059', 3, CAST(N'2021-01-24T12:52:19.437' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (60, N'Unity                                   ', N'Olson', N'Aliquam@Craspellentesque.edu', N'NFE06OIB5RI', 0, N'11300327', 3, CAST(N'2021-01-24T12:52:19.440' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (61, N'Salvador                                ', N'Turner', N'Proin@Curabituregestasnunc.edu', N'DZS37SCM3OY', 0, N'24613326', 3, CAST(N'2021-01-24T12:52:19.440' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (62, N'Jason                                   ', N'Roth', N'turpis.non@Suspendisseac.ca', N'QBS88RCB5QP', 0, N'34536188', 3, CAST(N'2021-01-24T12:52:19.440' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (63, N'Chandler                                ', N'Chen', N'vehicula.aliquet.libero@lorem.com', N'RTE85TRZ9WB', 0, N'13064431', 3, CAST(N'2021-01-24T12:52:19.440' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (64, N'Walker                                  ', N'Ware', N'et@Nunc.com', N'SCT71XZX6SE', 0, N'33974585', 3, CAST(N'2021-01-24T12:52:19.440' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (65, N'Wayne                                   ', N'Mckenzie', N'nunc@accumsannequeet.org', N'LKY18JMX5VZ', 0, N'44406732', 3, CAST(N'2021-01-24T12:52:19.440' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (66, N'Stella                                  ', N'Huber', N'pede@liberodui.edu', N'FIW27FFD2CZ', 0, N'30537972', 3, CAST(N'2021-01-24T12:52:19.440' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (67, N'Mallory                                 ', N'Russo', N'lacinia.at@nec.edu', N'BXF12KZC6PC', 0, N'26535634', 3, CAST(N'2021-01-24T12:52:19.440' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (68, N'Alisa                                   ', N'Mclaughlin', N'et.libero@volutpatnuncsit.org', N'IPF98GUV4TM', 0, N'41303266', 3, CAST(N'2021-01-24T12:52:19.440' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (69, N'Xenos                                   ', N'Parker', N'tortor.nibh@lorem.edu', N'VZB47AGF0DP', 0, N'23136268', 3, CAST(N'2021-01-24T12:52:19.440' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (70, N'Uriel                                   ', N'Rosa', N'Curae.Donec@fringilla.ca', N'DTA05ZCR9MB', 0, N'16084021', 3, CAST(N'2021-01-24T12:52:19.440' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (71, N'Fleur                                   ', N'Estes', N'Nam.interdum@rhoncusNullam.net', N'ATW90SUK6YD', 0, N'5228307', 3, CAST(N'2021-01-24T12:52:19.440' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (72, N'Tallulah                                ', N'Rich', N'Phasellus.in.felis@semper.net', N'QCH75ZGL4LA', 0, N'35566400', 3, CAST(N'2021-01-24T12:52:19.440' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (73, N'Daquan                                  ', N'Petersen', N'ligula@ridiculusmus.edu', N'LNX84DSA3LH', 0, N'31446297', 3, CAST(N'2021-01-24T12:52:19.440' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (74, N'Dylan                                   ', N'Gonzales', N'mi.Aliquam@odio.edu', N'ADR00DSE1YY', 0, N'26416827', 3, CAST(N'2021-01-24T12:52:19.440' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (75, N'Kellie                                  ', N'Lane', N'pede.blandit@Etiam.co.uk', N'KJI24SHM2JW', 0, N'38586289', 3, CAST(N'2021-01-24T12:52:19.440' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (76, N'Amal                                    ', N'Vega', N'Sed.et.libero@egetvariusultrices.edu', N'IWK47FYN1DX', 0, N'29732860', 3, CAST(N'2021-01-24T12:52:19.440' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (77, N'Justina                                 ', N'Lucas', N'varius.ultrices@loremfringillaornare.co.uk', N'IBQ12WZR0BB', 0, N'26225292', 3, CAST(N'2021-01-24T12:52:19.440' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (78, N'Tarik                                   ', N'Bush', N'Aliquam.ultrices@Inscelerisque.org', N'QXH76RNQ7TB', 0, N'22640927', 3, CAST(N'2021-01-24T12:52:19.440' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (79, N'Carol                                   ', N'Hays', N'eu@nonvestibulumnec.ca', N'CVR76TXU0GS', 0, N'22112844', 3, CAST(N'2021-01-24T12:52:19.440' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (80, N'Lester                                  ', N'Marks', N'elit.Curabitur.sed@atarcu.org', N'IEK37DUX4WG', 0, N'32761064', 3, CAST(N'2021-01-24T12:52:19.440' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (81, N'Colton                                  ', N'Cross', N'auctor.ullamcorper.nisl@ut.org', N'ZGA59FMV0YB', 0, N'36394525', 3, CAST(N'2021-01-24T12:52:19.440' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (82, N'Kennan                                  ', N'Ramos', N'enim.diam.vel@Aliquam.com', N'JPB06NTR9AJ', 0, N'40564186', 3, CAST(N'2021-01-24T12:52:19.443' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (83, N'Noelle                                  ', N'Guzman', N'metus.Vivamus@necimperdiet.org', N'FLU05WXN8JL', 0, N'6232684', 3, CAST(N'2021-01-24T12:52:19.443' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (84, N'Lacey                                   ', N'Garza', N'Nulla.tempor.augue@cursusdiam.net', N'WHW00ZDT1PZ', 0, N'49704298', 3, CAST(N'2021-01-24T12:52:19.443' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (85, N'Brielle                                 ', N'Curry', N'sit.amet.orci@elit.com', N'XOV85NQK2IE', 0, N'5104667', 3, CAST(N'2021-01-24T12:52:19.443' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (86, N'Uriah                                   ', N'Garrett', N'arcu.Curabitur.ut@nonquamPellentesque.co.uk', N'CQM71HKE4QP', 0, N'45183869', 3, CAST(N'2021-01-24T12:52:19.443' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (87, N'Kaseem                                  ', N'Valencia', N'eget@at.org', N'KCR67XXH9CA', 0, N'48857415', 3, CAST(N'2021-01-24T12:52:19.443' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (88, N'Dai                                     ', N'Solis', N'Cras.sed.leo@Nuncsollicitudin.net', N'FKA75JRS7UY', 0, N'45420468', 3, CAST(N'2021-01-24T12:52:19.443' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (89, N'Kiona                                   ', N'Osborn', N'est.mollis.non@semper.com', N'OUK75VZZ1WH', 0, N'24502452', 3, CAST(N'2021-01-24T12:52:19.443' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (90, N'Ori                                     ', N'Schneider', N'Etiam@variusNamporttitor.edu', N'UBR18CPQ1BW', 0, N'24311916', 3, CAST(N'2021-01-24T12:52:19.443' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (91, N'Willow                                  ', N'Cummings', N'libero.lacus@adipiscing.edu', N'KPO32ILJ9MS', 0, N'44600414', 3, CAST(N'2021-01-24T12:52:19.443' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (92, N'Alexis                                  ', N'Gillespie', N'odio.Phasellus@metussitamet.net', N'EJK18JZE4NI', 0, N'42166157', 3, CAST(N'2021-01-24T12:52:19.443' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (93, N'Aidan                                   ', N'Miller', N'fringilla@egestas.com', N'GSA46BAM2OM', 0, N'33679388', 3, CAST(N'2021-01-24T12:52:19.443' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (94, N'Addison                                 ', N'Jennings', N'dictum.magna@euismod.com', N'DPR57LSC1HU', 0, N'16438003', 3, CAST(N'2021-01-24T12:52:19.443' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (95, N'Eliana                                  ', N'Guthrie', N'pharetra.ut.pharetra@torquentper.net', N'NPK52CID6CQ', 0, N'26348788', 3, CAST(N'2021-01-24T12:52:19.443' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (96, N'Tatum                                   ', N'Poole', N'purus@arcueu.edu', N'XIP89ZQO8GR', 0, N'8208482', 3, CAST(N'2021-01-24T12:52:19.443' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (97, N'Lev                                     ', N'Santiago', N'vehicula@Donecatarcu.co.uk', N'FVY19ITD0EM', 0, N'33532550', 3, CAST(N'2021-01-24T12:52:19.447' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (98, N'Germaine                                ', N'Nguyen', N'nisl@quismassaMauris.ca', N'OUB40WEK7FI', 0, N'28856656', 3, CAST(N'2021-01-24T12:52:19.447' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (99, N'Ruth                                    ', N'Sears', N'fermentum.arcu@nisl.org', N'IOG29LKL8KN', 0, N'46884376', 3, CAST(N'2021-01-24T12:52:19.447' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (100, N'Josue                                   ', N'Flores', N'yoshuai_i@hotmail.com', N'123456', 0, N'74359856', 1, CAST(N'2021-01-24T13:03:34.707' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Usuario] ([idUsuario], [nombre], [apellido], [correo], [contrasena], [tipoDocumento], [numeroDocumento], [idTipoUsuario], [fechaRegistro], [fechaModificacion], [admiModificacion], [estado]) VALUES (101, N'Sandalio                                ', N'Meltronco', N'sandalio@brayans.pe', N'1234567', 1, N'44444444', 3, CAST(N'2021-02-05T11:58:55.150' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario_Entrada] ON 

INSERT [dbo].[Usuario_Entrada] ([idUsuarioEntrada], [idCompra], [estado], [fechaRegistro]) VALUES (1, 1, 0, CAST(N'2021-02-02T23:25:51.397' AS DateTime))
INSERT [dbo].[Usuario_Entrada] ([idUsuarioEntrada], [idCompra], [estado], [fechaRegistro]) VALUES (2, 1, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Usuario_Entrada] ([idUsuarioEntrada], [idCompra], [estado], [fechaRegistro]) VALUES (3, 1, 0, CAST(N'2021-02-02T23:26:19.987' AS DateTime))
INSERT [dbo].[Usuario_Entrada] ([idUsuarioEntrada], [idCompra], [estado], [fechaRegistro]) VALUES (4, 12, 0, CAST(N'2021-02-02T23:30:16.937' AS DateTime))
INSERT [dbo].[Usuario_Entrada] ([idUsuarioEntrada], [idCompra], [estado], [fechaRegistro]) VALUES (5, 12, 0, CAST(N'2021-02-02T23:30:16.940' AS DateTime))
INSERT [dbo].[Usuario_Entrada] ([idUsuarioEntrada], [idCompra], [estado], [fechaRegistro]) VALUES (6, 13, 0, CAST(N'2021-02-02T23:36:41.503' AS DateTime))
INSERT [dbo].[Usuario_Entrada] ([idUsuarioEntrada], [idCompra], [estado], [fechaRegistro]) VALUES (7, 13, 0, CAST(N'2021-02-02T23:36:41.503' AS DateTime))
INSERT [dbo].[Usuario_Entrada] ([idUsuarioEntrada], [idCompra], [estado], [fechaRegistro]) VALUES (8, 13, 0, CAST(N'2021-02-02T23:37:27.010' AS DateTime))
INSERT [dbo].[Usuario_Entrada] ([idUsuarioEntrada], [idCompra], [estado], [fechaRegistro]) VALUES (9, 13, 0, CAST(N'2021-02-02T23:37:27.010' AS DateTime))
SET IDENTITY_INSERT [dbo].[Usuario_Entrada] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uq_direccion]    Script Date: 5/02/2021 20:54:29 ******/
ALTER TABLE [dbo].[Cine] ADD  CONSTRAINT [uq_direccion] UNIQUE NONCLUSTERED 
(
	[direccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uq_nombre]    Script Date: 5/02/2021 20:54:29 ******/
ALTER TABLE [dbo].[Tipo_Usuario] ADD  CONSTRAINT [uq_nombre] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uq_correo]    Script Date: 5/02/2021 20:54:29 ******/
ALTER TABLE [dbo].[Usuario] ADD  CONSTRAINT [uq_correo] UNIQUE NONCLUSTERED 
(
	[correo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uq_numeroDocumento]    Script Date: 5/02/2021 20:54:29 ******/
ALTER TABLE [dbo].[Usuario] ADD  CONSTRAINT [uq_numeroDocumento] UNIQUE NONCLUSTERED 
(
	[numeroDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cine] ADD  CONSTRAINT [df_fechaRegistroC]  DEFAULT (getdate()) FOR [fechaRegistro]
GO
ALTER TABLE [dbo].[Compra] ADD  DEFAULT ((0)) FOR [estado]
GO
ALTER TABLE [dbo].[Compra] ADD  CONSTRAINT [df_fechaCompra]  DEFAULT (getdate()) FOR [fechaCompra]
GO
ALTER TABLE [dbo].[Entrada] ADD  CONSTRAINT [df_fechaRegistroE]  DEFAULT (getdate()) FOR [fechaRegistro]
GO
ALTER TABLE [dbo].[Pelicula] ADD  CONSTRAINT [df_fechaRegistroP]  DEFAULT (getdate()) FOR [fechaRegistro]
GO
ALTER TABLE [dbo].[Sala] ADD  CONSTRAINT [df_fechaRegistroS]  DEFAULT (getdate()) FOR [fechaRegistro]
GO
ALTER TABLE [dbo].[Tipo_Usuario] ADD  CONSTRAINT [df_fechaRegistro]  DEFAULT (getdate()) FOR [fechaRegistro]
GO
ALTER TABLE [dbo].[Usuario] ADD  CONSTRAINT [df_fechaRegistroU]  DEFAULT (getdate()) FOR [fechaRegistro]
GO
ALTER TABLE [dbo].[Usuario] ADD  DEFAULT ((0)) FOR [estado]
GO
ALTER TABLE [dbo].[Usuario_Entrada] ADD  DEFAULT ((0)) FOR [estado]
GO
ALTER TABLE [dbo].[Usuario_Entrada] ADD  CONSTRAINT [df_Usuario_Entrada]  DEFAULT (getdate()) FOR [fechaRegistro]
GO
ALTER TABLE [dbo].[Cine]  WITH CHECK ADD  CONSTRAINT [fk_Cine_Distrito] FOREIGN KEY([idDistrito])
REFERENCES [dbo].[Distrito] ([idDistrito])
GO
ALTER TABLE [dbo].[Cine] CHECK CONSTRAINT [fk_Cine_Distrito]
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [fk_Compra_Entrada] FOREIGN KEY([idEntrada])
REFERENCES [dbo].[Entrada] ([idEntrada])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [fk_Compra_Entrada]
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [fk_Compra_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [fk_Compra_Usuario]
GO
ALTER TABLE [dbo].[Entrada]  WITH CHECK ADD  CONSTRAINT [fk_Entrada_Sala] FOREIGN KEY([idSala])
REFERENCES [dbo].[Sala] ([idSala])
GO
ALTER TABLE [dbo].[Entrada] CHECK CONSTRAINT [fk_Entrada_Sala]
GO
ALTER TABLE [dbo].[Entrada]  WITH CHECK ADD  CONSTRAINT [fk_EntradaPelicula] FOREIGN KEY([idPelicula])
REFERENCES [dbo].[Pelicula] ([idPelicula])
GO
ALTER TABLE [dbo].[Entrada] CHECK CONSTRAINT [fk_EntradaPelicula]
GO
ALTER TABLE [dbo].[Sala]  WITH CHECK ADD  CONSTRAINT [fk_Sala_Cine] FOREIGN KEY([idCine])
REFERENCES [dbo].[Cine] ([idCine])
GO
ALTER TABLE [dbo].[Sala] CHECK CONSTRAINT [fk_Sala_Cine]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [fk_Usuario_Tipo_Usuario] FOREIGN KEY([idTipoUsuario])
REFERENCES [dbo].[Tipo_Usuario] ([idTipoUsuario])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [fk_Usuario_Tipo_Usuario]
GO
ALTER TABLE [dbo].[Usuario_Entrada]  WITH CHECK ADD  CONSTRAINT [fk_Compra_Entrada_Compra] FOREIGN KEY([idCompra])
REFERENCES [dbo].[Compra] ([idCompra])
GO
ALTER TABLE [dbo].[Usuario_Entrada] CHECK CONSTRAINT [fk_Compra_Entrada_Compra]
GO
USE [master]
GO
ALTER DATABASE [SistemaCine] SET  READ_WRITE 
GO
