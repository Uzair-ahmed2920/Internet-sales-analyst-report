-- cleansed DIM_DateTable
SELECT 
  [DateKey], 
  [FullDateAlternateKey] As Date ,
  -- ,[DayNumberOfWeek], 
  [EnglishDayNameOfWeek] As Day,
  -- ,[SpanishDayNameOfWeek]
  -- ,[FrenchDayNameOfWeek]
  --  ,[DayNumberOfMonth]
  -- ,[DayNumberOfYear] 
  [WeekNumberOfYear] As WeekNr, 
  [EnglishMonthName] As Month,
  Left ([EnglishMonthName],3 ) As MonthShort,
  -- ,[SpanishMonthName]
  --  ,[FrenchMonthName] 
  [MonthNumberOfYear] As MonthNo, 
  [CalendarQuarter] As Quarter, 
  [CalendarYear] As Year
  -- ,[CalendarSemester]
  -- ,[FiscalQuarter]
  -- ,[FiscalYear]
  --  ,[FiscalSemester]
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate]
  where [CalendarYear] >= 2022
