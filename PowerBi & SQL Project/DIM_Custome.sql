-- cleansed DIM_Customers Table --
SELECT 
	   [CustomerKey] AS CustomerKey ,
     -- ,[GeographyKey]
     -- ,[CustomerAlternateKey]
     -- ,[Title]
      [FirstName] AS [First Name],
    --  ,[MiddleName]
      [LastName] AS [Last Name],
	  c.FirstName + ' ' + c.LastName AS [Full Name],
    --  ,[NameStyle]
     -- ,[BirthDate]
     -- ,[MaritalStatus]
    --  ,[Suffix]
      CASE c.Gender When 'M' Then 'Male' When 'F' Then 'Female' END AS Gender
    --  ,[EmailAddress]
    --  ,[YearlyIncome]
    --  ,[TotalChildren]
   --   ,[NumberChildrenAtHome]
    --  ,[EnglishEducation]
    --  ,[SpanishEducation]
    --  ,[FrenchEducation]
    --  ,[EnglishOccupation]
    --  ,[SpanishOccupation]
     -- ,[FrenchOccupation]
     -- ,[HouseOwnerFlag]
   --   ,[NumberCarsOwned]
   --   ,[AddressLine1]
  --    ,[AddressLine2]
    --  ,[Phone]
      ,c.DateFirstPurchase AS [DateFisrtPurchase],

   --   ,[CommuteDistance]
   g.City AS [CustomerCity]
  FROM 
 dbo.DimCustomer AS c
 LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey
 ORDER BY
 CustomerKey ASC -- Order List By CustomerKey 
