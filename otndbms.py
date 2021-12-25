import streamlit as st
import pandas as pd
import psycopg2


#passlib,hashlib,bcrypt,scrypt
import hashlib
def make_hashes(password):
    return hashlib.sha256(str.encode(password)).hexdigest()

def check_hashes(password,hashed_text):
    if make_hashes(password) == hashed_text:
        return hashed_text
        return False



conn = psycopg2.connect(database = "otndbms", user = "postgres", password = "182001", host = "localhost", port = "5432")
c = conn.cursor()

def create_usertable():
    c.execute('CREATE TABLE IF NOT EXISTS userstable(username TEXT,password TEXT)')

def add_userdata(username,password):
    c.execute('INSERT INTO userstable(username, password) VALUES (%s,%s)', (username, password))

    conn.commit()

def login_user(username,password):
    c.execute('SELECT * FROM userstable WHERE username = %s AND password = %s',(username,password))
    data = c.fetchall()
    return data

def view_all_users():
    c.execute('SELECT * FROM userstable')
    data = c.fetchall()
    return data
def display():
    c.execute('SELECT * FROM Donor')
    data = c.fetchall()
    return data

#Display details of patient and donor undergoing transplantation under a particular doctor

def patient_donor_trans(Doc_id):

    #c.execute(SELECT COUNT(WL_id) AS Patient_Count FROM WAITING_LIST WHERE status='waiting')
    c.execute('SELECT P_id, D_id, Date_of_transplantation FROM TRANSPLANTATION WHERE Doc_id = %s', (Doc_id,))
    data=c.fetchall()
    return data

#On particular date of transplantation display the transplantations

def patient_donor_date(Date_of_transplantation):
    #c.execute(SELECT COUNT(WL_id) AS Patient_Count FROM WAITING_LIST WHERE status='waiting')
    c.execute('SELECT P_id, D_id, Date_of_transplantation FROM TRANSPLANTATION WHERE Date_of_transplantation = %s', (Date_of_transplantation,))
    data=c.fetchall()
    return data

#Count the number of patients in waiting list, count number of organs available

def patient_count():
    c.execute('SELECT COUNT(Organ_id), Organ_name FROM ORGAN_AVAILABLE GROUP BY Organ_name')
    data = c.fetchall()
    return data    

#Donor who's donating more than 2 organs

def donor_donate():
    c.execute('SELECT D.D_id, D.F_name, D.L_name FROM DONOR D, ORGAN_AVAILABLE O WHERE D.D_id = O.D_id GROUP BY D.D_id HAVING COUNT(*) > 2')
    data = c.fetchall()
    return data 
 
#Gov Bodies and which ones sponsoring most awareness programs

def gov_body(Budget):
    c.execute('SELECT Organisation_id, Organisation_name FROM GOV_BODY WHERE Organisation_id IN ( SELECT Organisation_id FROM AWARENESS_PROGRAMS WHERE Budget= %s)',(Budget,))
    data = c.fetchall()
    return data  

#Find the doctors under whom organ transplantations have been successful

def trans_success(Status):
    c.execute('SELECT DISTINCT Doc_name FROM DOCTOR NATURAL JOIN (SELECT * FROM TRANSPLANTATION WHERE Status= %s) AS TRANS',(Status,))
    data = c.fetchall()
    return data 

#Display donors who have donated high demand organs

def donors_org():
    c.execute('SELECT F_name, L_name FROM DONOR WHERE D_id IN (SELECT D_id FROM ORGAN_AVAILABLE WHERE Organ_name IN (SELECT Organ_name FROM WAITING_LIST GROUP BY Organ_name HAVING COUNT(*) > 1))')
    data = c.fetchall()
    return data

#Which hospital has taken up most transplantations 

def hos_trans():
    c.execute('SELECT H_id, H_name FROM HOSPITAL WHERE H_id IN (SELECT H_id FROM WORKS_IN WHERE Doc_id IN (SELECT Doc_id FROM TRANSPLANTATION GROUP BY Doc_id HAVING COUNT(*) > 1 ))')
    data = c.fetchall()
    return data    


def main():
    '''Simple Login App'''




st.title("Organ Transplant Network")

menu = ["Home","Login","SignUp"]
choice = st.sidebar.selectbox("Menu",menu)

if choice == "Home":
    st.subheader("Home")

elif choice == "Login":
    st.subheader("Login Section")

username = st.sidebar.text_input("User Name")
password = st.sidebar.text_input("Password",type='password')
if st.sidebar.checkbox("Login"):
    # if password == '12345':
    create_usertable()
    hashed_pswd = make_hashes(password)

    result = login_user(username,check_hashes(password,hashed_pswd))
    if result:

        st.success("Logged In as {}".format(username))
        display1="Display donors"
        query ="Gov Bodies and which ones sponsoring most awareness programs"
        query2 ="Find the doctors under whom organ transplantations have been successful"
        query3 ="Display donors who have donated high demand organs "
        query4="Which hospital has taken up most transplantations"
        count2= "Donor who's donating more than 2 organs"
        trans= "Display details of patient and donor undergoing transplantation under a particular doctor"
        task = st.selectbox("Task",[display1,trans,count2,query,query2,query3,query4])
        if task == display1:
            st.subheader(display1)
            user_result = display()
            clean_db = pd.DataFrame(user_result,columns=["d_id","f_name", "minit", "l_name", "d_dob", "d_mobno", "d_address", "d_status"])
            st.dataframe(clean_db)

    #    elif task == "Analytics":
    #        st.subheader("Analytics")
            
        elif task == trans:
                st.subheader(trans)
                x=st.text_input("Doc_id")
                user_result = patient_donor_trans(x)
              #  clean_db = pd.DataFrame(user_result,columns=["WL_id","Status","Severity_of_case","Organ_name"])
                #clean_db=pd.DataFrame(user_result,columns=["Status","Date_of_transplantation","P_id","Doc_id","D_id"])
                clean_db=pd.DataFrame(user_result,columns=["P_id","D_id", "Date_of_transplantation"])
                st.dataframe(clean_db)

       

   

        elif task == count2:
                st.subheader(count2)
               # x=st.text_input("Date_of_transplantation")
                user_result = donor_donate()
                clean_db=pd.DataFrame(user_result,columns=["D_id","F_name", "L_name"])
                st.dataframe(clean_db)
                donor_donate()  

        elif task == query:
                st.subheader(query)
                x=st.text_input("Budget")
                user_result = gov_body(x)
                clean_db=pd.DataFrame(user_result,columns=["Organisation_id","Organisation_name"])
                st.dataframe(clean_db)
                #gov_body()  

        elif task == query2:
                st.subheader(query2)
                x=st.text_input("Status")
                user_result = trans_success(x)
                clean_db=pd.DataFrame(user_result,columns=["Doc_name"])
                st.dataframe(clean_db)
                trans_success() 

        elif task == query3:
                st.subheader(query3)
              #  x=st.text_input("Status")
                user_result = donors_org()
                clean_db=pd.DataFrame(user_result,columns=["F_name","L_name"])
                st.dataframe(clean_db)
                donors_org()     

        elif task == query4:
                st.subheader(query4)
              #  x=st.text_input("Status")
                user_result = hos_trans()
                clean_db=pd.DataFrame(user_result,columns=["H_id","H_name"])
                st.dataframe(clean_db)
                hos_trans()                                                





        elif task == "Profiles":
            st.subheader("User Profiles")
            user_result = view_all_users()
            clean_db = pd.DataFrame(user_result,columns=["Username","Password"])
            st.dataframe(clean_db)
    else:
        st.warning("Incorrect Username/Password")

elif choice == "SignUp":
    st.subheader("Create New Account")
    new_user = st.text_input("Username",key='1')
    new_password = st.text_input("Password",type='password',key='2')

    if st.button("Signup"):
        create_usertable()
        add_userdata(new_user,make_hashes(new_password))
        st.success("You have successfully created a valid Account")
        st.info("Go to Login Menu to login")

if __name__ == '__main__':
    main()