INSERT INTO Doctor (ID,Name,Specialization,Salary)
values  (0098001,"Michael","General Medicine",80000),
		(0099001,"Daniel","General Medicine",85000),
		(0198001,"Ryan","Cardiologist",90000),
		(0100001,"Lauren","Cardiologist",90000);

INSERT INTO Pharmacist (ID,Name,Salary,Address)
values  (0098002,"Itachi",60000,"76, king street, Britannia");

INSERT INTO Security (ID,Name,Shift,Salary,Address)
values  (0098003,"Kisame","Evening",30000,"77, king street, Britannia");

INSERT INTO Pat_attends_doc (Doctor_ID,Patient_ID)
values  (0098004,0098005);

INSERT INTO Nurse_governs_ward (Nurse_ID,Ward_ID)
values  (0098006,0098007);

INSERT INTO Doc_present_room (Doctor_ID,Room_ID)
values  (0098008,0098009);

INSERT INTO Pat_refer_lab (Patient_ID,Lab_ID)
values  (0098010,0098011);

INSERT INTO Pat_admit_ward (Patient_ID,Ward_ID)
values  (0098012,0098013);

INSERT INTO Ward_at_room (Ward_ID,Room_ID)
values  (0098014,0098015);

INSERT INTO Lab_at_room (Lab_ID,Room_ID)
values  (00980016,0098017);

INSERT INTO Pharmacy_at_room (Pharmacy_ID,Room_ID)
values  (0098018,0098019);

INSERT INTO Room_at_building (Room_ID,Building_ID)
values  (0098020,0098021);

INSERT INTO Patient_bill_drug (Patient_ID,Drug_ID)
values  (0098022,0098023);

INSERT INTO Drug_in_pharmacy (Drug_ID,Pharmacy_ID)
values  (0098024,0098025);

INSERT INTO Security_assign_building (Security_ID,Building_ID)
values  (0098026,0098027);

INSERT INTO Pharmacist_at_pharmacy (Pharmacist_ID,Pharmacy_ID)
values  (0098028,0098029);


