Use DW_AdventureWorks

--Create Product dimension
Create Table Dim_Products
(
Product_Key int not null identity(1,1) ,  
Product_Id int not null,
Product_Name nvarchar(50) ,
Color nvarchar(15) ,
Reorder_Point smallint ,
Standard_Cost money ,
Product_Description nvarchar(400),
Product_Subcategory nvarchar(50) ,
Product_Category nvarchar(50) ,
Product_Model nvarchar(50) ,
Source_System_Code tinyint not null ,
Start_Date Datetime not null default(getdate()) ,
End_Date Datetime ,
Is_Current Tinyint not null default(1) check( Is_Current in (0,1)),
Constraint PK_Dim_Product Primary Key Clustered (Product_Key) 
);

-- Insert Unknown Record
set identity_insert Dim_Products on

insert into Dim_Products (Product_Key,Product_Id,Product_Name,Color,Reorder_Point,Standard_Cost,Product_Description,Product_Subcategory,Product_Category,Product_Model,Source_System_Code,Start_Date,End_Date,Is_Current)
values(0,0,'Unknown','Unknown',0,0,'Unknown','Unknown','Unknown','Unknown',0 ,1900/1/1 , null ,0)

set identity_insert Dim_Products off

-- Add Index on Product_Id
If exists (select 1 from sys.indexes where name = 'Ind_Products_ProductID')
	Drop Index Dim_Products.Ind_Products_ProductID
Else
	Create Index Ind_Products_ProductID on Dim_Products(Product_Id)

-- Add Index on Product_Name
If exists (select 1 from sys.indexes where name = 'Ind_Products_ProductName')
	Drop Index Dim_Products.Ind_Products_ProductName
Else
	Create Index Ind_Products_ProductName on Dim_Products(Product_Name)

-- Add Index on Product_Category
If exists (select 1  from sys.indexes where name = 'Ind_Products_Product_Category')
	Drop Index Dim_Products.Product_Category
Else
	Create Index Ind_Products_Product_Category on Dim_Products(Product_Category)

