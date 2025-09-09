/*
=======================================================================================
DDL Script: Create Silver Tables
=======================================================================================
Script Purpose:
    This script creates table in the silver schema, dropping existing tables if it any 
    alredy exist in database.
    Run this script to re-define the DDL structure of bronze tables
=======================================================================================
*/

IF OBJECT_ID( 'silver.crm_cust_info', 'U') IS NOT NULL
DROP TABLE silver.crm_cust_info;

CREATE TABLE silver.crm_cust_info(
	crs_id					INT,
	crs_key					NVARCHAR (50),
	crs_firstname			NVARCHAR (50),
	crs_last_name			NVARCHAR (50),
	crs_material_status     NVARCHAR (50),
	crs_gndr				NVARCHAR (50),
	crs_create_date			DATE,
	dwh_create_date         DATETIME2 DEFAULT GETDATE()
);
------------------------------------------------------------
IF OBJECT_ID( 'silver.crm_prd_info', 'U') IS NOT NULL
DROP TABLE silver.crm_prd_info;

CREATE TABLE silver.crm_prd_info(
	pdr_id					INT,
	prd_key					NVARCHAR (50),
	pdr_nm					NVARCHAR (50),
	pdr_cost				INT,
	pdr_line				NVARCHAR (50),
	pdr_start_date			DATETIME,
	pdr_end_dt				DATETIME,
	dwh_create_date         DATETIME2 DEFAULT GETDATE()
);
------------------------------------------------------------
IF OBJECT_ID( 'silver.crm_sales_details', 'U') IS NOT NULL
DROP TABLE silver.crm_sales_details;

CREATE TABLE silver.crm_sales_details(
	sls_ord_num				NVARCHAR(50),
	sls_pdr_key				NVARCHAR (50),
	sls_cust_id				INT,
	sls_order_dt			INT,
	sls_ship_dt				INT,
	sls_due_dt				INT,
	sls_sales				INT,
	sls_quantity			INT,
	sls_price				INT,
	dwh_create_date         DATETIME2 DEFAULT GETDATE()
);
------------------------------------------------------------
IF OBJECT_ID( 'silver.erp_cust_az12', 'U') IS NOT NULL
DROP TABLE silver.erp_cust_az12;

CREATE TABLE silver.erp_cust_az12(
	cid						NVARCHAR(50),
	bdate					DATE,
	gen						NVARCHAR(50),
	dwh_create_date         DATETIME2 DEFAULT GETDATE()
);
------------------------------------------------------------
IF OBJECT_ID( 'silver.erp_loc_a101', 'U') IS NOT NULL
DROP TABLE silver.erp_loc_a101;

CREATE TABLE silver.erp_loc_a101(
	cid						NVARCHAR (50),
	cntry					NVARCHAR(50),
	dwh_create_date         DATETIME2 DEFAULT GETDATE()
);
------------------------------------------------------------
IF OBJECT_ID( 'silver.erp_px_cat_g1v2', 'U') IS NOT NULL
DROP TABLE silver.erp_px_cat_g1v2;

CREATE TABLE silver.erp_px_cat_g1v2 (
	id						NVARCHAR(50),
	cat						NVARCHAR(50),
	subcat					NVARCHAR(50),
	maintenance				NVARCHAR(50),
	dwh_create_date         DATETIME2 DEFAULT GETDATE()
);
------------------------------------------------------------
