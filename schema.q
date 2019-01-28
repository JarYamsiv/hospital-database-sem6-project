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
Medical_history varchar(250) NOT NULL,
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
Timings time(6) NOT NULL,
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

CREATE TABLE Building(E
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

CREATE TABLE Pat_attends_doc(
Doctor_ID int NOT NULL,
Patient_ID int NOT NULL,
FOREIGN KEY Doctor_ID REFERENCES Doctor.ID,
FOREIGN KEY Patient_ID REFERENCES Patient.ID);

CREATE TABLE Nurse_governs_ward(
Nurse_ID int NOT NULL,
Ward_ID int NOT NULL,
FOREIGN KEY Nurse_ID REFERENCES Nurse.ID,
FOREIGN KEY Ward_ID REFERENCES Ward.ID);

CREATE TABLE Doc_present_room(
Doctor_ID int NOT NULL,
Room_ID int NOT NULL,
FOREIGN KEY Doctor_ID REFERENCES Doctor.ID,
FOREIGN KEY Room_ID REFERENCES Rooms.ID);
