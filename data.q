insert into  Patient(ID,Name,Age,Last_visit,Address,Medical_history)
values
(1,"Ringer",24,NULL,"223 E. Concord","First time visitor here"),
(2,"Arjun",21,2018-12-05,"12529 State Road 535","Vistied for headache"),
(3,"Gokul Shaji",22,2019-01-01,"Alappuzha","Previously visited for severe back pain, bedridden multiple times"),
(4,"Bhagya",26,NULL,"2855 South Orange Ave","First time visitor here"),
(5,"Vivek",21,NULL,"7822 W. Sand Lake Rd","First time visitor here");

insert into Nurse(ID,Name,Specialization,Salary,Address)
values
(1,"Rini","Cardiac unit",25000,"83 E. Tallwood Road"),
(2,"Arthana","ICU",26000,"8142 East Sage Circle"),
(3,"Nimya","Emergancy",29000,"38 Parker Lane"),
(4,"Bridget","General",22000,"990 East Lakeshore"),
(5,"Indiana","General",22000,"382 Arrowhead Ave"),
(6,"Bringa","General",22000,"19 Fremont Drive"),
(7,"Ankita","Emergancy",29000,"9295 Walt Whitman Street"),
(8,"Dany","Cardiac unit",25000,"42 East Myers Drive"),
(9,"Ava","ICU",26000,"250 Logan St.Missoula");

insert into Ward(ID,Occupancy,Capacity)
values
(1,1,10),
(2,2,10),
(3,1,10);

insert into Labs(ID,Name,Building,Start_time,Close_time,Occupancy,Capacity,Budget)
values
(1,"X-Ray","Block-A",09:00:00,20:00:00,1,10,100000);

insert into Operating_theatre(ID,Doctor_ID,Specialization,)
values
();

insert into Rooms(ID,Building,Room_size)
values
(1,"Block-A",10);

insert into Pharmacy(ID)
values
(1);

insert into Drug(ID,Name,Cost,Imported_date,Expiry_date,Quantity_available)
values
(1,"Paracetamol",5,2019-01-05,2020-12-13,500),
(2,"Aspirin",10,2019-01-05,2022-01-30,50),
(3,"Adderall",18,2019-02-07,2020-06-10,50),
(4,"Zantac",25,2019-01-05,2022-08-09,100),
(5,"Gabitril",22,2018-12-30,2025-01-30,50),
(6,"Belviq",23,2018-12-30,2020-12-15,30),
(7,"Bellimumab",40,2018-12-30,2023-12-30,20),
(8,"Zytiga",52,2018-12-25,2022-06-30,40),
(9,"Glybera",100000,2019-01-15,2025-06-30,10);

insert into Building(ID,Name,Block,Budget)
values
(1,"Block-A","A",200000),
(2,"Block-B","B",200000),
(3,"Block-C","C",200000),
(4,"Block-D","D",200000);

insert into Pharmacist(ID,Name,Salary,Address)
values
(1,"Godson",20000,"9148 Lantern Road"),
(2,"Rhaegar Targarean",20000,"Dragonstone"),
(3,"Oberon Martell",20000,"Dorne"),
(4,"Myrion V",20000,"KTNGL"),
(5,"Jon Snow",20000,"Winterfell");

insert into Security(ID,Name,Shift,Salary,Address)
values
(1,"Raman","Morning",12000,"92 Illinois Ave"),
(2,"Arjunan","Morning",12000,"Park Avenue"),
(3,"Govardhan","Night",12000,"West Avenue"),
(4,"Hamsa","Night",12000,"South Avenue"),
(5,"Kishkindan","Morning",12000,"Park Avenue"),
(6,"Luttapi","Night",12000,"Balarama"),
(7,"R A Jappan","Morning",12000,"Matanjeri"),
(8,"Kambodharan","Night",12000,"East fort"),
(9,"Dinkan","Morning",12000,"Savier Caves"),
(10,"Shaji Pappan","Night",12000,"Munnar");

insert into Pat_attends_doc(Doctor_ID,Patient_ID)
values
(98001,1),
(98001,2),
(98001,4),
(100001,3),
(198003,5);

insert into Nurse_governs_ward(Nurse_ID,Ward_ID)
values
(4,1),
(2,3),
(2,4),
(3,5),
(1,2);

insert into Doc_present_room(Doctor_ID,Room_ID)
values
(98001,1),
(99001,1),
(100001,2),
(198001,3),
(198003,4);

insert into Pat_refer_lab(Patient_ID,Lab_ID)
values
(1,1),
(2,3),
(3,1),
(4,4),
(5,3),
(3,3);

insert into Pat_admit_ward(Patient_ID,Ward_ID)
values
(1,1),
(3,2),
(4,1),
(5,3);

insert into Ward_at_room(Ward_ID,Room_ID)
values
(1,14),
(2,15),
(3,16),
(4,17),
(5,18);

insert into Lab_at_room(Lab_ID,Room_ID)
values
(1,10),
(2,11),
(3,12),
(4,13);

insert into Pharmacy_at_room(Pharmacy_ID,Room_ID)
values
(1,8),
(2,9);

insert into Room_at_building(Building_ID,Room_ID)
values
(1,1),
(1,2),
(1,3),
(1,4),
(1,5),
(2,6),
(2,7),
(2,8),
(2,9),
(2,10),
(3,11),
(3,12),
(3,13),
(3,14),
(4,15),
(4,16),
(4,17),
(4,18);

insert into Patient_bill_drug(Patient_ID,Drug_ID,Doctor_ID)
values
(1,1,98001),
(1,2,98001),
(2,9,99001),
(3,4,198001),
(4,6,98001),
(5,3,198003),
(5,7,198003);

insert into Drug_in_pharmacy(Drug_ID,Pharmacy_ID)
values
(1,1),
(2,1),
(3,1),
(8,1),
(4,2),
(5,2),
(6,2),
(7,2),
(9,2);

insert into Security_assign_building(Security_ID,Building_ID)
values
(1,1),
(2,1),
(3,2),
(4,2),
(5,3),
(6,3),
(7,4),
(8,4),
(9,1),
(10,3);

insert into Pharmacist_at_pharmacy(Pharmacist_ID,Pharmacy_ID)
values
(1,1),
(2,2),
(3,2),
(4,1),
(5,);
