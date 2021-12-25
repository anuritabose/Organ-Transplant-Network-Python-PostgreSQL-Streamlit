--Display Patient and Donor Details
SELECT F_name, Minit, L_name, P_dob FROM PATIENT;
SELECT F_name, Minit, L_name, D_status, D_mobno FROM DONOR;

--Update Hospital phone number for a particular Hospital ID
UPDATE HOSPITAL_H_phno SET H_phno = '326-425-3136' WHERE H_id = '146'

--Display number of patients and donors in waiting list and organ available
SELECT COUNT(*) AS Patient_Count FROM WAITING_LIST WHERE status= 'waiting';
SELECT COUNT(Organ_id) AS Organ_Count FROM ORGAN_AVAILABLE;

-- Display awareness programs with budget > 10000
SELECT Organisation_id, Prog_name FROM AWARENESS_PROGRAMS WHERE Budget > '$400'; 

-- Update status of transplantation 
UPDATE TRANSPLANTATION SET Status='Success' WHERE D_id = '00-8551187' AND P_id = '54-9715204';

-- Display details of patient and donor undergoing transplantation under a particular doctor
SELECT P_id, D_id, Date_of_transplantation FROM TRANSPLANTATION WHERE Doc_id = '90-7640351';

--On particular date of transplantation display the transplantations
SELECT Count(*) FROM TRANSPLANTATION WHERE Date_of_transplantation = '11/03/2011';

--Count the number of patients in waiting list, count number of organs available
SELECT COUNT(Organ_id), Organ_name, D FROM ORGAN_AVAILABLE GROUP BY Organ_name;

--COMPLEX QUERIES
--Count the number of patients in waiting list, count number of organs available
SELECT W.WL_id, P.F_name, P.L_name, W.Severity_of_case FROM PATIENT AS P, WAITING_LIST AS W WHERE Severity_of_case > 50 AND W.WL_id = P.WL_id;

--Donor who's donating more than 2 organs
SELECT D.D_id, D.F_name, D.L_name FROM DONOR D, ORGAN_AVAILABLE O WHERE D.D_id = O.D_id GROUP BY D.D_id HAVING COUNT(*) > 2;

--Find number of doctors working in a hospital - groupby H_id, count D_id
SELECT H.H_name, COUNT(W.Doc_id) FROM HOSPITAL H, WORKS_IN W WHERE H.H_id = W.H_id GROUP BY H.H_id;

--Gov Bodies and which ones sponsoring most awareness programs
SELECT Organisation_id, Organisation_name, SUM(Budget) FROM GOV_BODY WHERE Organisation_id IN ( SELECT Organisation_id FROM AWARENESS_PROGRAMS WHERE Budget=MA;

--Q4. Find the highest budget awareness program initiated by each government organisation 
SELECT G.Organisation_id, G.Organisation_name FROM GOV_BODY G, AWARENESS PROGRAM E WHERE G.Organisation_id = E.Organisation_id AND E.Budget = (SELECT MAX(Budget))
CREATE VIEW Gov_Body_Budget AS
    SELECT O.Organisation_id, O.Organisation_name
    FROM GOV_BODY O, AWARENESS_PROGRAMS A
    WHERE A.Budget > '$370';
--Q5. Find the doctors under whom organ transplantations have been successful
SELECT DISTINCT Doc_name FROM DOCTOR NATURAL JOIN (SELECT * FROM TRANSPLANTATION WHERE Status='Success') AS TRANS;

--NESTED QUERIES
--Display donors who have donated high demand organs
SELECT F_name, L_name FROM DONOR WHERE D_id IN (SELECT D_id FROM ORGAN_AVAILABLE WHERE Organ_name IN (SELECT Organ_name FROM WAITING_LIST GROUP BY Organ_name HAVING COUNT(*) > 1));

--Which hospital has taken up most transplantations 
SELECT H_id, H_name FROM HOSPITAL WHERE H_id IN (SELECT H_id FROM WORKS_IN WHERE Doc_id IN (SELECT Doc_id FROM TRANSPLANTATION GROUP BY Doc_id HAVING COUNT(*) > 1 ));

--Update Organ_match if WL.Organ_name=Organ Available_Organ_name and status = False and Severity_of_case > threshold
UPDATE MANAGES SET Organ_match = true WHERE WL_id IN (SELECT WL_id FROM WAITING_LIST W, ORGAN_AVAILABLE O WHERE W.Organ_name=O.Organ_name AND W.Severity_of_case>4);