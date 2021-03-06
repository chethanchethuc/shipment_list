USE [TASK]
GO
/****** Object:  Table [dbo].[tbl_Shipment]    Script Date: 01-12-2021 15:12:44 *******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Shipment](
	[shipment_Id] [int] IDENTITY(1,1) NOT NULL,
	[sender_Name] [nvarchar](50) NULL,
	[description] [nvarchar](500) NULL,
	[recipient_Address] [nvarchar](500) NULL,
	[expedited] [bit] NULL,
	[shipment_Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Shipment] PRIMARY KEY CLUSTERED 
(
	[shipment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tbl_Shipment] ON 

INSERT [dbo].[tbl_Shipment] ([shipment_Id], [sender_Name], [description], [recipient_Address], [expedited], [shipment_Type]) VALUES (5, N'Ramu', N'New Materials will receive based on requirement', N'Chennai', 0, N'Truckload')
INSERT [dbo].[tbl_Shipment] ([shipment_Id], [sender_Name], [description], [recipient_Address], [expedited], [shipment_Type]) VALUES (19, N'Nataraj', N'Old Materials Quality is good for all types of Products', N'Bangalore', 0, N'Truckload')
SET IDENTITY_INSERT [dbo].[tbl_Shipment] OFF
