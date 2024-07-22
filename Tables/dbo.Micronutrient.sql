CREATE TABLE [dbo].[Micronutrient]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Unit] [nvarchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MaleDailyRequirement] [decimal] (10, 2) NULL CONSTRAINT [DF__Micronutr__MaleD__282DF8C2] DEFAULT ((0)),
[WomenDailyRequirement] [decimal] (10, 2) NULL CONSTRAINT [DF__Micronutr__Women__29221CFB] DEFAULT ((0)),
[BodyContent] [decimal] (10, 2) NULL CONSTRAINT [DF__Micronutr__BodyC__2A164134] DEFAULT ((0)),
[BodyContentUnit] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Micronutrient] ADD CONSTRAINT [PK_Micronutrient] PRIMARY KEY CLUSTERED ([Id]) ON [PRIMARY]
GO
