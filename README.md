# SQL Data Warehouse (Medallion) — Portfolio Project

This project demonstrates a comprehensive data warehousing and analytics solution, from building a data warehouse to generating actionable insights. Designed as a portfolio project, it highlights industry best practices in data engineering and analytics.

Data Architecture:
The data architecture for this project follows Medallion Architecture Bronze, Silver, and Gold layers:

<img width="1071" height="574" alt="bronze_layer_final drawio" src="https://github.com/user-attachments/assets/2d5f278e-ffed-4309-b81a-32741cf6b1ec" />

1. Bronze Layer: Stores raw data as-is from the source systems. Data is ingested from CSV Files into SQL Server Database.
2. Silver Layer: This layer includes data cleansing, standardization, and normalization processes to prepare 3. data for analysis.
Gold Layer: Houses business-ready data modeled into a star schema required for reporting and analytics.
