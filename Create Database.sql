--Create Datawarehouse
use master

if exists( select 1 from sys.databases where name = 'DW_AdventureWorks')
drop database DW_AdventureWorks

CREATE DATABASE DW_AdventureWorks
ON 
( Name = 'DW_AdventureWorks_Data', FileName = 'C:\Tarek\DW Files\DW_AdventureWorks_Data.mdf'),
( Name = 'DW_AdventureWorks_logical', FileName = 'C:\Tarek\DW Files\DW_AdventureWorks_Data.ldf')
Go
