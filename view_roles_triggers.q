create view Ward_info as select * from Ward;
create view Drug_list as select * from Drug;
create view Patient_list as select ID, Name, Age, Medical_history from Patient;


create role doctor_role;
grant all on Patient, Drug, Ward to doctor;

DELIMITER $$
CREATE TRIGGER pat_remove_trigger AFTER DELETE ON Patient
FOR EACH ROW
BEGIN
UPDATE Ward SET Occupancy=Occupancy-1 where ID = (select Ward_ID from Pat_admit_ward where Patient_ID=OLD.ID);
DELETE FROM Pat_admit_ward where Patient_ID=OLD.ID;
END$$
DELIMITER ; 

