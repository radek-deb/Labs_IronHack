CREATE DATABASE lab_mysql;
USE lab_mysql;

CREATE TABLE cars (Auto_ID bigint, VIN_No varchar(255), 
Model varchar(255), `Year` int, Color varchar(255), 
Manufacturer varchar(255), Price float);

CREATE TABLE customers (Auto_ID bigint, Customer_ID bigint, `Name` varchar(255),
`Phone number` int, email varchar(255), Adress varchar(255), City varchar(255),
`State/Prince` varchar(255), Country varchar(255),
`Zip/Postal Code` int, Car_ID varchar(255), Salesperson int, 
Invoice_ID varchar(255));

CREATE TABLE salesperson (Auto_ID bigint, Staff_ID bigint, 
`Name` varchar(255), Store_name varchar(255), Invoice_ID varchar(255),
Car_ID varchar(255)); 

CREATE TABLE invoices (Auto_ID bigint, Invoice_ID varchar(255), 
`Date` datetime, Car_ID varchar(255), Customer_ID bigint);
