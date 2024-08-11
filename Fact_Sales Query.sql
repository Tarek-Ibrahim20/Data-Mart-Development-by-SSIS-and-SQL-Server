Use DW_AdventureWorks
go

If exists ( select 1 from sys.tables where name = 'Fact_Sales')
	Drop table Fact_Sales

-- Create Fact Table
Create Table Fact_Sales
(
Date_key int not null,
Territory_Key int not null ,
Customer_Key int not null  ,
Product_Key int not null  ,  
Order_ID nvarchar(50) not null ,
Line_Item int not null ,
Order_Date_Id int not null ,
Quantity int ,
Unit_Cost money,
Unit_Price money,
Freight money ,
Tax_Amount Money ,
Extended_Sales money,
Extended_Cost money ,
Created_At datetime default getdate() ,
Constraint PK_Fact_Sales Primary Key Clustered (Order_Id , Line_Item),
Constraint Fk_DimDate_FactSales foreign key (Date_Key) References Dim_Date(Datekey) ,
Constraint FK_DimTerritory_FactSales Foreign Key (Territory_Key) References Dim_Territory(Territory_Key) ,
Constraint FK_DimProduct_Fact_Sales Foreign Key (Product_Key) References Dim_Products(Product_Key) ,
Constraint FK_DimCustomer_FactSales Foreign Key (Customer_Key) References Dim_Customers(Customer_Key)
);


-- Create Indexes 

 If not exists( select 1 from sys.indexes
where name = 'ind_factsales_product_key'
And object_id = object_id('Fact_Sales') )
	Create index ind_factsales_product_key on Fact_Sales(Product_Key)


 If not exists( select 1 from sys.indexes
where name = 'ind_factsales_customer_Key'
And object_id = object_id('Fact_Sales') )
	Create index ind_factsales_customer_Key on Fact_Sales(customer_Key)


 If not exists( select 1 from sys.indexes
where name = 'ind_factsales_territory_Key'
And object_id = object_id('Fact_Sales') )
	Create index ind_factsales_territory_Key on Fact_Sales(territory_Key)


 If not exists( select 1 from sys.indexes
where name = 'ind_factsales_Date_Key'
And object_id = object_id('Fact_Sales') )
	Create index ind_factsales_Date_Key on Fact_Sales(Date_Key)	