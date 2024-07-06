SELECT 
  c.customerkey AS CustomerKey, 
  -- ,[GeographyKey]
  -- ,[CustomerAlternateKey]
  -- ,[Title]
  c.firstname as [First Name], 
  -- ,[MiddleName]
  c.lastname as [Last Name], 
  c.firstname + ' ' + c.lastname as [Full Name], 
  -- Combined First and Last Name
  -- ,[NameStyle]
  -- ,[BirthDate]
  --  ,[MaritalStatus]
  -- ,[Suffix]
  Case c.gender When 'M' Then 'Male' When 'F' Then 'Female' end as Gender, 
  -- ,[Gender]
  -- ,[EmailAddress]
  -- ,[YearlyIncome]
  -- ,[TotalChildren]
  -- ,[NumberChildrenAtHome]
  -- ,[EnglishEducation]
  -- ,[SpanishEducation]
  -- ,[FrenchEducation]
  -- ,[EnglishOccupation]
  -- ,[SpanishOccupation]
  -- ,[FrenchOccupation]
  -- ,[HouseOwnerFlag]
  -- ,[NumberCarsOwned]
  -- ,[AddressLine1]
  -- ,[AddressLine2]
  -- ,[Phone]
  c.datefirstpurchase as DateFirstPurchase, 
  -- ,[DateFirstPurchase]
  --,[CommuteDistance]
  g.city AS [Customer City] -- Joined in Customer City from Geography Table
FROM 
  dbo.DimCustomer as c 
  Left Join dbo.DimGeography as g on g.GeographyKey = c.GeographyKey 
order by 
  CustomerKey ASC -- Ordered list by CustomerKey
  --[AdventureWorksDW2022].[dbo].[DimCustomer]
