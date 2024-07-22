CREATE TABLE [dbo].[FoodMicronutrient]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[FoodId] [int] NOT NULL,
[MicronutrientId] [int] NOT NULL,
[Amount] [decimal] (10, 2) NOT NULL CONSTRAINT [DF__FoodMicro__Amoun__339FAB6E] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FoodMicronutrient] ADD CONSTRAINT [PK__FoodMicr__3214EC070C7AF5F5] PRIMARY KEY CLUSTERED ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FoodMicronutrient] ADD CONSTRAINT [FK__FoodMicro__FoodI__31B762FC] FOREIGN KEY ([FoodId]) REFERENCES [dbo].[Food] ([Id])
GO
ALTER TABLE [dbo].[FoodMicronutrient] ADD CONSTRAINT [FK__FoodMicro__Micro__32AB8735] FOREIGN KEY ([MicronutrientId]) REFERENCES [dbo].[Micronutrient] ([Id])
GO
