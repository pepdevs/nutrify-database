CREATE TABLE [dbo].[Meal]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Date] [datetime2] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Meal] ADD CONSTRAINT [PK__Meal__3214EC0790C57AD4] PRIMARY KEY CLUSTERED ([Id]) ON [PRIMARY]
GO
