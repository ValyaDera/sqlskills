--Clensed DimCustomer table
SELECT 
  c.CustomerKey As [Customer Key], 
  --[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  c.FirstName As [First Name] --,[MiddleName]
  , 
  c.LastName As [Last Name] --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  , 
  CASE c.Gender when 'M' then 'Male' when 'F' then 'Female' end As Gender --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  , 
  c.DateFirstPurchase As [Date of the first purchase], 
  --,[CommuteDistance]
  g.city As [Customer city] 
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] as c 
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimGeography] as g on g.GeographyKey = c.GeographyKey 
order by 
  [Customer Key] ASC --Ordered by CustomerKey
