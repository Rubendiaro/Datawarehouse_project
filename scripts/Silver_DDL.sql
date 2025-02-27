=======================================================
  Creación de tablas silver layer
=======================================================


DROP TABLE IF EXISTS silver.crm_cust_info;
create table silver.crm_cust_info (
cst_id INT,
cst_key VARCHAR(50),
cst_firstname VARCHAR(50),
cst_lastname VARCHAR(50),
cst_marital_status VARCHAR(50),
cst_gndr VARCHAR(50),
cst_create_date DATE,
dwh_create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS silver.crm_prd_info;
create table silver.crm_prd_info (
prd_id INT,
prd_key VARCHAR(50),
prd_nm VARCHAR(50),
prd_cost INT,
prd_line VARCHAR(50),
prd_start_dt TIMESTAMP,
prd_end_dt TIMESTAMP,
dwh_create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS silver.crm_sales_details;
create table silver.crm_sales_details (
sls_ord_num VARCHAR(50),
sls_prd_key VARCHAR(50),
sls_cust_id INT,
sls_order_dt INT,
sls_ship_dt INT,
sls_due_dt INT,
sls_sales INT,
sls_quantity INT,
sls_price INT,
dwh_create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS silver.erp_CUST_AZ_12;
create table silver.erp_CUST_AZ_12 (
CID VARCHAR (50),
BDATE DATE,
GEN VARCHAR (50),
dwh_create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS silver.erp_LOC_A101;
create table silver.erp_LOC_A101 (
CID VARCHAR (50),
CNTRY VARCHAR (50),
dwh_create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS silver.erp_PX_CAT_G1V2;
create table silver.erp_PX_CAT_G1V2 (
ID VARCHAR (50),
CAT VARCHAR (50),
SUBCAT VARCHAR (50),
MAINTENANCE VARCHAR (50),
dwh_create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
