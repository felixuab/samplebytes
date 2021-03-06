USE [Personal]
GO
/****** Object:  Table [dbo].[Afp]    Script Date: 26/9/2021 19:47:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Afp](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Aporte_L] [float] NULL,
	[Aporte_P] [float] NULL,
	[Contacto1] [nvarchar](50) NULL,
	[Contacto2] [nvarchar](50) NULL,
	[Telefonos] [nvarchar](30) NULL,
	[Fax] [nvarchar](30) NULL,
	[Direccion] [nvarchar](max) NULL,
	[Postal] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Web] [nvarchar](50) NULL,
	[CtaBanco1] [nvarchar](30) NULL,
	[CtaBanco2] [nvarchar](30) NULL,
	[Ruc] [float] NULL,
	[Comentario] [nvarchar](max) NULL,
 CONSTRAINT [PK_Afp] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Areas]    Script Date: 26/9/2021 19:47:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Areas](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Area] [nvarchar](80) NOT NULL,
 CONSTRAINT [PK_Areas] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cargos]    Script Date: 26/9/2021 19:47:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargos](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Cargo] [nvarchar](100) NOT NULL,
	[Funciones] [nvarchar](max) NULL,
 CONSTRAINT [PK_Cargos] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Divisiones]    Script Date: 26/9/2021 19:47:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Divisiones](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Division] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Divisiones] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 26/9/2021 19:47:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[Cod] [int] NOT NULL,
	[Cod_Area] [int] NOT NULL,
	[Cod_Division] [int] NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Cod_Cargo] [int] NOT NULL,
	[Eventual] [bit] NOT NULL,
	[Fijo] [bit] NOT NULL,
	[Planta] [bit] NOT NULL,
	[Horas_Semana] [int] NULL,
	[Profesion] [nvarchar](50) NULL,
	[Domicilio] [nvarchar](100) NULL,
	[Telefono] [nvarchar](30) NULL,
	[Email] [nvarchar](80) NULL,
	[Tipo_Doc] [nvarchar](50) NULL,
	[Num_Doc] [nvarchar](15) NULL,
	[Ext_Doc] [nvarchar](3) NULL,
	[Fecha_Nac] [datetime] NULL,
	[Fecha_Ing] [datetime] NOT NULL,
	[Num_Asegurado] [nvarchar](30) NULL,
	[Num_NUA] [nvarchar](30) NULL,
	[Cta_Banco] [nvarchar](20) NULL,
	[Cod_AFP] [int] NOT NULL,
	[Activo] [bit] NOT NULL,
	[Haber_Basico] [float] NOT NULL,
	[Moneda] [nvarchar](3) NOT NULL,
	[Obs] [nvarchar](max) NULL,
	[FechaM] [datetime] NULL,
	[Respon] [int] NULL,
	[Sexo] [nvarchar](1) NULL,
	[Nacionalidad] [nvarchar](30) NULL,
	[Cotiza] [bit] NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[Cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Afp] ON 

INSERT [dbo].[Afp] ([Codigo], [Nombre], [Aporte_L], [Aporte_P], [Contacto1], [Contacto2], [Telefonos], [Fax], [Direccion], [Postal], [Email], [Web], [CtaBanco1], [CtaBanco2], [Ruc], [Comentario]) VALUES (12, N'Prevision BBV', 12.5, 2, N'Veronica', N'Juan', N'417471-4578', NULL, N'Av. Arce
', NULL, N'', N'', N'Bisa 147-4589-123', NULL, 0, N'')
INSERT [dbo].[Afp] ([Codigo], [Nombre], [Aporte_L], [Aporte_P], [Contacto1], [Contacto2], [Telefonos], [Fax], [Direccion], [Postal], [Email], [Web], [CtaBanco1], [CtaBanco2], [Ruc], [Comentario]) VALUES (13, N'Futuro Bolivia', 12.5, 2, N'Andres', N'Carlos', N'14789-124569', NULL, N'Edf. Inchauste
', NULL, N'', N'', N'Sta Cruz 14-45-4444', NULL, 0, N'')
SET IDENTITY_INSERT [dbo].[Afp] OFF
SET IDENTITY_INSERT [dbo].[Areas] ON 

INSERT [dbo].[Areas] ([Codigo], [Area]) VALUES (1, N'Gerencia')
INSERT [dbo].[Areas] ([Codigo], [Area]) VALUES (2, N'Administracion')
INSERT [dbo].[Areas] ([Codigo], [Area]) VALUES (3, N'Auxiliar')
INSERT [dbo].[Areas] ([Codigo], [Area]) VALUES (4, N'recursos Humanos')
SET IDENTITY_INSERT [dbo].[Areas] OFF
SET IDENTITY_INSERT [dbo].[Cargos] ON 

INSERT [dbo].[Cargos] ([Codigo], [Cargo], [Funciones]) VALUES (1, N'Gerente General', NULL)
INSERT [dbo].[Cargos] ([Codigo], [Cargo], [Funciones]) VALUES (2, N'Administrador', NULL)
INSERT [dbo].[Cargos] ([Codigo], [Cargo], [Funciones]) VALUES (3, N'Programador', NULL)
INSERT [dbo].[Cargos] ([Codigo], [Cargo], [Funciones]) VALUES (4, N'Analista de Sistemas', NULL)
INSERT [dbo].[Cargos] ([Codigo], [Cargo], [Funciones]) VALUES (5, N'Secretaria', N'')
INSERT [dbo].[Cargos] ([Codigo], [Cargo], [Funciones]) VALUES (7, N'Ayudante', NULL)
INSERT [dbo].[Cargos] ([Codigo], [Cargo], [Funciones]) VALUES (8, N'Recepcionista', NULL)
SET IDENTITY_INSERT [dbo].[Cargos] OFF
SET IDENTITY_INSERT [dbo].[Divisiones] ON 

INSERT [dbo].[Divisiones] ([Codigo], [Division]) VALUES (1, N'Oficina Principal')
INSERT [dbo].[Divisiones] ([Codigo], [Division]) VALUES (2, N'Sucursal 1')
INSERT [dbo].[Divisiones] ([Codigo], [Division]) VALUES (3, N'Sucursal 2')
SET IDENTITY_INSERT [dbo].[Divisiones] OFF
INSERT [dbo].[Empleados] ([Cod], [Cod_Area], [Cod_Division], [Nombre], [Cod_Cargo], [Eventual], [Fijo], [Planta], [Horas_Semana], [Profesion], [Domicilio], [Telefono], [Email], [Tipo_Doc], [Num_Doc], [Ext_Doc], [Fecha_Nac], [Fecha_Ing], [Num_Asegurado], [Num_NUA], [Cta_Banco], [Cod_AFP], [Activo], [Haber_Basico], [Moneda], [Obs], [FechaM], [Respon], [Sexo], [Nacionalidad], [Cotiza]) VALUES (438, 3, 1, N'ZORRILLA LOPEZ LESLY ALEJANDRA', 8, 0, 0, 1, 160, N'Estudiante', N'Calle Ignacio Prudencio Nº1271, Alto Sopocachi', N'', N'', N'Cedula de Identidad', N'5967601', N'', CAST(N'1987-04-14 00:00:00.000' AS DateTime), CAST(N'2014-06-24 00:00:00.000' AS DateTime), N'', N'42901388', N'20151008080394', 12, 1, 3453.64, N'Bs', N'', CAST(N'2016-06-02 15:48:39.000' AS DateTime), 534, N'F', N'Bolivia', 1)
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Afp] FOREIGN KEY([Cod_AFP])
REFERENCES [dbo].[Afp] ([Codigo])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Afp]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Areas] FOREIGN KEY([Cod_Area])
REFERENCES [dbo].[Areas] ([Codigo])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Areas]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Cargos] FOREIGN KEY([Cod_Cargo])
REFERENCES [dbo].[Cargos] ([Codigo])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Cargos]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Divisiones] FOREIGN KEY([Cod_Division])
REFERENCES [dbo].[Divisiones] ([Codigo])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Divisiones]
GO
