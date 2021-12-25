BEGIN;
insert into WAITING_LIST (WL_id, Status, Severity_of_case, Organ_name) values ('645-55-5022', 'waiting', 54, 'Heart');
insert into WAITING_LIST (WL_id, Status, Severity_of_case, Organ_name) values ('238-21-9485', 'matched', 8, 'Heart');
insert into WAITING_LIST (WL_id, Status, Severity_of_case, Organ_name) values ('156-08-9337', 'waiting', 73, 'Intestine');
COMMIT;
SELECT * FROM WAITING_LIST;

BEGIN;
insert into WAITING_LIST (WL_id, Status, Severity_of_case, Organ_name) values ('645-05-5022', 'waiting', 54, 'Heart');
insert into WAITING_LIST (WL_id, Status, Severity_of_case, Organ_name) values ('238-01-9485', 'matched', 8, 'Heart');
insert into WAITING_LIST (WL_id, Status, Severity_of_case, Organ_name) values ('156-28-9337', 'waiting', 73, 'Intestine');
ROLLBACK;
COMMIT;
SELECT * FROM WAITING_LIST;

BEGIN;
insert into WAITING_LIST (WL_id, Status, Severity_of_case, Organ_name) values ('645-05-5022', 'waiting', 54, 'Heart');
insert into WAITING_LIST (WL_id, Status, Severity_of_case, Organ_name) values ('238-01-9485', 'matched', 8, 'Heart');
insert into WAITING_LIST (WL_id, Status, Severity_of_case, Organ_name) values ('156-28-9337', 'waiting', 73, 'Intestine');
SAVEPOINT POINT;
insert into WAITING_LIST (WL_id, Status, Severity_of_case, Organ_name) values ('265-09-5568', 'matched', 62, 'Kidney');
insert into WAITING_LIST (WL_id, Status, Severity_of_case, Organ_name) values ('617-94-6493', 'matched', 33, 'Gallbladder');
ROLLBACK TO POINT;
SELECT * FROM WAITING_LIST;



SELECT * FROM DOCTOR;
BEGIN;
insert into DOCTOR (Doc_id, Doc_name, Doc_mobno) values ('89-7377569', 'joey Zanolli', '747-382-8838');
insert into DOCTOR (Doc_id, Doc_name, Doc_mobno) values ('98-62021556', 'Harry Dossettor', '431-558-8179');
COMMIT;
SELECT * FROM DOCTOR;

BEGIN;
insert into DOCTOR (Doc_id, Doc_name, Doc_mobno) values ('85-9079031', 'Cam potter', '810-237-8694');
insert into DOCTOR (Doc_id, Doc_name, Doc_mobno) values ('48-7192538', 'Ross Byfield', '621-997-2618');
ROLLBACK;
SELECT * FROM DOCTOR;

BEGIN;
insert into DOCTOR (Doc_id, Doc_name, Doc_mobno) values ('85-9079031', 'Cam potter', '810-237-8694');
insert into DOCTOR (Doc_id, Doc_name, Doc_mobno) values ('48-7192538', 'Ross Byfield', '621-997-2618');
SAVEPOINT POINT;
insert into DOCTOR (Doc_id, Doc_name, Doc_mobno) values ('52-2765766', 'Jazz Blackborn', '288-250-2715');
insert into DOCTOR (Doc_id, Doc_name, Doc_mobno) values ('47-4361534', 'Ted Berrow', '220-844-7187');
ROLLBACK TO POINT;
SELECT * FROM DOCTOR;
COMMIT;


SELECT * FROM HOSPITAL_H_phno;
BEGIN;
insert into HOSPITAL_H_phno (H_phno, H_id) values ('226-425-3836', '146');
insert into HOSPITAL_H_phno (H_phno, H_id) values ('684-792-1433', '433');
insert into HOSPITAL_H_phno (H_phno, H_id) values ('203-404-4390', '5');
ROLLBACK;
COMMIT;
SELECT * FROM HOSPITAL_H_phno;

BEGIN;
insert into HOSPITAL_H_phno (H_phno, H_id) values ('226-425-3836', '146');
insert into HOSPITAL_H_phno (H_phno, H_id) values ('684-792-1433', '433');
insert into HOSPITAL_H_phno (H_phno, H_id) values ('203-404-4390', '5');
SAVEPOINT POINT;
insert into HOSPITAL_H_phno (H_phno, H_id) values ('953-382-5981', '4');
insert into HOSPITAL_H_phno (H_phno, H_id) values ('221-482-9055', '146');
insert into HOSPITAL_H_phno (H_phno, H_id) values ('430-232-7676', '4');
ROLLBACK TO POINT;
COMMIT;
SELECT * FROM HOSPITAL_H_phno;


SELECT * FROM GOV_BODY;
BEGIN;
insert into GOV_BODY (Organisation_id, Location, Organisation_name) values ('453', 'Lairgo', 'Bauch, Mante and Farrell');
insert into GOV_BODY (Organisation_id, Location, Organisation_name) values ('6583', 'Laliki', 'Hilpert, Pagac and Boyer');
insert into GOV_BODY (Organisation_id, Location, Organisation_name) values ('7032', 'Chengui', 'Okuneva Group');
ROLLBACK;
COMMIT;
SELECT * FROM GOV_BODY;

BEGIN;
insert into GOV_BODY (Organisation_id, Location, Organisation_name) values ('453', 'Lairgo', 'Bauch, Mante and Farrell');
insert into GOV_BODY (Organisation_id, Location, Organisation_name) values ('6583', 'Laliki', 'Hilpert, Pagac and Boyer');
insert into GOV_BODY (Organisation_id, Location, Organisation_name) values ('7032', 'Chengui', 'Okuneva Group');
SAVEPOINT POINT;
insert into GOV_BODY (Organisation_id, Location, Organisation_name) values ('7147', 'Washington', 'Tremblay, Mueller and Willms');
insert into GOV_BODY (Organisation_id, Location, Organisation_name) values ('1556', 'Pasirerurih', 'Harvey-Ward');
insert into GOV_BODY (Organisation_id, Location, Organisation_name) values ('7625', 'Hallstayvik', 'Sanford-Walker');
ROLLBACK TO POINT;
COMMIT;
SELECT * FROM GOV_BODY;

SELECT * FROM HOSPITAL;
BEGIN;
insert into HOSPITAL (H_id, H_name, H_address, Organisation_id) values ('973', 'Fivespan', '464 Dakota Circle', '914');
insert into HOSPITAL (H_id, H_name, H_address, Organisation_id) values ('1436', 'Yodel', '47401 Victoria Hill', '914');
insert into HOSPITAL (H_id, H_name, H_address, Organisation_id) values ('621', 'Avamba', '99 Melby Way', '71407');
ROLLBACK;
COMMIT;
SELECT * FROM HOSPITAL;


BEGIN;
insert into HOSPITAL (H_id, H_name, H_address, Organisation_id) values ('973', 'Fivespan', '464 Dakota Circle', '914');
insert into HOSPITAL (H_id, H_name, H_address, Organisation_id) values ('1436', 'Yodel', '47401 Victoria Hill', '914');
insert into HOSPITAL (H_id, H_name, H_address, Organisation_id) values ('621', 'Avamba', '99 Melby Way', '71407');
SAVEPOINT POINT;
insert into HOSPITAL (H_id, H_name, H_address, Organisation_id) values ('65', 'Oyondu', '1945 Del Mar Lane', '64');
insert into HOSPITAL (H_id, H_name, H_address, Organisation_id) values ('523', 'Dynabox', '1 Chive Plaza', '64');
insert into HOSPITAL (H_id, H_name, H_address, Organisation_id) values ('87', 'Oyoloo', '6347 Jenna Circle', '54');
ROLLBACK TO POINT;
COMMIT;
SELECT * FROM HOSPITAL;




















