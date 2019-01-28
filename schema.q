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
Last_visit = varchar(25) NOT NULL,
Address = varchar(50) NOT NULL,
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
Lab_name varchar(25) NOT NULL,
Building varchar(25) NOT NULL,
Timings varchar(25) NOT NULL,
Occupancy int NOT NULL,
Capacity int NOT NULL,
Budget int NOT NULL,
PRIMARY KEY(ID));

CREATE TABLE Rooms(
ID int NOT NULL, 
Building varchar(25) NOT NULL,
Room_size int NOT NULL,
PRIMARY KEY(ID));
