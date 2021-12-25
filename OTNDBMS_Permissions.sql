\c OTNDBMS;

create user patient with nosuperuser;
grant connect on database "OTNDBMS" to patient;
grant select on WAITING_LIST to patient;
grant select on ORGAN_AVAILABLE to patient;

create user donor with nosuperuser;
grant connect on database "OTNDBMS" to donor;
grant select on WAITING_LIST to donor;
grant select on ORGAN_AVAILABLE to donor;

create user doctor with nosuperuser;
grant connect on database "OTNDBMS" to doctor;
grant select on WAITING_LIST to doctor;
grant select on ORGAN_AVAILABLE to doctor;
grant select on WORKS_IN to doctor;
grant select on HOSPITAL to govadmin;
grant select on TRANSPLANTATION to doctor;
grant update on TRANSPLANTATION to doctor;

create user govadmin with superuser;
grant connect on database "OTNDBMS" to govadmin;
grant all privileges on database OTNDBMS to govadmin;
--get list of all emp who manage at least 1 inv or approved one payment

create user hospitalhead with nosuperuser;
grant connect on database "OTNDBMS" to hospitalhead;
grant select on WAITING_LIST to hospitalhead;
grant select on ORGAN_AVAILABLE to hospitalhead;
grant select on GOV_BODY to hospitalhead;
grant select on TRANSPLANTATION to hospitalhead;
grant update on TRANSPLANTATION to hospitalhead;
grant update on DOCTOR to hospitalhead; --only in their hospital
grant update on WORKS_IN to hospitalhead;
grant update on HOSPITAL_H_phno to hospitalhead;

create user receptionist with nosuperuser;
grant connect on database "OTNDBMS" to receptionist;
grant select on TRANSPLANTATION to receptionist;
grant select on WORKS_IN to receptionist;
grant update on PATIENT to receptionist;
grant update on DONOR to hospitalhead;

create user apadmin with nosuperuser;
grant connect on database "OTNDBMS" to apadmin;
grant select on AWARENESS_PROGRAMS to apadmin;
grant select on GOV_BODY to apadmin;
grant update on AWARENESS_PROGRAMS to apadmin;
