#Total Patients
SELECT COUNT(*) AS total_patients FROM patient;

#Total Doctors
SELECT COUNT(*) AS total_doctors FROM doctor;

#Total Visits
SELECT COUNT('VisitID') AS Total_Visits 
FROM visit;

#Average Age of Patients
SELECT AVG(TIMESTAMPDIFF(YEAR, DateOfBirth, CURDATE())) AS Average_Age 
FROM patient;

#Top 5 Diagnosed Conditions
SELECT Diagnosis, COUNT(*) AS Frequency 
FROM visit 
GROUP BY Diagnosis 
ORDER BY Frequency DESC 
LIMIT 5;

#Total Lab Tests Conducted
SELECT COUNT('LabResultID') AS Total_Lab_Tests 
FROM lab;

#Doctor Workload (Avg. Patients Per Doctor)
SELECT COUNT('VisitID') / COUNT(DISTINCT 'DoctorID') AS Avg_Patients_Per_Doctor
FROM visit;







