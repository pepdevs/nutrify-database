CREATE TABLE [dbo].[Food]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FoodCategoryId] [int] NOT NULL,
[Kcal] [int] NOT NULL CONSTRAINT [DF__Food__Kcal__00200768] DEFAULT ((0)),
[Fat] [decimal] (10, 2) NOT NULL CONSTRAINT [DF__Food__Fat__01142BA1] DEFAULT ((0)),
[SaturatedFat] [decimal] (10, 2) NOT NULL CONSTRAINT [DF__Food__SaturatedF__02084FDA] DEFAULT ((0)),
[Carbs] [decimal] (10, 2) NOT NULL CONSTRAINT [DF__Food__Carbs__02FC7413] DEFAULT ((0)),
[Sugar] [decimal] (10, 2) NOT NULL CONSTRAINT [DF__Food__Sugar__03F0984C] DEFAULT ((0)),
[Fiber] [decimal] (10, 2) NOT NULL CONSTRAINT [DF__Food__Fiber__04E4BC85] DEFAULT ((0)),
[Starch] [decimal] (10, 2) NOT NULL CONSTRAINT [DF__Food__Starch__05D8E0BE] DEFAULT ((0)),
[Protein] [decimal] (10, 2) NOT NULL CONSTRAINT [DF__Food__Protein__06CD04F7] DEFAULT ((0)),
[Calcium] [int] NOT NULL CONSTRAINT [DF__Food__Calcium__07C12930] DEFAULT ((0)),
[Potassium] [int] NOT NULL CONSTRAINT [DF__Food__Potassium__08B54D69] DEFAULT ((0)),
[Sodium] [int] NOT NULL CONSTRAINT [DF__Food__Sodium__09A971A2] DEFAULT ((0)),
[Chloride] [int] NOT NULL CONSTRAINT [DF__Food__Chloride__0A9D95DB] DEFAULT ((0)),
[Phosphorous] [int] NOT NULL CONSTRAINT [DF__Food__Phosphorou__0B91BA14] DEFAULT ((0)),
[Magnesium] [int] NOT NULL CONSTRAINT [DF__Food__Magnesium__0C85DE4D] DEFAULT ((0)),
[Iron] [int] NOT NULL CONSTRAINT [DF__Food__Iron__0D7A0286] DEFAULT ((0)),
[Copper] [int] NOT NULL CONSTRAINT [DF__Food__Copper__0E6E26BF] DEFAULT ((0)),
[Fluoride] [int] NOT NULL CONSTRAINT [DF__Food__Fluoride__0F624AF8] DEFAULT ((0)),
[Selenium] [int] NOT NULL CONSTRAINT [DF__Food__Selenium__10566F31] DEFAULT ((0)),
[Zinc] [int] NOT NULL CONSTRAINT [DF__Food__Zinc__114A936A] DEFAULT ((0)),
[Chromium] [int] NOT NULL CONSTRAINT [DF__Food__Chromium__123EB7A3] DEFAULT ((0)),
[Molybedum] [int] NOT NULL CONSTRAINT [DF__Food__Molybedum__1332DBDC] DEFAULT ((0)),
[Iodine] [int] NOT NULL CONSTRAINT [DF__Food__Iodine__14270015] DEFAULT ((0)),
[Mangasene] [int] NOT NULL CONSTRAINT [DF__Food__Mangasene__151B244E] DEFAULT ((0)),
[IsSafe] [bit] NOT NULL CONSTRAINT [DF__Food__IsSafe__160F4887] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Food] ADD CONSTRAINT [PK__Food__3214EC07A549B953] PRIMARY KEY CLUSTERED ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Food] ADD CONSTRAINT [FK__Food__FoodCatego__7F2BE32F] FOREIGN KEY ([FoodCategoryId]) REFERENCES [dbo].[FoodCategory] ([Id])
GO
