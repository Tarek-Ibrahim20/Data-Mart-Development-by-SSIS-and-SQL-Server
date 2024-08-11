Use DW_AdventureWorks
go

-- Create Table 
Create Table Dim_Territory
(
Territory_Key int not null Identity(1,1) ,
Territory_Id int not null ,
Territory_Name nvarchar(50) ,
Territory_Country nvarchar(50) ,
Territory_Group nvarchar(50) ,
Source_System_Code tinyint not null ,
Start_Date datetime not null default getdate() ,
End_Date datetime,
Is_Current tinyint default 1 Check ( Is_Current in (0,1))
Constraint PK_Dim_Territory Primary Key Clustered (Territory_Key)
)

-- Insert Unknown Record
Set Identity_insert Dim_Territory on

Insert Into Dim_Territory(Territory_Key,Territory_Id,Territory_Name,Territory_Country,Territory_Group,Source_System_Code,Start_Date,End_Date,Is_Current)
Values( 0,0,'Unknown','Unknown','Unknown',0,1900/1/1,null,0)

Set Identity_insert Dim_Territory off

-- Add index on Territory_Id
If exists( Select * from sys.indexes where name = 'Ind_DimTerritory_TerritoryId' )
	drop Index Dim_Territory.Ind_DimTerritory_TerritoryId

Create Index Ind_DimTerritory_TerritoryId on Dim_Territory(Territory_Id)


-- Add index on Territory_Country
If exists( Select * from sys.indexes where name = 'Ind_DimTerritory_TerritoryName' )
	drop Index Dim_Territory.Ind_DimTerritory_Name

Create Index Ind_DimTerritory_TerritoryName on Dim_Territory(Territory_Name)


-- Add index on Territory_Country
If exists( Select * from sys.indexes where name = 'Ind_DimTerritory_TerritoryCountry' )
	drop Index Dim_Territory.Ind_DimTerritory_TerritoryCountry

Create Index Ind_DimTerritory_TerritoryCountry on Dim_Territory(Territory_Country)
