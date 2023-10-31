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
