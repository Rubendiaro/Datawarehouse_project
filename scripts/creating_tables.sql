/* 
========================================================================
Creando las tablas que posteriormente se rellenan manualmente en Dbeaver
========================================================================
*/

DROP TABLE IF EXISTS bronze.crm_cust_info;
create table bronze.crm_cust_info (
cst_id INT,
cst_key VARCHAR(50),
cst_firstname VARCHAR(50),
cst_lastname VARCHAR(50),
cst_marital_status VARCHAR(50),
cst_gndr VARCHAR(50),
cst_create_date DATE
);

DROP TABLE IF EXISTS bronze.crm_prd_info;
create table bronze.crm_prd_info (
prd_id INT,
prd_key VARCHAR(50),
prd_nm VARCHAR(50),
prd_cost INT,
prd_line VARCHAR(50),
prd_start_dt TIMESTAMP,
prd_end_dt TIMESTAMP
);

DROP TABLE IF EXISTS bronze.crm_sales_details;
create table bronze.crm_sales_details (
sls_ord_num VARCHAR(50),
sls_prd_key VARCHAR(50),
sls_cust_id INT,
sls_order_dt INT,
sls_ship_dt INT,
sls_due_dt INT,
sls_sales INT,
sls_quantity INT,
sls_price INT
);

DROP TABLE IF EXISTS bronze.erp_CUST_AZ_12;
create table bronze.erp_CUST_AZ_12 (
CID VARCHAR (50),
BDATE DATE,
GEN VARCHAR (50)
);

DROP TABLE IF EXISTS bronze.erp_LOC_A101;
create table bronze.erp_LOC_A101 (
CID VARCHAR (50),
CNTRY VARCHAR (50)
);

DROP TABLE IF EXISTS bronze.erp_PX_CAT_G1V2;
create table bronze.erp_PX_CAT_G1V2 (
ID VARCHAR (50),
CAT VARCHAR (50),
SUBCAT VARCHAR (50),
MAINTENANCE VARCHAR (50)
);
