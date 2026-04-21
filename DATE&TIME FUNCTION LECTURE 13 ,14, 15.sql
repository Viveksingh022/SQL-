

--SELECT * FROM Sales.Orders;

/*
SELECT 
OrderID,
OrderDate,
ShipDate,
CreationTime
FROM Sales.Orders

*/

/*

--GETDATE FUNCTION

SELECT 
OrderID,
OrderDate,
CreationTime,
'2025- 03-21' HardCoded,
GETDATE() Today 
FROM Sales.Orders

*/

/*

--DAY,MONTH ,YEAR FUNCTION

SELECT 
OrderID,
OrderDate,
CreationTime,
YEAR(CreationTime) Year,
MONTH(CreationTime) Month,
DAY(CreationTime) Day
FROM Sales.Orders

*/

/*

--DATEPART FUNCTION



SELECT 
    OrderID,
    OrderDate,
    CreationTime,
    DATEPART(Month, CreationTime) AS datemonth,
    DATEPART(Year, CreationTime) AS dateyear,
    DATEPART(Day, CreationTime) AS dateday
FROM Sales.Orders;

*/

/*

--DATENAME(PART , DATE);

SELECT 
OrderID,
OrderDate,
CreationTime,
DATENAME(month, CreationTime) AS Month_dn,
    DATENAME(weekday, CreationTime) AS Weekday_dn,
    DATENAME(day, CreationTime) AS Day_dn,
    DATENAME(year, CreationTime) AS Year_dn

FROM Sales.Orders

*/


/*

---DATETRUNC

SELECT 
OrderID,
OrderDate,
CreationTime,
DATENAME(month, CreationTime) AS Month_dn,
    DATENAME(weekday, CreationTime) AS Weekday_dn,
    DATENAME(day, CreationTime) AS Day_dn,
    DATENAME(year, CreationTime) AS Year_dn,

   DATETRUNC(year, CreationTime) AS Year_dt,
    DATETRUNC(day, CreationTime) AS Day_dt,
    DATETRUNC(minute, CreationTime) AS Minute_dt

FROM Sales.Orders

*/

 --EOMONTH

 SELECT 
    OrderID,
    OrderDate,
    CreationTime,
    -- Start of Month (truncate to month)
    DATETRUNC(month, CreationTime) AS StartOfMonth,
    -- End of Month
    EOMONTH(CreationTime) AS EndOfMonth
FROM Sales.Orders;
