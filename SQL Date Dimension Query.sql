Use DW_AdventureWorks
go

-- Create a temporary table to hold the dimension date data
Create Table Dim_Date (
    fulldate DATE,
    datekey int primary key,
    year INT,
    month INT,
    monthname VARCHAR(20),
    quarter INT,
    dayofweek INT
);





-- Declare variables for date range
DECLARE @StartDate DATE = '2010-01-01';
DECLARE @EndDate DATE = '2030-12-31';
DECLARE @DateKey INT = 0;

-- Loop through the date range and insert data into the temporary table
WHILE @StartDate <= @EndDate
BEGIN
    SET @DateKey = YEAR(@StartDate) * 10000 + MONTH(@StartDate) * 100 + DAY(@StartDate);

    INSERT INTO Dim_Date (fulldate, datekey, year, month, monthname, quarter, dayofweek)
    VALUES (
        @StartDate,
        @DateKey,
        YEAR(@StartDate),
        MONTH(@StartDate),
        DATENAME(MONTH, @StartDate),
        DATEPART(QUARTER, @StartDate),
        DATEPART(WEEKDAY, @StartDate)
    );

    SET @StartDate = DATEADD(DAY, 1, @StartDate);
END


