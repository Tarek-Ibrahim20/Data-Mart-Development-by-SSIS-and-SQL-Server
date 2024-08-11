USE DW_AdventureWorks
GO

-- create control table

Create TABLE Incremental_Control_table (
	ID int IDENTITY (1, 1),
	Source_table nvarchar(50) NOT NULL,
	Last_load_date datetime
);


INSERT INTO Incremental_Control_table (source_table, last_load_date)
	VALUES ('sales orders', '1900-01-01')
