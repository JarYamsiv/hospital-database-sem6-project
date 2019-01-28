CREATE TABLE Doctor(
ID int NOT NULL, 
Name varchar(25) NOT NULL , 
Specialization varchar(25) NOT NULL, 
Salary int,
Address varchar(50), 
PRIMARY KEY(ID));

CREATE TABLE Patient( 
ID int NOT NULL,
Name varchar(25) NOT NULL,
Age int NOT NULL,
Last_visit Date NOT NULL,
Address varchar(50) NOT NULL,
Medical_history = varchar(250) NOT NULL,
PRIMARY KEY(ID));

CREATE TABLE Nurse(
ID int NOT NULL, 
Name varchar(25) NOT NULL , 
Specialization varchar(25) NOT NULL, 
Salary int,
Address varchar(50), 
PRIMARY KEY(ID));

CREATE TABLE Ward(
ID int NOT NULL, 
Occupancy int NOT NULL,
Capacity int NOT NULL,
PRIMARY KEY(ID));

CREATE TABLE Labs(
ID int NOT NULL, 
Name varchar(25) NOT NULL,
Building varchar(25) NOT NULL,
Timings time(25) NOT NULL,
Occupancy int NOT NULL,
Capacity int NOT NULL,
Budget int NOT NULL,
PRIMARY KEY(ID));

CREATE TABLE Rooms(
ID int NOT NULL, 
Building varchar(25) NOT NULL,
Room_size int NOT NULL,
PRIMARY KEY(ID));

CREATE TABLE Pharmacy(
ID int NOT NULL, 
PRIMARY KEY(ID));

CREATE TABLE Drug(
ID int NOT NULL, 
Name varchar(25) NOT NULL , 
Cost int NOT NULL,
Imported_date date NOT NULL,
Expiry_date date NOT NULL,
Quantity_available int NOT NULL, 
PRIMARY KEY(ID));

CREATE TABLE Building(
ID int NOT NULL, 
Name varchar(25) NOT NULL,
Block varchar(25) NOT NULL,
Budget int NOT NULL,
PRIMARY KEY(ID));

CREATE TABLE Pharmacist(
ID int NOT NULL, 
Name varchar(25) NOT NULL , 
Salary int,
Address varchar(50), 
PRIMARY KEY(ID));

CREATE TABLE Security(
ID int NOT NULL, 
Name varchar(25) NOT NULL , 
Shift varchar(25) NOT NULL, 
Salary int,
Address varchar(50), 
PRIMARY KEY(ID));
