drop database shop
CREATE DATABASE [shop] ON  PRIMARY 
GO

CREATE TABLE [dbo].[user](
	[Id] [nvarchar](50) NOT NULL,
	[Pass] [nvarchar](50) NOT NULL,
	[roles] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanpham](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tensp] [nvarchar](50) NOT NULL,
	[Gia] [nvarchar](50) NOT NULL,
	[Kmai] [nvarchar](50) NOT NULL,
	[Mota] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

insert into [user] values('admin','admin','1')

insert into Sanpham values('A','325','-15%','null','images/p-1.png')
insert into Sanpham values('B','350','-10%','null','images/p-2.png')
insert into Sanpham values('C','300','-5%','null','images/p-3.png')
insert into Sanpham values('D','275','-15%','null','images/p-4.png')
insert into Sanpham values('E','320','-15%','null','images/p-5.png')
insert into Sanpham values('F','325','-25%','null','images/p-6.png')
insert into Sanpham values('G','350','-15%','null','images/p-7.png')
insert into Sanpham values('H','300','-10%','null','images/p-8.png')
insert into Sanpham values('I','350','-20%','null','images/p-5.png')
insert into Sanpham values('J','325','-15%','null','images/p-2.png')