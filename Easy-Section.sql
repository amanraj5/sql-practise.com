-- Question-1. Show first name, last name, and gender of patients whose gender is 'M'
SELECT first_name,last_name,gender FROM patients where gender='M'

-- Question-2. Show first name and last name of patients who does not have allergies. (null)
SELECT first_name,last_name FROM patients where allergies is null

-- Question-3. Show first name of patients that start with the letter 'C'
SELECT first_name FROM patients where first_name like "C%"

-- Question-4. Show first name and last name of patients that weight within the range of 100 to 120 (inclusive)
SELECT first_name,last_name FROM patients where weight between 100 and 120

-- Question-5. Update the patients table for the allergies column. If the patient's allergies is null then replace it with 'NKA'
update patients set allergies="NKA"where allergies is null

-- Question-6. Show first name and last name concatinated into one column to show their full name.
select concat(first_name , " " , last_name) from patients

-- Question-7. Show first name, last name, and the full province name of each patient.Example: 'Ontario' instead of 'ON'
SELECT first_name,last_name,province_name FROM patients join province_names on patients.province_id=province_names.province_id

-- Question-8. Show how many patients have a birth_date with 2010 as the birth year.
SELECT (count(patient_id)) from patients where birth_date like "2010%"

-- Question-9. Show the first_name, last_name, and height of the patient with the greatest height.
select first_name,last_name,height from patients where height=(select max(height) from patients)

-- Question-10. Show all columns for patients who have one of the following patient_ids: 1,45,534,879,1000
SELECT * FROM patients where
  patient_id=1
  or
  patient_id=45
  or
  patient_id=534
  or
  patient_id=879
  or
  patient_id=1000
  
-- Question-11. Show the total number of admissions
select count(patient_id) from admissions

-- Question-12. Show all the columns from admissions where the patient was admitted and discharged on the same day.
select * from admissions where admission_date=discharge_date

-- Question-13. Show the patient id and the total number of admissions for patient_id 579.
select patient_id,count(patient_id) from admissions where patient_id=579

-- Question-14. Based on the cities that our patients live in, show unique cities that are in province_id 'NS'?
SELECT distinct(city) FROM patients where province_id='NS'

-- Question-15. Write a query to find the first_name, last name and birth date of patients who has height greater than 160 and weight greater than 70
SELECT first_name,last_name,birth_date FROM patients where height>160 and weight>70

-- Question-16. Write a query to find list of patients first_name, last_name, and allergies from Hamilton where allergies are not null
SELECT first_name,last_name,allergies FROM patients where city="Hamilton" and allergies is not null
