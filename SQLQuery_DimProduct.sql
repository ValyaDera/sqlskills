--Cleaned DimProduct Table
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] as ProductItemName, 
  --[ProductSubcategoryKey]
  --[WeightUnitMeasureCode]
  --[SizeUnitMeasureCode]
  p.[EnglishProductName] AS [Product Name], 
  ps.EnglishProductSubcategoryName as [Sub Category], --Joined in from Sub Category Table
  pc.EnglishProductCategoryName as [Product Category], -- Joined in from Category table
  --[SpanishProductName]
  --,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag]
  p.[Color] as [Product Color], 
  --[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice]
  p.[Size] as [Product Size], 
  --[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  p.[ProductLine] as [Product Line], 
  --[DealerPrice]
  --,[Class]
  --,[Style]
  p.[ModelName] as[Produc Model Name], 
  --[LargePhoto]
  p.[EnglishDescription] as [Product Description], 
  --[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  --,[StartDate]
  --,[EndDate]
  --[Status]
  ISNULL (p.Status, 'Outdated') as [Product Status] 
FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] as p 
  left join DimProductSubcategory as ps on ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  left join DimProductCategory as pc on pc.ProductCategoryKey = pc.ProductCategoryKey 
Order by 
  ProductKey asc
