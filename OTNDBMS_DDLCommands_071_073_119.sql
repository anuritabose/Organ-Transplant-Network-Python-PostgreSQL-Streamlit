drop database OTNDBMS_071_073_119;
create database OTNDBMS_071_073_119;

\c OTNDBMS_071_073_119

create table WAITING_LIST (
	WL_id VARCHAR(20) PRIMARY KEY,
    Status VARCHAR(7),
    Severity_of_case INT NOT NULL,
    Organ_name VARCHAR(20) NOT NULL
);

create table PATIENT (
	P_id VARCHAR(50) PRIMARY KEY,
	F_name VARCHAR(50) NOT NULL,
	Minit VARCHAR(50),
	L_name VARCHAR(50) NOT NULL,
	P_dob DATE,
	P_mobno VARCHAR(50),
	P_address VARCHAR(50),
	WL_id VARCHAR(50),
	FOREIGN KEY (WL_id) REFERENCES WAITING_LIST(WL_id)
);

create table DONOR(
	D_id VARCHAR(50) PRIMARY KEY,
    F_name VARCHAR(50)NOT NULL,
    Minit VARCHAR(50),
    L_name VARCHAR(50) NOT NULL,
    D_dob DATE,
    D_mobno VARCHAR(50),
    D_address VARCHAR(100),
    D_status VARCHAR(10) NOT NULL
);

create table ORGAN_AVAILABLE(
	Organ_id VARCHAR(50) PRIMARY KEY,
	Organ_name VARCHAR(50),
	D_id VARCHAR(50),
	FOREIGN KEY (D_id) REFERENCES DONOR(D_id)
);

create table GOV_BODY(
	Organisation_id VARCHAR(50) PRIMARY KEY,
	Organisation_name VARCHAR(50)NOT NULL,
	Location VARCHAR(50)
);

create table AWARENESS_PROGRAMS(
	Organisation_id VARCHAR(50) NOT NULL,
	Prog_name VARCHAR(50) NOT NULL,
	Budget VARCHAR(50),
	PRIMARY KEY (Organisation_id,Prog_name),
	FOREIGN KEY (Organisation_id) REFERENCES GOV_BODY(Organisation_id)
);

create table DOCTOR (
	Doc_id VARCHAR(50) PRIMARY KEY,
	Doc_name VARCHAR(50),
	Doc_mobno VARCHAR(50)
);

create table HOSPITAL (
	H_id VARCHAR(50) PRIMARY KEY,
	H_name VARCHAR(50),
	H_address VARCHAR(50),
	Organisation_id VARCHAR(50),
	FOREIGN KEY (Organisation_id) REFERENCES GOV_BODY(Organisation_id)
);

--Tables from relations:

create table MANAGES (
	WL_id VARCHAR(50),
	Organ_id VARCHAR(50),
	Organ_match VARCHAR(50) NOT NULL,
    PRIMARY KEY(WL_id,Organ_id),
	FOREIGN KEY (WL_id) REFERENCES WAITING_LIST(WL_id),
	FOREIGN KEY (Organ_id) REFERENCES ORGAN_AVAILABLE(Organ_id)
);

create table WORKS_IN (
	Doc_id VARCHAR(50),
	H_id VARCHAR(50),
    PRIMARY KEY(Doc_id,H_id),
	FOREIGN KEY (Doc_id) REFERENCES DOCTOR(Doc_id),
	FOREIGN KEY (H_id) REFERENCES HOSPITAL(H_id)
);

create table TRANSPLANTATION (
	Status VARCHAR(50),
    P_id VARCHAR(50),
	Date_of_transplantation DATE,
	Doc_id VARCHAR(50),
	D_id VARCHAR(50),
	FOREIGN KEY (P_id) REFERENCES PATIENT(P_id),
	FOREIGN KEY (Doc_id) REFERENCES DOCTOR(Doc_id),
	FOREIGN KEY (D_id) REFERENCES DONOR(D_id)
);

create table HOSPITAL_H_phno (
	H_phno VARCHAR(50),
	H_id VARCHAR(50),
	PRIMARY KEY (H_id,H_phno),
	FOREIGN KEY (H_id) REFERENCES HOSPITAL(H_id)
);
