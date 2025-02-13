USE [DatabaseHotel]
GO
/****** Object:  Table [dbo].[Deduction]    Script Date: 7/18/2019 11:04:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deduction](
	[DeductionId] [int] IDENTITY(1,1) NOT NULL,
	[DeductionFee] [int] NOT NULL,
	[DeductionReason] [varchar](50) NOT NULL,
	[ReservationId] [int] NOT NULL,
 CONSTRAINT [PK_Deduction] PRIMARY KEY CLUSTERED 
(
	[DeductionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FundRequest]    Script Date: 7/18/2019 11:04:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FundRequest](
	[FundRequestId] [int] IDENTITY(1,1) NOT NULL,
	[FundRequestDescription] [varchar](50) NOT NULL,
	[FundRequestAmount] [int] NOT NULL,
 CONSTRAINT [PK_FundRequest] PRIMARY KEY CLUSTERED 
(
	[FundRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guest]    Script Date: 7/18/2019 11:04:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guest](
	[GuestId] [int] IDENTITY(1,1) NOT NULL,
	[GuestName] [varchar](50) NOT NULL,
	[GuestDataId] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GuestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingredient]    Script Date: 7/18/2019 11:04:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredient](
	[IngredientId] [int] IDENTITY(1,1) NOT NULL,
	[IngredientName] [varchar](50) NOT NULL,
	[IngredientStock] [int] NOT NULL,
	[IngredientMinimumStock] [int] NOT NULL,
 CONSTRAINT [PK_Ingredient] PRIMARY KEY CLUSTERED 
(
	[IngredientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/18/2019 11:04:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[OrderType] [varchar](50) NOT NULL,
	[OrderFood] [varchar](50) NOT NULL,
	[OrderQuantity] [int] NOT NULL,
	[OrderDelete] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseRequest]    Script Date: 7/18/2019 11:04:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseRequest](
	[PurchaseRequestId] [int] NOT NULL,
	[PurchaseRequestDescription] [varchar](50) NOT NULL,
	[PurchaseRequestAmount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PurchaseRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservation]    Script Date: 7/18/2019 11:04:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservation](
	[ReservationId] [int] IDENTITY(1,1) NOT NULL,
	[CheckIn] [date] NOT NULL,
	[CheckOut] [date] NOT NULL,
	[RoomId] [int] NOT NULL,
	[DepositMoney] [int] NOT NULL,
	[ReservationFee] [int] NOT NULL,
	[ReviewId] [int] NULL,
	[Complaint] [varchar](50) NULL,
	[DeleteReservation] [int] NOT NULL,
	[DeleteTicket] [int] NOT NULL,
 CONSTRAINT [PK_Reservation] PRIMARY KEY CLUSTERED 
(
	[ReservationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 7/18/2019 11:04:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[RoomId] [int] NOT NULL,
	[RoomNumber] [int] NOT NULL,
	[RoomStatus] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 7/18/2019 11:04:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[StaffId] [int] IDENTITY(1,1) NOT NULL,
	[StaffName] [varchar](50) NOT NULL,
	[StaffPosition] [varchar](50) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[StaffSalary] [int] NULL,
	[DeleteStaff] [int] NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[StaffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supply]    Script Date: 7/18/2019 11:04:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supply](
	[SupplyId] [int] IDENTITY(1,1) NOT NULL,
	[SupplyName] [varchar](50) NOT NULL,
	[SupplyStock] [int] NOT NULL,
	[SetSupplyMinimumStock] [int] NOT NULL,
 CONSTRAINT [PK_Supply] PRIMARY KEY CLUSTERED 
(
	[SupplyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Ingredient] ADD  DEFAULT ((0)) FOR [IngredientMinimumStock]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT ((0)) FOR [OrderDelete]
GO
ALTER TABLE [dbo].[Reservation] ADD  DEFAULT ((0)) FOR [DeleteReservation]
GO
ALTER TABLE [dbo].[Reservation] ADD  DEFAULT ((0)) FOR [DeleteTicket]
GO
ALTER TABLE [dbo].[Staff] ADD  DEFAULT ((0)) FOR [DeleteStaff]
GO
ALTER TABLE [dbo].[Supply] ADD  DEFAULT ((0)) FOR [SetSupplyMinimumStock]
GO
ALTER TABLE [dbo].[Deduction]  WITH CHECK ADD FOREIGN KEY([ReservationId])
REFERENCES [dbo].[Reservation] ([ReservationId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
