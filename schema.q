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
Last_visit Date,
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

CREATE TABLE Operating_theatre(
ID int NOT NULL, 
Doctor_ID int NOT NULL,
Specialization varchar(25) NOT NULL , 
PRIMARY KEY(ID)
FOREIGN KEY Doctor_ID REFERENCES Doctor(ID) );

CREATE TABLE Labs(
ID int NOT NULL, 
Name varchar(25) NOT NULL,
Building varchar(25) NOT NULL,
Start_time time(6) NOT NULL, 
Close_time time(6) NOT NULL,
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

CREATE TABLE Pat_attends_doc(
Doctor_ID int NOT NULL,
Patient_ID int NOT NULL,
FOREIGN KEY Doctor_ID REFERENCES Doctor(ID),
FOREIGN KEY Patient_ID REFERENCES Patient(ID));

CREATE TABLE Nurse_governs_ward(
Nurse_ID int NOT NULL,
Ward_ID int NOT NULL,
FOREIGN KEY Nurse_ID REFERENCES Nurse(ID),
FOREIGN KEY Ward_ID REFERENCES Ward(ID));

CREATE TABLE Doc_present_room(
Doctor_ID int NOT NULL,
Room_ID int NOT NULL,
FOREIGN KEY Doctor_ID REFERENCES Doctor(ID),
FOREIGN KEY Room_ID REFERENCES Rooms(ID));

CREATE TABLE Pat_refer_lab(
Patient_ID int NOT NULL,
Lab_ID int NOT NULL,
FOREIGN KEY Patient_ID REFERENCES Patient(ID),
FOREIGN KEY Lab_ID REFERENCES Labs(ID));

CREATE TABLE Pat_admit_ward(
Patient_ID int NOT NULL,
Ward_ID int NOT NULL,
FOREIGN KEY Patient_ID REFERENCES Patient(ID),
FOREIGN KEY Ward_ID REFERENCES Ward(ID));

CREATE TABLE Ward_at_room(
Ward_ID int NOT NULL,
Room_ID int NOT NULL,
FOREIGN KEY Ward_ID REFERENCES Ward(ID),
FOREIGN KEY Room_ID REFERENCES Rooms(ID));

CREATE TABLE Lab_at_room(
Lab_ID int NOT NULL,
Room_ID int NOT NULL,
FOREIGN KEY Lab_ID REFERENCES Labs(ID),
FOREIGN KEY Room_ID REFERENCES Rooms(ID));

CREATE TABLE Pharmacy_at_room(
Pharmacy_ID int NOT NULL,
Room_ID int NOT NULL,
FOREIGN KEY Pharmacy_ID REFERENCES Pharmacy(ID),
FOREIGN KEY Room_ID REFERENCES Rooms(ID));

CREATE TABLE Room_at_building(
Building_ID int NOT NULL,
Room_ID int NOT NULL,
FOREIGN KEY Building_ID REFERENCES Building(ID),
FOREIGN KEY Room_ID REFERENCES Rooms(ID));

CREATE TABLE Patient_bill_drug(
Patient_ID int NOT NULL,
Drug_ID int NOT NULL,
Doctor_ID int NOT NULL,
Cost int NOT NULL,
FOREIGN KEY Patient_ID REFERENCES Patient(ID),
FOREIGN KEY Drug_ID REFERENCES Drug(ID));

CREATE TABLE Drug_in_pharmacy(
Drug_ID int NOT NULL,
Pharmacy_ID int NOT NULL,
FOREIGN KEY Drug_ID REFERENCES Drug(ID),
FOREIGN KEY Pharmacy_ID REFERENCES Pharmacy(ID));

CREATE TABLE Security_assign_building(
Security_ID int NOT NULL,
Building_ID int NOT NULL,
FOREIGN KEY Security_ID REFERENCES Security(ID),
FOREIGN KEY Building_ID REFERENCES Building(ID));

CREATE TABLE Pharmacist_at_pharmacy(
Pharmacist_ID int NOT NULL,
Pharmacy_ID int NOT NULL,
FOREIGN KEY Pharmacist_ID REFERENCES Pharmacist(ID),
FOREIGN KEY Pharmacy_ID REFERENCES Pharmacy(ID));





