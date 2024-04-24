CREATE TABLE [dbo].[MealFood]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[MealId] [int] NOT NULL,
[FoodId] [int] NOT NULL,
[Amount] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MealFood] ADD CONSTRAINT [PK__MealFood__3214EC070AE7E6E1] PRIMARY KEY CLUSTERED ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MealFood] ADD CONSTRAINT [FK__MealFood__FoodId__1BC821DD] FOREIGN KEY ([FoodId]) REFERENCES [dbo].[Food] ([Id])
GO
ALTER TABLE [dbo].[MealFood] ADD CONSTRAINT [FK__MealFood__MealId__1AD3FDA4] FOREIGN KEY ([MealId]) REFERENCES [dbo].[Meal] ([Id])
GO
