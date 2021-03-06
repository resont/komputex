USE [komputex]
GO
/****** Object:  Table [dbo].[Produkty]    Script Date: 25.01.2020 22:34:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkty](
	[Id_p] [int] IDENTITY(1,1) NOT NULL,
	[Nazwa] [varchar](50) NULL,
	[Cena] [varchar](50) NULL,
	[Ilosc] [int] NULL,
	[Typ] [int] NULL,
 CONSTRAINT [PK_Produkty] PRIMARY KEY CLUSTERED 
(
	[Id_p] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Typy]    Script Date: 25.01.2020 22:34:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Typy](
	[Id_t] [int] IDENTITY(1,1) NOT NULL,
	[Nazwa] [varchar](50) NULL,
 CONSTRAINT [PK_Typy] PRIMARY KEY CLUSTERED 
(
	[Id_t] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uzytkownicy]    Script Date: 25.01.2020 22:34:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uzytkownicy](
	[Id_u] [int] IDENTITY(1,1) NOT NULL,
	[Imie] [varchar](50) NULL,
	[Nazwisko] [varchar](50) NULL,
	[Login] [varchar](50) NULL,
	[Haslo] [varchar](50) NULL,
 CONSTRAINT [PK_Uzytkownicy] PRIMARY KEY CLUSTERED 
(
	[Id_u] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zamowienia]    Script Date: 25.01.2020 22:34:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zamowienia](
	[Id_z] [int] IDENTITY(1,1) NOT NULL,
	[Id_p] [int] NOT NULL,
	[Id_u] [int] NOT NULL,
	[Data] [date] NULL,
	[Ilosc] [int] NULL,
 CONSTRAINT [PK_Zamowienia_1] PRIMARY KEY CLUSTERED 
(
	[Id_z] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Produkty] ON 

INSERT [dbo].[Produkty] ([Id_p], [Nazwa], [Cena], [Ilosc], [Typ]) VALUES (1, N'AMD Ryzen 9 3950x', N'3999', 5, 1)
INSERT [dbo].[Produkty] ([Id_p], [Nazwa], [Cena], [Ilosc], [Typ]) VALUES (2, N'NVidia RTX 2080 Ti', N'5299', 6, 3)
INSERT [dbo].[Produkty] ([Id_p], [Nazwa], [Cena], [Ilosc], [Typ]) VALUES (3, N'GIGABYTE x570', N'899', 4, 2)
INSERT [dbo].[Produkty] ([Id_p], [Nazwa], [Cena], [Ilosc], [Typ]) VALUES (4, N'Corsair 2x8GB 3600MHz', N'479', 6, 4)
INSERT [dbo].[Produkty] ([Id_p], [Nazwa], [Cena], [Ilosc], [Typ]) VALUES (5, N'Gigabyte Radeon RX 5700 XT', N'1899', 7, 3)
INSERT [dbo].[Produkty] ([Id_p], [Nazwa], [Cena], [Ilosc], [Typ]) VALUES (6, N'MSI Radeon RX 5500 XT', N'799', 6, 3)
INSERT [dbo].[Produkty] ([Id_p], [Nazwa], [Cena], [Ilosc], [Typ]) VALUES (7, N'AMD Ryzen 5 3600', N'799', 11, 1)
INSERT [dbo].[Produkty] ([Id_p], [Nazwa], [Cena], [Ilosc], [Typ]) VALUES (8, N'test', N'test', 79, 1)
INSERT [dbo].[Produkty] ([Id_p], [Nazwa], [Cena], [Ilosc], [Typ]) VALUES (9, N'test2', N'test2', 3, 4)
SET IDENTITY_INSERT [dbo].[Produkty] OFF
SET IDENTITY_INSERT [dbo].[Typy] ON 

INSERT [dbo].[Typy] ([Id_t], [Nazwa]) VALUES (1, N'Procesor')
INSERT [dbo].[Typy] ([Id_t], [Nazwa]) VALUES (2, N'Plyta glówna')
INSERT [dbo].[Typy] ([Id_t], [Nazwa]) VALUES (3, N'Karta graficzna')
INSERT [dbo].[Typy] ([Id_t], [Nazwa]) VALUES (4, N'RAM')
SET IDENTITY_INSERT [dbo].[Typy] OFF
SET IDENTITY_INSERT [dbo].[Uzytkownicy] ON 

INSERT [dbo].[Uzytkownicy] ([Id_u], [Imie], [Nazwisko], [Login], [Haslo]) VALUES (1, N'Janusz', N'Kowalski', N'cebula132', N'12345')
INSERT [dbo].[Uzytkownicy] ([Id_u], [Imie], [Nazwisko], [Login], [Haslo]) VALUES (2, N'Ferdynard', N'Kiepski', N'ferdek', N'f123')
INSERT [dbo].[Uzytkownicy] ([Id_u], [Imie], [Nazwisko], [Login], [Haslo]) VALUES (3, N'test', N'test', N'test', N'test')
INSERT [dbo].[Uzytkownicy] ([Id_u], [Imie], [Nazwisko], [Login], [Haslo]) VALUES (4, N'admin', N'admin', N'admin', N'admin')
INSERT [dbo].[Uzytkownicy] ([Id_u], [Imie], [Nazwisko], [Login], [Haslo]) VALUES (5, N'Wojtek', N'f', N'wf', N'12345')
SET IDENTITY_INSERT [dbo].[Uzytkownicy] OFF
SET IDENTITY_INSERT [dbo].[Zamowienia] ON 

INSERT [dbo].[Zamowienia] ([Id_z], [Id_p], [Id_u], [Data], [Ilosc]) VALUES (1, 1, 1, CAST(N'2020-01-13' AS Date), 1)
INSERT [dbo].[Zamowienia] ([Id_z], [Id_p], [Id_u], [Data], [Ilosc]) VALUES (2, 2, 3, CAST(N'2020-01-25' AS Date), 1)
INSERT [dbo].[Zamowienia] ([Id_z], [Id_p], [Id_u], [Data], [Ilosc]) VALUES (3, 2, 3, CAST(N'2020-01-25' AS Date), 1)
INSERT [dbo].[Zamowienia] ([Id_z], [Id_p], [Id_u], [Data], [Ilosc]) VALUES (4, 5, 5, CAST(N'2020-01-25' AS Date), 1)
INSERT [dbo].[Zamowienia] ([Id_z], [Id_p], [Id_u], [Data], [Ilosc]) VALUES (5, 5, 5, CAST(N'2020-01-25' AS Date), 1)
INSERT [dbo].[Zamowienia] ([Id_z], [Id_p], [Id_u], [Data], [Ilosc]) VALUES (6, 7, 5, CAST(N'2020-01-25' AS Date), 1)
INSERT [dbo].[Zamowienia] ([Id_z], [Id_p], [Id_u], [Data], [Ilosc]) VALUES (7, 4, 5, CAST(N'2020-01-25' AS Date), 1)
INSERT [dbo].[Zamowienia] ([Id_z], [Id_p], [Id_u], [Data], [Ilosc]) VALUES (8, 3, 5, CAST(N'2020-01-25' AS Date), 1)
INSERT [dbo].[Zamowienia] ([Id_z], [Id_p], [Id_u], [Data], [Ilosc]) VALUES (9, 2, 5, CAST(N'2020-01-25' AS Date), 1)
INSERT [dbo].[Zamowienia] ([Id_z], [Id_p], [Id_u], [Data], [Ilosc]) VALUES (10, 1, 5, CAST(N'2020-01-25' AS Date), 1)
INSERT [dbo].[Zamowienia] ([Id_z], [Id_p], [Id_u], [Data], [Ilosc]) VALUES (11, 9, 4, CAST(N'2020-01-25' AS Date), 1)
INSERT [dbo].[Zamowienia] ([Id_z], [Id_p], [Id_u], [Data], [Ilosc]) VALUES (12, 9, 4, CAST(N'2020-01-25' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Zamowienia] OFF
