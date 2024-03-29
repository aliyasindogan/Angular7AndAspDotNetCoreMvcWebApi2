USE [WepApiDB]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 9.06.2019 08:55:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Order] [int] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 9.06.2019 08:55:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Price] [decimal](9, 2) NOT NULL,
	[UnitInStock] [int] NOT NULL,
	[PriceVat] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [IsActive], [Order]) VALUES (1, N'Bilgisayar', 1, 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [IsActive], [Order]) VALUES (2, N'Cep Telefonu', 1, 2)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [IsActive], [Order]) VALUES (4, N'Elektronik', 1, 3)
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [CategoryID], [ProductName], [Price], [UnitInStock], [PriceVat]) VALUES (20, 1, N'Vestel Diz Üstü Bilgisayar', CAST(3500.00 AS Decimal(9, 2)), 5, 103)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [ProductName], [Price], [UnitInStock], [PriceVat]) VALUES (1006, 2, N'Samsung Note 9 Cep Telefonu', CAST(3500.00 AS Decimal(9, 2)), 10, 3)
SET IDENTITY_INSERT [dbo].[Products] OFF
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
