-- 1. Simple SELECT: List all patients
SELECT * FROM patient;

-- 2. Filter: Find all doctors specializing in Cardiology
SELECT Doctor_ID, First_Name, Last_Name, Specialization
FROM doctor
WHERE Specialization = 'Cardiology';

-- 3. JOIN: Show patient appointments with their doctor details
SELECT a.Appointment_ID, p.First_Name AS Patient, d.First_Name AS Doctor, a.Appointment_Date, a.Status
FROM appointment a
JOIN patient p ON a.Patient_ID = p.Patient_ID
JOIN doctor d ON a.Doctor_ID = d.Doctor_ID;

-- 4. JOIN: Billing summary with patient info
SELECT b.Bill_ID, p.First_Name, p.Last_Name, b.Amount_Due, b.Claim_Status
FROM billing_insurance b
JOIN patient p ON b.Patient_ID = p.Patient_ID;

-- 5. Aggregate: Count patients per department (through doctor)
SELECT d.Department, COUNT(p.Patient_ID) AS Patient_Count
FROM doctor doc
JOIN appointment a ON doc.Doctor_ID = a.Doctor_ID
JOIN patient p ON a.Patient_ID = p.Patient_ID
JOIN staff d ON doc.Specialization = d.Department
GROUP BY d.Department;

-- 6. Window Function: Rank patients by surgery cost
SELECT s.Surgery_ID, p.First_Name, p.Last_Name, s.Surgery_Cost,
       RANK() OVER (ORDER BY s.Surgery_Cost DESC) AS Cost_Rank
FROM surgery s
JOIN patient p ON s.Patient_ID = p.Patient_ID;

-- 7. Window Function: Running total of billing amounts by patient
SELECT b.Patient_ID, p.First_Name, b.Date, b.Amount_Due,
       SUM(b.Amount_Due) OVER (PARTITION BY b.Patient_ID ORDER BY b.Date) AS Running_Total
FROM billing_insurance b
JOIN patient p ON b.Patient_ID = p.Patient_ID;

-- Patients with at least 1 appointment
WITH patient_appts AS (
    SELECT Patient_ID, COUNT(*) AS appt_count
    FROM appointment
    GROUP BY Patient_ID
)
SELECT p.Patient_ID, p.First_Name, p.Last_Name, pa.appt_count
FROM patient_appts pa
JOIN patient p ON pa.Patient_ID = p.Patient_ID
WHERE pa.appt_count >= 1;

-- 9. CTE + JOIN: Find average surgery cost per doctor
WITH doctor_surgery AS (
    SELECT Doctor_ID, AVG(Surgery_Cost) AS avg_cost
    FROM surgery
    GROUP BY Doctor_ID
)
SELECT d.Doctor_ID, d.First_Name, d.Last_Name, round(ds.avg_cost,2)
FROM doctor d
JOIN doctor_surgery ds ON d.Doctor_ID = ds.Doctor_ID;

-- 10. Patients who had a surgery AND at least one appointment
SELECT DISTINCT p.Patient_ID, p.First_Name, p.Last_Name
FROM patient p
JOIN surgery s ON p.Patient_ID = s.Patient_ID
JOIN appointment a ON p.Patient_ID = a.Patient_ID;

-- 11. Find the top 3 most expensive surgeries with patient and doctor details
SELECT s.Surgery_ID, s.Surgery_Type, s.Surgery_Cost,
       p.First_Name AS Patient, d.First_Name AS Doctor
FROM surgery s
JOIN patient p ON s.Patient_ID = p.Patient_ID
JOIN doctor d ON s.Doctor_ID = d.Doctor_ID
ORDER BY s.Surgery_Cost DESC
LIMIT 3;

-- 12. Find patients who had surgeries but no insurance coverage
SELECT DISTINCT p.Patient_ID, p.First_Name, p.Last_Name, s.Surgery_Type, b.Claim_Status
FROM surgery s
JOIN patient p ON s.Patient_ID = p.Patient_ID
LEFT JOIN billing_insurance b ON p.Patient_ID = b.Patient_ID
WHERE b.Insurance_Provider IS NULL OR b.Claim_Status = 'Uninsured';

-- 13. Find doctors who performed more than one type of surgery
SELECT d.Doctor_ID, d.First_Name, d.Last_Name, COUNT(DISTINCT s.Surgery_Type) AS surgery_types
FROM doctor d
JOIN surgery s ON d.Doctor_ID = s.Doctor_ID
GROUP BY d.Doctor_ID, d.First_Name, d.Last_Name
HAVING COUNT(DISTINCT s.Surgery_Type) > 1;

-- 14. Window Function: Find the latest appointment for each patient
SELECT *
FROM (
    SELECT Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date,
           ROW_NUMBER() OVER (PARTITION BY Patient_ID ORDER BY Appointment_Date DESC) AS rn
    FROM appointment
) t
WHERE rn = 1;

-- 15: Find the patient with the longest stay in each ward
WITH ward_stays AS (
    SELECT 
        w.Ward_ID,
        w.Ward_Name,
        p.Patient_ID,
        p.First_Name AS Patient,
        w.Current_Occupancy, 
        w.Ward_Capacity,
        DATEDIFF(CURDATE(), a.Appointment_Date) AS Days_Admitted
    FROM ward w
    JOIN appointment a ON w.Ward_ID = a.Appointment_ID   -- demo link
    JOIN patient p ON a.Patient_ID = p.Patient_ID
)

SELECT 
    Ward_Name,
    Patient,
    Days_Admitted,
    ROW_NUMBER() OVER (PARTITION BY Ward_ID ORDER BY Days_Admitted DESC) AS Stay_Rank
FROM ward_stays
WHERE Days_Admitted IS NOT NULL
AND Days_Admitted > 0
ORDER BY Ward_Name, Stay_Rank;