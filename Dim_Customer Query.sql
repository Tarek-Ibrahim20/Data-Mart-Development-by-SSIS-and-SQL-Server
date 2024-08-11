use DW_AdventureWorks

-- Creating Table
Create Table Dim_Customers
(
Customer_Key int not null identity(1,1) ,
Customer_ID int not null,
Customer_Name nvarchar(200),
Address_1 nvarchar(100),
Address_2 nvarchar(100),
City nvarchar(30),
Phone_Number nvarchar(25),
Source_System_Code tinyint not null,
Start_Date Datetime not null default(getdate()) ,
End_Date Datetime ,
Is_Current Tinyint not null default(1) check( Is_Current in (0,1)),
Constraint PK_Dim_Customer Primary Key Clustered (Customer_Key)
);

-- Insert Unknown Record
set identity_insert Dim_Customers on

Insert into Dim_Customers(Customer_Key,Customer_ID,Customer_Name,Address_1,Address_2,City,Phone_Number,Source_System_Code,Start_Date,End_Date,Is_Current)
Values(0,0,'Unknown','Unknown','Unknown','Unknown','Unknown',0,1900/1/1,null,0)

set identity_insert Dim_Customers on


-- Add Index on Customer_Id
If exists( select * from sys.indexes where name = 'Ind_Customers_CustomerId')
	Drop Index Dim_Customers.Ind_Customers_CustomerId	
Else
	Create Index Ind_Customers_CustomerId on Dim_Customers(Customer_Id)

-- Add Index on City
If exists( select * from sys.indexes where name = 'Ind_Customers_City')
	Drop Index Dim_Customers.Ind_Customers_City
Else
	Create Index Ind_Customers_City on Dim_Customers(City)