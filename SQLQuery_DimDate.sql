--Cleansed DimDate Table--
SELECT 
  --[DateKey],
  [FullDateAlternateKey] As Date, 
  --[DayNumberOfWeek], 
  [EnglishDayNameOfWeek] AS Day, 
  --[SpanishDayNameOfWeek], 
  --[FrenchDayNameOfWeek], 
  --[DayNumberOfMonth], 
  --[DayNumberOfYear], 
  [WeekNumberOfYear] AS WeekNr, 
  [EnglishMonthName] AS Month, 
  LEFT([EnglishMonthName], 3) As MonthShort, 
  --[SpanishMonthName], 
  --[FrenchMonthName], 
  [MonthNumberOfYear] AS MonthNr, 
  [CalendarQuarter]As Quater, 
  [CalendarYear] AS Year --[CalendarSemester], 
  --[FiscalQuarter], 
  --[FiscalYear], 
  --[FiscalSemester]
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate] 
where 
  CalendarYear >= 2021
