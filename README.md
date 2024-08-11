# Data Mart Development Using SSIS and SQL Server
## Overview:
This project showcases the development of a Data Mart using SQL Server Integration Services (SSIS) in conjunction with SQL Server. The project initially focuses on constructing a data warehouse and establishing dimensions for products, customers, territories, and date, alongside a fact table for sales data. SSIS is utilized to transfer data from the database to the data warehouse, with the exception of the date dimension, which is populated using T-SQL.

## Key Components:
https://github.com/Tarek-Ibrahim20/Data-Mart-Development-by-SSIS-and-SQL-Server/blob/52bbbff4221fb6831f0bd4b6ecac24686c339493/Create%20Database.sql
### Data Warehouse Setup: The project commences by building a data warehouse structure to support analytical queries efficiently.
 
### Dimension Creation:
#### Product Dimension:
Creating a dimension table to capture and provide insights into product-related data for analysis and reporting purposes.
#### Customer Dimension:
Designing a dimension table to store customer-related information, enabling segmentation and analysis based on customer attributes.
#### Territory Dimension:
Developing a dimension table to define and categorize territories, facilitating geographic analysis and performance evaluation.
#### Date Dimension:
Building a dimension table specifically for dates to enable time-based analysis and reporting within the data mart.
#### Fact Table (Sales):
Establishing a fact table to store quantitative sales data, facilitating the analysis of sales performance and trends.

SSIS Implementation: SSIS is employed to migrate data from the database to the data warehouse. Various SSIS components, such as Slowly Changing Dimension, are utilized to manage and track historical changes in dimension attributes effectively.
Data Extraction and Transformation: Data is extracted from the data source, transformed to align with the data warehouse structure, and then loaded into the data warehouse.
Incremental Load Control: A control table is developed to regulate incremental loading. The last load datetime is updated each time the package runs to retrieve new data from the data source.
Learning Focus:
Throughout the project, the team gains deep insights into data warehousing concepts and strengthens their ETL (Extract, Transform, Load) skills. Exposure to key concepts such as data modeling, dimension hierarchies, slowly changing dimensions, and incremental loading enriches their understanding of data management and analysis.

Technologies Used:

SQL Server
SQL Server Integration Services (SSIS)
T-SQL
Contributions:
Contributions to this project may include enhancements to dimension structures, optimization of ETL processes, implementation of additional SSIS features, or documentation improvements to aid in knowledge sharing.

Future Development:
Future enhancements could involve integrating additional data sources, refining ETL processes for improved performance, implementing data quality checks, or expanding the data mart to incorporate more dimensions and facts.

Conclusion:
This project serves as a valuable resource for individuals looking to explore data warehousing, SSIS, and ETL practices. By examining the project's structure and implementation details, users can deepen their understanding of data management and analytics within a business intelligence context.
