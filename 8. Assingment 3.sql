USE [SwapnaliDB]
GO
/****** Object:  Table [dbo].[product]    Script Date: 11-08-2023 21:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[productId] [int] NULL,
	[productName] [varchar](60) NULL,
	[custName] [varchar](70) NULL,
	[DOB] [date] NULL,
	[city] [varchar](50) NULL,
	[price] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[product] ([productId], [productName], [custName], [DOB], [city], [price]) VALUES (1, N'Bike', N'John', CAST(N'1956-01-02' AS Date), N'Newyork', 200)
INSERT [dbo].[product] ([productId], [productName], [custName], [DOB], [city], [price]) VALUES (2, N'Cycle', N'Mike', CAST(N'1990-01-02' AS Date), N'VA', 4000)
INSERT [dbo].[product] ([productId], [productName], [custName], [DOB], [city], [price]) VALUES (1, N'Motor', N'Ray', CAST(N'2001-01-02' AS Date), N'CA', 100)
INSERT [dbo].[product] ([productId], [productName], [custName], [DOB], [city], [price]) VALUES (2, N'Car', N'Bob', CAST(N'1990-01-02' AS Date), N'MD', 400)
INSERT [dbo].[product] ([productId], [productName], [custName], [DOB], [city], [price]) VALUES (2, N'Tricyle', N'Kitty', CAST(N'2021-01-02' AS Date), N'DE', 240)
INSERT [dbo].[product] ([productId], [productName], [custName], [DOB], [city], [price]) VALUES (3, N'Car', N'Michale', CAST(N'1999-01-02' AS Date), N'Newyork', 300)
INSERT [dbo].[product] ([productId], [productName], [custName], [DOB], [city], [price]) VALUES (4, N'Bike', N'Rock', CAST(N'1956-01-02' AS Date), N'CA', 600)
INSERT [dbo].[product] ([productId], [productName], [custName], [DOB], [city], [price]) VALUES (5, N'Cycle', N'Rob', CAST(N'2008-01-02' AS Date), N'PH', 700)
INSERT [dbo].[product] ([productId], [productName], [custName], [DOB], [city], [price]) VALUES (6, N'Motor', N'John', CAST(N'1956-01-02' AS Date), N'Newyork', 900)
INSERT [dbo].[product] ([productId], [productName], [custName], [DOB], [city], [price]) VALUES (4, N'Bike', N'Rock', CAST(N'1956-01-02' AS Date), N'pA', 600)
INSERT [dbo].[product] ([productId], [productName], [custName], [DOB], [city], [price]) VALUES (11, NULL, NULL, NULL, NULL, NULL)

select * from product

1) write a query to fetch data whose price is greter than 600
2)write a query to fetch data custname start from letter 'R'
3)write a query to fetch data of productid 5 
4) write a query to fetch data for productid 2 and productname 'car'
5)fetch all customer who lives in newyork city
6)write a query to display who is born in 1956
7)calulate the age og customer
8)select all unique records from table
9)fetch records whose city is null
10)select data whose price between 600 to 4000
11) Get all data whose custname end with 'hn' and contain 4 letters.
12)Get all data whose custname start with 'r' and contain 3 letters
13)Write a query to get custname in upper case as "First Name"
14) Write a query to get custname in lower case as "First Name".
15)Select data whose name is Michale
16)Get all data whose custname start with latter 'k'. 
17)Get only Year part of "DOB"