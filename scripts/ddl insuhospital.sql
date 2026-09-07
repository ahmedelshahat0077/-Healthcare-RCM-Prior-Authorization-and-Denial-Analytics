/*
===============================================================================
DDL Script: creating hospital insurance dataset Tables
===============================================================================
Script Purpose:
    This script creates tables in the hospital insurance dataset, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of Tables
===============================================================================
*/
-------------------------------------------------------------
IF OBJECT_ID('Fact_Insurance_Requests', 'U') IS NOT NULL
    DROP TABLE Fact_Insurance_Requests;
GO
create table Fact_Insurance_Requests
(
Request_ID       VARCHAR(30) ,
    Patient_ID       VARCHAR(20) ,
    Insurance_ID     VARCHAR(20) ,
    Department_ID    VARCHAR(20) ,
    Policy_Type      VARCHAR(30) ,
    Service_Type     VARCHAR(30),
    Priority         VARCHAR(20) ,
    Request_Date     DATE,
    Response_Date    DATE,
    Requested_Amount DECIMAL,
    Approved_Amount  DECIMAL,
    Status           VARCHAR(30) ,
    Reason_ID        VARCHAR(20)
    );
    go

    IF OBJECT_ID('dim_Patient', 'U') IS NOT NULL
    DROP TABLE dim_Patient;
GO
create table dim_Patient
(
    Patient_ID    VARCHAR(20) ,
    Patient_Name  VARCHAR(100) ,
    Age           INT ,
    Gender        VARCHAR(10) ,
    Emirates_ID   VARCHAR(30) ,
    CONSTRAINT PK_Dim_Patient PRIMARY KEY (Patient_ID)
);
GO

IF OBJECT_ID('dim_Insurance', 'U') IS NOT NULL
    DROP TABLE dim_Insurance;
GO
create table dim_Insurance
(
Insurance_ID      VARCHAR(20) ,
    Insurance_Provider VARCHAR(100) ,
    Payer_Type        VARCHAR(50) ,
    SLA_Hours_Urgent  INT ,
    SLA_Hours_Routine INT ,
    CONSTRAINT PK_Dim_Insurance PRIMARY KEY (Insurance_ID)
);
GO

IF OBJECT_ID('dim_Department', 'U') IS NOT NULL
    DROP TABLE dim_Department;
GO
create table dim_Department
(
Department_ID      VARCHAR(20) ,
    Department_Name    VARCHAR(100) ,
    Head_Of_Department VARCHAR(100) ,
    CONSTRAINT PK_Dim_Department PRIMARY KEY (Department_ID)
);
GO

IF OBJECT_ID('dim_Rejection_Reason', 'U') IS NOT NULL
    DROP TABLE dim_Rejection_Reason;
GO
create table dim_Rejection_Reason
(
Reason_ID         VARCHAR(20) ,
    Rejection_Reason  VARCHAR(255) ,
    Category          VARCHAR(50) ,
    Responsible_Party VARCHAR(100) ,
    CONSTRAINT PK_Dim_Rejection_Reason PRIMARY KEY (Reason_ID)
);
GO