# Organ-Transplant-Network-Python-PostgreSQL-Streamlit

The Organ Donation and Procurement Network Management System is a database management system that uses database technology to construct, maintain and manipulate various kinds of data about a person’s donation or procurement of a particular organ. 

It maintains a comprehensive medical history and other critical information like patient and donor details in the DBMS system. 

Essentially, it maintains a database containing statistical information regarding the network of organ donation and procurement for a particular state/country.





Entities and their Attributes:

GOVT BODY- location , Donor_id, organisation_id,Number_of_hospitals
HOSPITAL- H_name,H_id,H_phno,H_address,O_id
DONOR-D_id,D_name,D_age,D_address,H_id,Doc_id
DOCTOR-Doc_name,Doc_id,Doc_name,H_id,Doc_mobno
PATIENT-P_id,P_name(F_name,Minit,L_name),P_dob,P_mobno,P_address,
   Doc_id,H_id,P_age
ORGAN AVAILABLE-Organ_name,Organ_id,Donor_id,Number _of_organs_available
WAITING LIST-Severity_of_case,Organ_name,Status,P_id
AWARENESS PROGRAMS- Name,Budget





 Key Attributes of Strong Entities:

*Organisation_id (GOVT BODY)
*H_id(HOSPITAL)
*P_id(PATIENT)
*D_id(DONOR)
*Organ_id(ORGAN AVAILABLE)
*Doc_id(DOCTOR)
*P_id(WAITING LIST)
*Name(AWARENESS PROGRAMS)[Partial key]





Relationships:

MANAGES: ternary relationship 
This is a set of relationship instances (wp,oa,gb), where the meaning is that for a waiting patient wp in WAITING LIST the GOV BODY, gb matches donor from ORGAN AVAILABLE oa

TRANSPLANTATION:
This is a set of relationship instances (p,doc,d), where the meaning is that for a PATIENT p that’s been matched with DONOR d, assigned DOCTOR doc performs the organ transplantation
       




Binary Relationships:

REGISTERS
It is an identifying relationship that says that a PATIENT with a P_id must register to be added to WAITING LIST with attributes like severity_of_case etc mentioned. 
1. Cardinality ratio - N:1 Since many patients will be present in a waiting list. 
2. Participation 
partial for patients as all patients don’t need organ transplants.
Total for waiting list as a patient must be registered to be in list

DONATES
It is an identifying relationship that says that if a DONOR with a D_id donates then his organ details etc will be added to ORGAN_AVAILABLE.
1. Cardinality ratio - 1:N As a donor(brain dead patient per say) can donate      multiple organs.
2. Participation - 
partial for organ available as all organs don’t have to come from 1 donor.
Total for donor as all donors will donate if classified as one.

BELONGS TO
It is an identifying relationship that says that HOSPITAL with H_id will belong to a GOV BODY  with Organisation_id. 
1. Cardinality ratio - 1:N as 1 government body is in charge of many hospitals
2. Participation - 
Partial for gov body as all gov bodies are not in charge of hospitals
Total for hospitals as all hospitals will belong to at least one Gov Body.

WORKS IN
It is an identifying relationship that says that a doctor with a Doc_id works in the Hospital.
1.Cardinality ratio - N:M Since N doctors can work in m hospitals
2.Participation-
    Partial for doctor as doctors may or may not work in the hospital
    Partial for Hospital as not all hospitals have doctors for organ transplantation.
 
PROMOTES
	It is an identifying relationship that says that Govt body can promote Awareness
            Programs for organ donation.
	1. Cardinality ratio - 1:N as 1 government body can promote many awareness 
                            Programs
		2. Participation-
      -    Partial for the GOVT BODY as it may or may not promote awareness   
 programs
Total for Awareness programs as it can only be run by the GOVT BODY

