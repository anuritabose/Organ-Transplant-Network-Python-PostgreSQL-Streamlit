\c OTNDBMS_071_073_119
--Inserting into table WAITING_LIST

insert into WAITING_LIST (WL_id, Status, Severity_of_case, Organ_name) values ('453-48-0131', 'waiting', 87, 'Kidney');
insert into WAITING_LIST (WL_id, Status, Severity_of_case, Organ_name) values ('425-21-1052', 'matched', 22, 'Liver');
insert into WAITING_LIST (WL_id, Status, Severity_of_case, Organ_name) values ('434-59-6642', 'waiting', 40, 'Eyes');
insert into WAITING_LIST (WL_id, Status, Severity_of_case, Organ_name) values ('888-88-8875', 'waiting', 18, 'Brain');
insert into WAITING_LIST (WL_id, Status, Severity_of_case, Organ_name) values ('487-31-1584', 'matched', 72, 'Eyes');
insert into WAITING_LIST (WL_id, Status, Severity_of_case, Organ_name) values ('265-09-5578', 'matched', 62, 'Kidney');
insert into WAITING_LIST (WL_id, Status, Severity_of_case, Organ_name) values ('617-94-6463', 'matched', 33, 'Gallbladder');
insert into WAITING_LIST (WL_id, Status, Severity_of_case, Organ_name) values ('645-05-5082', 'matched', 54, 'Heart');
insert into WAITING_LIST (WL_id, Status, Severity_of_case, Organ_name) values ('238-01-9465', 'matched', 8, 'Heart');
insert into WAITING_LIST (WL_id, Status, Severity_of_case, Organ_name) values ('156-28-9367', 'waiting', 73, 'Intestine');

--Inserting into table PATIENT

insert into PATIENT (P_id, F_name, Minit, L_name, P_dob, P_mobno, P_address, WL_id) values ('39-8675333', 'Cullen', 'F', 'Thurgood', '01/31/1982', '911-422-9739', '569 1st Trail', '453-48-0131');
insert into PATIENT (P_id, F_name, Minit, L_name, P_dob, P_mobno, P_address, WL_id) values ('54-9715204', 'Merrill', 'I', 'Di Pietro', '11/26/1960', '345-652-0250', '7215 Golf View Plaza', '425-21-1052');
insert into PATIENT (P_id, F_name, Minit, L_name, P_dob, P_mobno, P_address, WL_id) values ('87-3021873', 'Lu', 'L', 'Monnery', '04/14/1976', '923-185-6220', '27786 Buena Vista Hill', '434-59-6642');
insert into PATIENT (P_id, F_name, Minit, L_name, P_dob, P_mobno, P_address, WL_id) values ('19-4705811', 'Nollie', 'B', 'Belliard', '01/07/1977', '163-430-8512', '5913 Karstens Center', '888-88-8875');
insert into PATIENT (P_id, F_name, Minit, L_name, P_dob, P_mobno, P_address, WL_id) values ('51-9672744', 'Fan', 'H', 'Jorio', '10/19/19', '647-132-5516', '53 Mockingbird Lane', '487-31-1584');
insert into PATIENT (P_id, F_name, Minit, L_name, P_dob, P_mobno, P_address, WL_id) values ('81-5657325', 'Christan', 'F', 'Wilman', '11/30/1957', '714-721-7166', '2 Troy Lane', '265-09-5578');
insert into PATIENT (P_id, F_name, Minit, L_name, P_dob, P_mobno, P_address, WL_id) values ('70-8781725', 'Franciskus', 'P', 'Mahony', '09/27/2000', '866-487-9049', '71617 Esker Trail', '617-94-6463');
insert into PATIENT (P_id, F_name, Minit, L_name, P_dob, P_mobno, P_address, WL_id) values ('22-3049781', 'Northrop', 'C', 'Wadie', '02/25/1942', '538-284-1023', '1 Garrison Pass', '645-05-5082');
insert into PATIENT (P_id, F_name, Minit, L_name, P_dob, P_mobno, P_address, WL_id) values ('34-0399316', 'Leland', 'B', 'Ferrierio', '07/17/2020', '753-949-2568', '757 Esch Trail', '238-01-9465');
insert into PATIENT (P_id, F_name, Minit, L_name, P_dob, P_mobno, P_address, WL_id) values ('51-4531004', 'Ambrosi', 'B', 'Mobley', '12/30/1954', '238-712-9864', '75 Stuart Lane', '156-28-9367');



--Inserting into table DONOR

insert into DONOR  (D_id, F_name, Minit, L_name, D_dob, D_mobno, D_address, D_status) values ('66-2359952', 'Denney', 'T', 'Lenz', '04/07/1968', '270-179-2610', '7 Saint Paul Terrace', 'living');
insert into DONOR  (D_id, F_name, Minit, L_name, D_dob, D_mobno, D_address, D_status) values ('53-5280887', 'Shauna', 'E', 'Karlolak', '11/24/1906', '363-917-9091', '33324 Lawn Terrace', 'dead');
insert into DONOR  (D_id, F_name, Minit, L_name, D_dob, D_mobno, D_address, D_status) values ('55-1627672', 'Bennie', 'O', 'Royan', '07/30/2005', '172-842-3329', '5 Anderson Alley', 'living');
insert into DONOR  (D_id, F_name, Minit, L_name, D_dob, D_mobno, D_address, D_status) values ('42-3976773', 'Christabella', 'B', 'Merriment', '10/09/2000', '570-789-4166', '46 Goodland Drive', 'dead');
insert into DONOR  (D_id, F_name, Minit, L_name, D_dob, D_mobno, D_address, D_status) values ('09-5873455', 'Lela', 'M', 'Madden', '01/08/1907', '470-595-8451', '8 Ridge Oak Lane', 'dead');
insert into DONOR  (D_id, F_name, Minit, L_name, D_dob, D_mobno, D_address, D_status) values ('99-5101987', 'Iggy', 'J', 'Seamark', '06/06/1989', '585-379-5111', '8 Eliot Park', 'dead');
insert into DONOR  (D_id, F_name, Minit, L_name, D_dob, D_mobno, D_address, D_status) values ('12-5308104', 'Reinaldo', 'S', 'Insole', '11/29/1902', '932-383-1334', '65249 Johnson Alley', 'living');
insert into DONOR  (D_id, F_name, Minit, L_name, D_dob, D_mobno, D_address, D_status) values ('93-1752080', 'Ingeberg', 'A', 'Cheverton', '07/12/1926', '924-349-1071', '51875 Superior Crossing', 'living');
insert into DONOR  (D_id, F_name, Minit, L_name, D_dob, D_mobno, D_address, D_status) values ('00-8551187', 'Hugh', 'H', 'Ranken', '08/04/1972', '112-975-8957', '14 Stang Court', 'dead');
insert into DONOR  (D_id, F_name, Minit, L_name, D_dob, D_mobno, D_address, D_status) values ('85-1837605', 'Bondie', 'E', 'Gatch', '11/10/1985', '484-562-7975', '25954 Grover Way', 'dead');





--Inserting into table ORGAN_AVAILABLE

insert into ORGAN_AVAILABLE (Organ_id, Organ_name, D_id) values ('888-29-8109', 'Kidney', '66-2359952');
insert into ORGAN_AVAILABLE (Organ_id, Organ_name, D_id) values ('290-19-7424', 'Pancreas', '55-1627672');
insert into ORGAN_AVAILABLE (Organ_id, Organ_name, D_id) values ('897-66-4384', 'Heart', '66-2359952');
insert into ORGAN_AVAILABLE (Organ_id, Organ_name, D_id) values ('592-32-1903', 'Kidney', '42-3976773');
insert into ORGAN_AVAILABLE (Organ_id, Organ_name, D_id) values ('853-57-6572', 'Eye', '66-2359952');
insert into ORGAN_AVAILABLE (Organ_id, Organ_name, D_id) values ('796-25-0005', 'Heart', '09-5873455');
insert into ORGAN_AVAILABLE (Organ_id, Organ_name, D_id) values ('733-43-8322', 'Kidney', '42-3976773');
insert into ORGAN_AVAILABLE (Organ_id, Organ_name, D_id) values ('530-98-3290', 'Kidney', '53-5280887');
insert into ORGAN_AVAILABLE (Organ_id, Organ_name, D_id) values ('179-28-5278', 'Heart', '99-5101987');
insert into ORGAN_AVAILABLE (Organ_id, Organ_name, D_id) values ('493-31-1721', 'Pancreas', '53-5280887');


--Inserting into table GOV_BODY

insert into GOV_BODY (Organisation_id, Location, Organisation_name) values ('20762', 'Changxing', 'Rath-Reichel');
insert into GOV_BODY (Organisation_id, Location, Organisation_name) values ('75986', 'Chafé', 'Russel, Breitenberg and Bogisich');
insert into GOV_BODY (Organisation_id, Location, Organisation_name) values ('54', 'Shibi', 'Moen, Leuschke and Kunde');
insert into GOV_BODY (Organisation_id, Location, Organisation_name) values ('914', 'Sondo', 'Ratke-Spencer');
insert into GOV_BODY (Organisation_id, Location, Organisation_name) values ('44', 'Largo', 'Bauch, Mante and Farrell');
insert into GOV_BODY (Organisation_id, Location, Organisation_name) values ('64', 'Laliki', 'Hilpert, Pagac and Boyer');
insert into GOV_BODY (Organisation_id, Location, Organisation_name) values ('703', 'Chengui', 'Okuneva Group');
insert into GOV_BODY (Organisation_id, Location, Organisation_name) values ('71407', 'Washington', 'Tremblay, Mueller and Willms');
insert into GOV_BODY (Organisation_id, Location, Organisation_name) values ('15', 'Pasireurih', 'Harvey-Ward');
insert into GOV_BODY (Organisation_id, Location, Organisation_name) values ('76265', 'Hallstavik', 'Sanford-Walker');


--Inserting into table AWARENESS_PROGRAMS

insert into AWARENESS_PROGRAMS (Organisation_id, Prog_name, Budget) values ('64', 'Twimm', '$356.56');
insert into AWARENESS_PROGRAMS (Organisation_id, Prog_name, Budget) values ('54', 'Realcube', '$340.69');
insert into AWARENESS_PROGRAMS (Organisation_id, Prog_name, Budget) values ('914', 'Mydo', '$337.14');
insert into AWARENESS_PROGRAMS (Organisation_id, Prog_name, Budget) values ('54', 'Aimbo', '$477.61');
insert into AWARENESS_PROGRAMS (Organisation_id, Prog_name, Budget) values ('64', 'Skiba', '$454.47');
insert into AWARENESS_PROGRAMS (Organisation_id, Prog_name, Budget) values ('703', 'Kazio', '$342.79');
insert into AWARENESS_PROGRAMS (Organisation_id, Prog_name, Budget) values ('71407', 'Digitube', '$353.77');
insert into AWARENESS_PROGRAMS (Organisation_id, Prog_name, Budget) values ('71407', 'Yacero', '$476.11');
insert into AWARENESS_PROGRAMS (Organisation_id, Prog_name, Budget) values ('15', 'Myworks', '$487.83');
insert into AWARENESS_PROGRAMS (Organisation_id, Prog_name, Budget) values ('15', 'Mudo', '$347.94');



--Inserting into Table DOCTOR

insert into DOCTOR (Doc_id, Doc_name, Doc_mobno) values ('90-7640351', 'Talbert Conneau', '773-918-5822');
insert into DOCTOR (Doc_id, Doc_name, Doc_mobno) values ('88-2745718', 'Joanna Carhart', '689-541-4353');
insert into DOCTOR (Doc_id, Doc_name, Doc_mobno) values ('85-1163701', 'Diandra Kytley', '833-853-1059');
insert into DOCTOR (Doc_id, Doc_name, Doc_mobno) values ('64-1961588', 'Andi Whitwood', '607-529-4467');
insert into DOCTOR (Doc_id, Doc_name, Doc_mobno) values ('89-7677519', 'Porter Zanolli', '747-382-8838');
insert into DOCTOR (Doc_id, Doc_name, Doc_mobno) values ('98-6302156', 'Leslie Dossettor', '431-558-8179');
insert into DOCTOR (Doc_id, Doc_name, Doc_mobno) values ('85-9379081', 'Camella Olford', '810-237-8694');
insert into DOCTOR (Doc_id, Doc_name, Doc_mobno) values ('48-7092538', 'Issy Byfield', '621-997-2618');
insert into DOCTOR (Doc_id, Doc_name, Doc_mobno) values ('52-2665786', 'Linus Blackborn', '288-250-2715');
insert into DOCTOR (Doc_id, Doc_name, Doc_mobno) values ('47-4061584', 'Tallie Berrow', '220-844-7187');

--Inserting into table HOSPITAL

insert into HOSPITAL (H_id, H_name, H_address, Organisation_id) values ('433', 'Meejo', '8 Kim Avenue', '15');
insert into HOSPITAL (H_id, H_name, H_address, Organisation_id) values ('5747', 'Thoughtworks', '10 Warrior Avenue', '914');
insert into HOSPITAL (H_id, H_name, H_address, Organisation_id) values ('5', 'Tazz', '8329 Chinook Crossing', '71407');
insert into HOSPITAL (H_id, H_name, H_address, Organisation_id) values ('4', 'Quamba', '5 Saint Paul Court', '15');
insert into HOSPITAL (H_id, H_name, H_address, Organisation_id) values ('9732', 'Fivespan', '464 Dakota Circle', '914');
insert into HOSPITAL (H_id, H_name, H_address, Organisation_id) values ('146', 'Yodel', '47401 Victoria Hill', '914');
insert into HOSPITAL (H_id, H_name, H_address, Organisation_id) values ('61', 'Avamba', '99 Melby Way', '71407');
insert into HOSPITAL (H_id, H_name, H_address, Organisation_id) values ('615', 'Oyondu', '1945 Del Mar Lane', '64');
insert into HOSPITAL (H_id, H_name, H_address, Organisation_id) values ('5923', 'Dynabox', '1 Chive Plaza', '64');
insert into HOSPITAL (H_id, H_name, H_address, Organisation_id) values ('8', 'Oyoloo', '6347 Jenna Circle', '54');


--Inserting into table MANAGES

insert into MANAGES (WL_id, Organ_id, Organ_match) values ('453-48-0131', '888-29-8109', true);
insert into MANAGES (WL_id, Organ_id, Organ_match) values ('425-21-1052', '290-19-7424', false);
insert into MANAGES (WL_id, Organ_id, Organ_match) values ('434-59-6642', '897-66-4384', false);
insert into MANAGES (WL_id, Organ_id, Organ_match) values ('888-88-8875', '897-66-4384', false);
insert into MANAGES (WL_id, Organ_id, Organ_match) values ('487-31-1584', '592-32-1903', false);
insert into MANAGES (WL_id, Organ_id, Organ_match) values ('265-09-5578', '853-57-6572', true);
insert into MANAGES (WL_id, Organ_id, Organ_match) values ('617-94-6463', '796-25-0005', true);
insert into MANAGES (WL_id, Organ_id, Organ_match) values ('645-05-5082', '733-43-8322', true);
insert into MANAGES (WL_id, Organ_id, Organ_match) values ('238-01-9465', '853-57-6572', false);
insert into MANAGES (WL_id, Organ_id, Organ_match) values ('156-28-9367', '493-31-1721', false);

--Inserting into table TRANSPLANTATION

insert into TRANSPLANTATION (Status, Date_of_transplantation, P_id, Doc_id, D_id) values ('Success', '04/22/1940', '39-8675333', '90-7640351', '66-2359952');
insert into TRANSPLANTATION (Status, Date_of_transplantation, P_id, Doc_id, D_id) values ('Success', '02/16/1982', '54-9715204', '90-7640351', '55-1627672');
insert into TRANSPLANTATION (Status, Date_of_transplantation, P_id, Doc_id, D_id) values ('Failure', '03/29/1989', '87-3021873', '64-1961588', '66-2359952');
insert into TRANSPLANTATION (Status, Date_of_transplantation, P_id, Doc_id, D_id) values ('Success', '11/03/2011', '54-9715204', '90-7640351', '55-1627672');
insert into TRANSPLANTATION (Status, Date_of_transplantation, P_id, Doc_id, D_id) values ('Success', '12/23/2004', '87-3021873', '85-9379081', '66-2359952');
insert into TRANSPLANTATION (Status, Date_of_transplantation, P_id, Doc_id, D_id) values ('Failure', '06/11/1979', '54-9715204', '64-1961588', '00-8551187');
insert into TRANSPLANTATION (Status, Date_of_transplantation, P_id, Doc_id, D_id) values ('Success', '11/04/1996', '87-3021873', '90-7640351', '00-8551187');
insert into TRANSPLANTATION (Status, Date_of_transplantation, P_id, Doc_id, D_id) values ('Failure', '04/14/2012', '54-9715204', '64-1961588', '55-1627672');
insert into TRANSPLANTATION (Status, Date_of_transplantation, P_id, Doc_id, D_id) values ('Failure', '10/13/1944', '87-3021873', '90-7640351', '66-2359952');
insert into TRANSPLANTATION (Status, Date_of_transplantation, P_id, Doc_id, D_id) values ('Success', '05/17/1997', '54-9715204', '85-9379081', '55-1627672');

--Inserting into table HOSPITAL_H_phno

insert into HOSPITAL_H_phno (H_phno, H_id) values ('612-738-4539', '433');
insert into HOSPITAL_H_phno (H_phno, H_id) values ('372-669-1337', '5');
insert into HOSPITAL_H_phno (H_phno, H_id) values ('913-455-1702', '5');
insert into HOSPITAL_H_phno (H_phno, H_id) values ('737-576-3077', '4');
insert into HOSPITAL_H_phno (H_phno, H_id) values ('226-425-3136', '146');
insert into HOSPITAL_H_phno (H_phno, H_id) values ('684-792-1933', '433');
insert into HOSPITAL_H_phno (H_phno, H_id) values ('203-404-4690', '5');
insert into HOSPITAL_H_phno (H_phno, H_id) values ('953-382-5881', '4');
insert into HOSPITAL_H_phno (H_phno, H_id) values ('221-482-9755', '146');
insert into HOSPITAL_H_phno (H_phno, H_id) values ('430-233-7676', '4');


--Inserting into table WORKS_IN

insert into WORKS_IN (Doc_id, H_id) values ('90-7640351', '433');
insert into WORKS_IN (Doc_id, H_id) values ('88-2745718', '5');
insert into WORKS_IN (Doc_id, H_id) values ('85-1163701', '4');
insert into WORKS_IN (Doc_id, H_id) values ('48-7092538', '146');
insert into WORKS_IN (Doc_id, H_id) values ('85-1163701', '5');
insert into WORKS_IN (Doc_id, H_id) values ('64-1961588', '433');
insert into WORKS_IN (Doc_id, H_id) values ('85-1163701', '146');
insert into WORKS_IN (Doc_id, H_id) values ('90-7640351', '146');
insert into WORKS_IN (Doc_id, H_id) values ('64-1961588', '4');
insert into WORKS_IN (Doc_id, H_id) values ('88-2745718', '433');


