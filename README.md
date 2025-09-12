# SQL Data Warehouse (Medallion) — Portfolio Project

This project demonstrates a comprehensive data warehousing and analytics solution, from building a data warehouse to generating actionable insights. Designed as a portfolio project, it highlights industry best practices in data engineering and analytics.

---
## 🏗️ Data Architecture
The data architecture for this project follows Medallion Architecture Bronze, Silver, and Gold layers:

<img width="1209" height="651" alt="Darko za projekat-Page-1 drawio (7)" src="https://github.com/user-attachments/assets/8278ae38-a378-4394-bc17-81e5679e318a" />


1. Bronze Layer: Stores raw data as-is from the source systems. Data is ingested from CSV Files into SQL Server Database.
2. Silver Layer: This layer includes data cleansing, standardization, and normalization processes to prepare 3. data for analysis.
Gold Layer: Houses business-ready data modeled into a star schema required for reporting and analytics.
