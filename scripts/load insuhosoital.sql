/*
===============================================================================
load Script: loading hospital insurance dataset Tables
===============================================================================
Script Purpose:
    This script loads data into tables from external CSV files. 
    It performs the following actions:
    - Truncates the tables before loading data.
    - Uses the `BULK INSERT` command to load data from csv Files to tables.
	===============================================================================
*/
--------------------------------------------------------------
-- inserting data into table Fact_Insurance_Requests
--------------------------------------------------------------
PRINT '>> trucating table: Fact_Insurance_Requests';
truncate table Fact_Insurance_Requests
PRINT '>> Inserting Data Into: Fact_Insurance_Requests';
BULK INSERT Fact_Insurance_Requests
FROM 'F:\DATA\SQL\insurance hospital analysis\Fact_Insurance_Requests.csv'
		with
		(
		firstrow = 2,
		fieldterminator = ',',
		ROWTERMINATOR = '0x0a',
		tablock
		);
		go
-------------------------------------------------------------------------
--------------------------------------------------------------
-- inserting data into table dim_Patient
--------------------------------------------------------------
PRINT '>> trucating table: dim_Patient';
truncate table dim_Patient
PRINT '>> Inserting Data Into: dim_Patient';
BULK INSERT dim_Patient
FROM 'F:\DATA\SQL\insurance hospital analysis\dim_Patient.csv'
		with
		(
		firstrow = 2,
		fieldterminator = ',',
		ROWTERMINATOR = '0x0a',
		tablock
		);
		go
-------------------------------------------------------------------------
--------------------------------------------------------------
-- inserting data into table dim_Insurance
--------------------------------------------------------------
PRINT '>> trucating table: dim_Insurance';
truncate table dim_Insurance
PRINT '>> Inserting Data Into: dim_Insurance';
BULK INSERT dim_Insurance
FROM 'F:\DATA\SQL\insurance hospital analysis\dim_Insurance.csv'
		with
		(
		firstrow = 2,
		fieldterminator = ',',
		ROWTERMINATOR = '0x0a',
		tablock
		);
		go
-------------------------------------------------------------------------
--------------------------------------------------------------
-- inserting data into table dim_Department
--------------------------------------------------------------
PRINT '>> trucating table: dim_Department';
truncate table dim_Department
PRINT '>> Inserting Data Into: dim_Department';
BULK INSERT dim_Department
FROM 'F:\DATA\SQL\insurance hospital analysis\dim_Department.csv'
		with
		(
		firstrow = 2,
		fieldterminator = ',',
		ROWTERMINATOR = '0x0a',
		tablock
		);
		go
		-------------------------------------------------------------------------
--------------------------------------------------------------
-- inserting data into table dim_Rejection_Reason
--------------------------------------------------------------
PRINT '>> trucating table: dim_Rejection_Reason';
truncate table dim_Rejection_Reason
PRINT '>> Inserting Data Into: dim_Rejection_Reason';
BULK INSERT dim_Rejection_Reason
FROM 'F:\DATA\SQL\insurance hospital analysis\dim_Rejection_Reason.csv'
		with
		(
		firstrow = 2,
		fieldterminator = ',',
		ROWTERMINATOR = '0x0a',
		tablock
		);
		go