📘 Data Catalog – Gold Layer
Overview

The Gold Layer represents the business-level data model, structured to support analytics and reporting.
It contains dimension tables (for descriptive attributes) and fact tables (for measurable business metrics).

1. gold.dim_customers

Purpose: Stores customer details enriched with demographic and geographic data.

| Column Name       | Data Type    | Description                                                               |
| ----------------- | ------------ | ------------------------------------------------------------------------- |
| `customer_key`    | INT          | Surrogate key uniquely identifying each customer record in the dimension. |
| `customer_id`     | INT          | Unique numerical identifier assigned to each customer.                    |
| `customer_number` | NVARCHAR(50) | Alphanumeric identifier used for tracking and referencing customers.      |
| `first_name`      | NVARCHAR(50) | Customer’s first name.                                                    |
| `last_name`       | NVARCHAR(50) | Customer’s last name / family name.                                       |
| `country`         | NVARCHAR(50) | Country of residence (e.g., `Australia`).                                 |
| `marital_status`  | NVARCHAR(50) | Marital status (e.g., `Married`, `Single`).                               |
| `gender`          | NVARCHAR(50) | Gender (e.g., `Male`, `Female`, `n/a`).                                   |
| `birthdate`       | DATE         | Date of birth (`YYYY-MM-DD`).                                             |
| `create_date`     | DATE         | Date when the record was created.                                         |

2. gold.dim_products

Purpose: Provides information about products and their attributes.

| Column Name            | Data Type    | Description                                          |
| ---------------------- | ------------ | ---------------------------------------------------- |
| `product_key`          | INT          | Surrogate key uniquely identifying each product.     |
| `product_id`           | INT          | Unique identifier assigned to the product.           |
| `product_number`       | NVARCHAR(50) | Alphanumeric code for categorization or inventory.   |
| `product_name`         | NVARCHAR(50) | Descriptive product name (type, color, size).        |
| `category_id`          | NVARCHAR(50) | Unique identifier for product’s category.            |
| `category`             | NVARCHAR(50) | Broader product classification (e.g., `Bikes`).      |
| `subcategory`          | NVARCHAR(50) | Detailed classification within the category.         |
| `maintenance_required` | NVARCHAR(50) | Indicates if maintenance is required (`Yes` / `No`). |
| `cost`                 | INT          | Base price of the product.                           |
| `product_line`         | NVARCHAR(50) | Product line or series (e.g., `Road`, `Mountain`).   |
| `start_date`           | DATE         | Date when the product became available.              |

3. gold.fact_sales

Purpose: Stores transactional sales data for analytics.

| Column Name     | Data Type    | Description                                                       |
| --------------- | ------------ | ----------------------------------------------------------------- |
| `order_number`  | NVARCHAR(50) | Unique alphanumeric identifier for sales order (e.g., `SO54496`). |
| `product_key`   | INT          | Foreign key → `gold.dim_products`.                                |
| `customer_key`  | INT          | Foreign key → `gold.dim_customers`.                               |
| `order_date`    | DATE         | Date when the order was placed.                                   |
| `shipping_date` | DATE         | Date when the order was shipped.                                  |
| `due_date`      | DATE         | Payment due date.                                                 |
| `sales_amount`  | INT          | Total value of the sale (whole currency units).                   |
| `quantity`      | INT          | Number of units ordered.                                          |
| `price`         | INT          | Price per unit.                                                   |
