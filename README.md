# Data Mart Development Using SSIS and SQL Server
## Overview:
This project showcases the development of a Data Mart using SQL Server Integration Services (SSIS) in conjunction with SQL Server. The project initially focuses on constructing a data warehouse and establishing dimensions for products, customers, territories, and date, alongside a fact table for sales data. SSIS is utilized to transfer data from the database to the data warehouse, with the exception of the date dimension, which is populated using T-SQL.

## Key Components:
### Data Warehouse Setup:
The project commences by building a data warehouse structure to support analytical queries efficiently. <br>

[View SQL File](https://github.com/Tarek-Ibrahim20/Data-Mart-Development-by-SSIS-and-SQL-Server/blob/52bbbff4221fb6831f0bd4b6ecac24686c339493/Create%20Database.sql) 
### Dimensions Creation:
#### Product Dimension:
Creating a dimension table to capture and provide insights into product-related data for analysis and reporting purposes.<br>

[View SQL File](https://github.com/Tarek-Ibrahim20/Data-Mart-Development-by-SSIS-and-SQL-Server/blob/52bbbff4221fb6831f0bd4b6ecac24686c339493/Dim_Product%20Query.sql) 
#### Customer Dimension:
Designing a dimension table to store customer-related information, enabling segmentation and analysis based on customer attributes. <br>

[View SQL File](https://github.com/Tarek-Ibrahim20/Data-Mart-Development-by-SSIS-and-SQL-Server/blob/52bbbff4221fb6831f0bd4b6ecac24686c339493/Dim_Customer%20Query.sql)
#### Territory Dimension:
Developing a dimension table to define and categorize territories, facilitating geographic analysis and performance evaluation. <br>

[View SQL File](https://github.com/Tarek-Ibrahim20/Data-Mart-Development-by-SSIS-and-SQL-Server/blob/52bbbff4221fb6831f0bd4b6ecac24686c339493/Dim_Territory%20Query.sql)
#### Date Dimension:
Building a dimension table specifically for dates to enable time-based analysis and reporting within the data mart. <br>

[View SQL File](https://github.com/Tarek-Ibrahim20/Data-Mart-Development-by-SSIS-and-SQL-Server/blob/52bbbff4221fb6831f0bd4b6ecac24686c339493/SQL%20Date%20Dimension%20Query.sql#L17)
#### Fact Table (Sales):
Establishing a fact table to store quantitative sales data, facilitating the analysis of sales performance and trends. <br>

[View SQL File](https://github.com/Tarek-Ibrahim20/Data-Mart-Development-by-SSIS-and-SQL-Server/blob/52bbbff4221fb6831f0bd4b6ecac24686c339493/Fact_Sales%20Query.sql)

#### Incremental Load Control:
A control table is developed to regulate incremental loading. The last load datetime is updated each time the package runs to retrieve new data from the data source. <br> 

[View SQL file](https://github.com/Tarek-Ibrahim20/Data-Mart-Development-by-SSIS-and-SQL-Server/blob/adc19d1799d098f2d3a932d92433a15a9e7acea5/Control%20Load%20Query.sql)

### SSIS Implementation:
SSIS is employed to migrate data from the database to the data warehouse. Various SSIS components, such as Slowly Changing Dimension, are utilized to manage and track historical changes in dimension attributes effectively.
Data is extracted from the data source, transformed by many transformations like dealing with nulls and data types to align with the data warehouse structure, and then loaded into the data warehouse. <br>
![Dim_Product ETL](https://github.com/Tarek-Ibrahim20/Data-Mart-Development-by-SSIS-and-SQL-Server/blob/a18734f22c96544aa444023960a2a4b689c3d546/Dim_Product%20ETL.png)

![Dim_Customer ETL](https://github.com/Tarek-Ibrahim20/Data-Mart-Development-by-SSIS-and-SQL-Server/blob/a18734f22c96544aa444023960a2a4b689c3d546/Dim_Customers.png)

![Dim_Customer ETL](https://github.com/Tarek-Ibrahim20/Data-Mart-Development-by-SSIS-and-SQL-Server/blob/a18734f22c96544aa444023960a2a4b689c3d546/Dim_Territory%20ETL.png)

![Fact_Sales Control Flow ETL](https://github.com/Tarek-Ibrahim20/Data-Mart-Development-by-SSIS-and-SQL-Server/blob/a18734f22c96544aa444023960a2a4b689c3d546/Fact_Sales%20ETL.png)

![Fact_Sales Data Flow ETL](https://github.com/Tarek-Ibrahim20/Data-Mart-Development-by-SSIS-and-SQL-Server/blob/a18734f22c96544aa444023960a2a4b689c3d546/Fact_Sales%20ETL.png)

### Learning Focus:
Throughout this project, I gained deep insights into data warehousing concepts and strengthened my ETL (Extract, Transform, Load) skills. Exposure to key concepts such as data modeling, dimension hierarchies, slowly changing dimensions, and incremental loading enriched my understanding of data management and analysis.

### Technologies Used:
SQL Server
SQL Server Integration Services (SSIS)
T-SQL

### Future Development:
Future enhancements could involve integrating additional data sources, refining ETL processes for improved performance, implementing data quality checks, or expanding the data mart to incorporate more dimensions and facts.

### Conclusion:
This project serves as a valuable resource for individuals looking to explore data warehousing, SSIS, and ETL practices. By examining the project's structure and implementation details, users can deepen their understanding of data management and analytics within a business intelligence context.

## Feel free to contact me for any info
### LinkdIn: [linkedin.com/in/tarek-ebrahim20](https://www.linkedin.com/in/tarek-ebrahim20)
###  Email: tareke.albeahy20@gmail.com
