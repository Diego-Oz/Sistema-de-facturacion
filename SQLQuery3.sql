USE [master]
GO
/****** Object:  Database [Administracion]    Script Date: 27/07/2020 16:41:10 ******/
CREATE DATABASE [Administracion]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Administracion', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Administracion.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Administracion_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Administracion_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Administracion] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Administracion].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Administracion] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Administracion] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Administracion] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Administracion] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Administracion] SET ARITHABORT OFF 
GO
ALTER DATABASE [Administracion] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Administracion] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Administracion] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Administracion] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Administracion] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Administracion] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Administracion] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Administracion] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Administracion] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Administracion] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Administracion] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Administracion] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Administracion] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Administracion] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Administracion] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Administracion] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Administracion] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Administracion] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Administracion] SET  MULTI_USER 
GO
ALTER DATABASE [Administracion] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Administracion] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Administracion] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Administracion] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Administracion] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Administracion] SET QUERY_STORE = OFF
GO
USE [Administracion]
GO
/****** Object:  Table [dbo].[Articulo]    Script Date: 27/07/2020 16:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulo](
	[id_pro] [int] NULL,
	[Nom_pro] [varchar](50) NULL,
	[Precio] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 27/07/2020 16:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[id_clientes] [int] NULL,
	[Cedula_cli] [varchar](50) NULL,
	[Nom_cli] [varchar](50) NULL,
	[Tel_cli] [varchar](50) NULL,
	[Email_cli] [varchar](50) NULL,
	[Cat_cli] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalles]    Script Date: 27/07/2020 16:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalles](
	[NumFac] [int] NULL,
	[CodPro] [int] NULL,
	[PrecioVen] [float] NULL,
	[CanVen] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facturas]    Script Date: 27/07/2020 16:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas](
	[NumFac] [int] NULL,
	[FecFac] [date] NULL,
	[CodCli] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 27/07/2020 16:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[id_proveedor] [int] NULL,
	[RNC] [varchar](50) NULL,
	[Nom_prove] [varchar](50) NULL,
	[Tel_prove] [varchar](50) NULL,
	[Email_prove] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 27/07/2020 16:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id_usuario] [int] NOT NULL,
	[Nom_usu] [varchar](50) NULL,
	[account] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[Status_admin] [bit] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Articulo] ([id_pro], [Nom_pro], [Precio]) VALUES (150, N'Acetaminofen Susp.', 125)
GO
INSERT [dbo].[Articulo] ([id_pro], [Nom_pro], [Precio]) VALUES (151, N'Ampicilina', 10)
GO
INSERT [dbo].[Articulo] ([id_pro], [Nom_pro], [Precio]) VALUES (152, N'Amoxicilina', 5)
GO
INSERT [dbo].[Articulo] ([id_pro], [Nom_pro], [Precio]) VALUES (153, N'Ibuprofen', 10)
GO
INSERT [dbo].[Articulo] ([id_pro], [Nom_pro], [Precio]) VALUES (154, N'Ambroxol Susp.', 150)
GO
INSERT [dbo].[Articulo] ([id_pro], [Nom_pro], [Precio]) VALUES (155, N'Melixican', 20)
GO
INSERT [dbo].[Articulo] ([id_pro], [Nom_pro], [Precio]) VALUES (156, N'Dolo Neuro Alfa', 55)
GO
INSERT [dbo].[Articulo] ([id_pro], [Nom_pro], [Precio]) VALUES (157, N'Byeflu', 30)
GO
INSERT [dbo].[Articulo] ([id_pro], [Nom_pro], [Precio]) VALUES (158, N'Ponstan', 16)
GO
INSERT [dbo].[Clientes] ([id_clientes], [Cedula_cli], [Nom_cli], [Tel_cli], [Email_cli], [Cat_cli]) VALUES (1, N'001-2025632-02', N'Joel', N'8096841232', N'jpa16@gmail.com', N'Premium')
GO
INSERT [dbo].[Clientes] ([id_clientes], [Cedula_cli], [Nom_cli], [Tel_cli], [Email_cli], [Cat_cli]) VALUES (2, N'001-8523697-01', N'Erika', N'8596321474', N'erika22@gmail.com', N'Regular')
GO
INSERT [dbo].[Clientes] ([id_clientes], [Cedula_cli], [Nom_cli], [Tel_cli], [Email_cli], [Cat_cli]) VALUES (3, N'001-2036547-01', N'Julian', N'8296547896', N'julianj05@gmail.com', N'Regular')
GO
INSERT [dbo].[Clientes] ([id_clientes], [Cedula_cli], [Nom_cli], [Tel_cli], [Email_cli], [Cat_cli]) VALUES (4, N'001-2514896-02', N'Gabriela', N'8496325784', N'gabi11@gmail.com', N'Premium')
GO
INSERT [dbo].[Proveedores] ([id_proveedor], [RNC], [Nom_prove], [Tel_prove], [Email_prove]) VALUES (100, N'001-0429030-1', N'Laboratorio Alfa', N'8298865648', N'labalfa@gmail.com')
GO
INSERT [dbo].[Proveedores] ([id_proveedor], [RNC], [Nom_prove], [Tel_prove], [Email_prove]) VALUES (101, N'001-1514021-0', N'Laboratorio Ratio', N'8097863254', N'ratiolab@gmail.com')
GO
INSERT [dbo].[Proveedores] ([id_proveedor], [RNC], [Nom_prove], [Tel_prove], [Email_prove]) VALUES (102, N'001-1621034-0', N'Ibero Farmaco', N'8096547128', N'iberof@gmail.com')
GO
INSERT [dbo].[Proveedores] ([id_proveedor], [RNC], [Nom_prove], [Tel_prove], [Email_prove]) VALUES (103, N'023-1213421-1', N'Victoria Yet', N'8096314785', N'yet_vic@gmail.com')
GO
INSERT [dbo].[Proveedores] ([id_proveedor], [RNC], [Nom_prove], [Tel_prove], [Email_prove]) VALUES (104, N'022-1114231-0', N'Laboratorio Orbis', N'8096332188', N'orbiss@gmail.com')
GO
INSERT [dbo].[Proveedores] ([id_proveedor], [RNC], [Nom_prove], [Tel_prove], [Email_prove]) VALUES (105, N'023-2365487-1', N'Ethical', N'8096547778', N'ethical@gmail.com')
GO
INSERT [dbo].[Usuarios] ([id_usuario], [Nom_usu], [account], [password], [Status_admin]) VALUES (1, N'Diego', N'diego15', N'123456', 1)
GO
INSERT [dbo].[Usuarios] ([id_usuario], [Nom_usu], [account], [password], [Status_admin]) VALUES (2, N'Juan', N'juanro', N'123', 0)
GO
/****** Object:  StoredProcedure [dbo].[ActualizaArticulos]    Script Date: 27/07/2020 16:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ActualizaArticulos]

@Id_pro int, @Nom_pro varchar(100), @Precio float

as

--Actualiza Articulos

if NOT EXISTS (Select id_pro from Articulo Where id_pro=@Id_pro)
insert into Articulo (id_pro,Nom_pro,Precio) values (@Id_pro,@Nom_pro,@Precio)

else

update Articulo set id_pro=@Id_pro, Nom_pro=@Nom_pro, Precio=@Precio
GO
/****** Object:  StoredProcedure [dbo].[ActualizaClientes]    Script Date: 27/07/2020 16:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ActualizaClientes]

@id_clientes int, @Cedula_cli varchar(100), @Nom_cli varchar(100), @Tel_cli varchar(100), @Email_cli varchar(100), @Cat_cli varchar(100)

as

if NOT EXISTS (Select id_clientes from Clientes Where id_clientes=@id_clientes)
insert into Clientes (id_clientes, Cedula_cli, Nom_cli, Tel_cli, Email_cli, Cat_cli) values (@id_clientes, @Cedula_cli, @Nom_cli, @Tel_cli, @Email_cli, @Cat_cli)

else

update Clientes set id_clientes=@id_clientes, Cedula_cli=@Cedula_cli, Nom_cli=@Nom_cli, Tel_cli=@Tel_cli, Email_cli=@Email_cli, Cat_cli=@Cat_cli
GO
/****** Object:  StoredProcedure [dbo].[ActualizaDetalles]    Script Date: 27/07/2020 16:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[ActualizaDetalles] @NumFac int, @CodPro int, @PrecioVen float, @CanVen float

as

insert into Detalles (NumFac, CodPro, PrecioVen, CanVen) values (@NumFac, @CodPro, @PrecioVen, @CanVen)
GO
/****** Object:  StoredProcedure [dbo].[ActualizaFacturas]    Script Date: 27/07/2020 16:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[ActualizaFacturas] @CodCli int

as

declare @Numfac int 

select @Numfac = MAX(NumFac) from Facturas

if @Numfac is null set @Numfac=0
set @Numfac = @Numfac+1

insert into Facturas (NumFac, FecFac, CodCli) values (@Numfac,GetDate(),@CodCli)

Select * From Facturas Where NumFac = @Numfac
GO
/****** Object:  StoredProcedure [dbo].[ActualizaProvedores]    Script Date: 27/07/2020 16:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ActualizaProvedores]

@id_proveedor int, @RNC varchar(100), @Nom_prove varchar(100), @Tel_prove varchar(100), @Email_prove varchar(100)
as

if NOT EXISTS (Select id_proveedor from Proveedores Where id_proveedor=@id_proveedor)
insert into Proveedores(id_proveedor, RNC, Nom_prove, Tel_prove, Email_prove) values (@id_proveedor, @RNC, @Nom_prove, @Tel_prove, @Email_prove)

else

update Proveedores set id_proveedor=@id_proveedor, RNC=@RNC, Nom_prove=@Nom_prove, Tel_prove=@Tel_prove, Email_prove=@Email_prove
GO
/****** Object:  StoredProcedure [dbo].[Datosfactura]    Script Date: 27/07/2020 16:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Datosfactura] @NumFac int

as

Select
F.*, D.PrecioVen, D.CanVen, C.Nom_cli, A.Nom_pro, D.PrecioVen * D.CanVen as importe

From Facturas F inner join Detalles D on F.NumFac = D.NumFac
inner join Articulo A on D.CodPro = A.id_pro
inner Join Cliente C on F.CodCli = C.id_clientes

Where F.NumFac = @NumFac
GO
/****** Object:  StoredProcedure [dbo].[EliminarArticulos]    Script Date: 27/07/2020 16:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[EliminarArticulos]

@id_pro int

as

delete from Articulo where id_pro=@id_pro
GO
/****** Object:  StoredProcedure [dbo].[EliminarClientes]    Script Date: 27/07/2020 16:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[EliminarClientes]

@id_clientes int

as

delete from Clientes where id_clientes=@id_clientes
GO
/****** Object:  StoredProcedure [dbo].[EliminarProveedores]    Script Date: 27/07/2020 16:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[EliminarProveedores]

@id_proveedores int

as

delete from Proveedores where id_proveedor=@id_proveedores
GO
USE [master]
GO
ALTER DATABASE [Administracion] SET  READ_WRITE 
GO
