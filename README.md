# Hospital-Management-System
The Hospital Management System (HMS) is a database-driven project designed to simplify hospital administration and improve patient care.
It covers patients, doctors, appointments, surgeries, billing, insurance, pharmacy, wards, staff, and departments, ensuring that both clinical and administrative workflows are streamlined.

This repository contains:

- Database schemas for all entities

- Sample data insertions

- SQL queries demonstrating analytics (joins, aggregates, CTEs, window functions)

- ER diagrams and documentation
---

## 📌 Features

- **Modules**: Patient, Doctor, Appointment, Surgery, Ward, Staff, Department, Billing/Insurance, EHR, Pharmacy/Inventory  
- Ready-to-use schemas (`.sql`) with sample insert data  
- Analytical queries (`queries.sql`) with:
  - Joins across multiple tables  
  - Aggregates (`COUNT`, `SUM`, `AVG`)  
  - CTEs for modular queries  
  - Window functions (`RANK`, `ROW_NUMBER`, `SUM OVER`)  
- ER diagrams and documentation in `/docs`

---

## 📂 Project Structure

```
Hospital-Management-System/
│
|── README.md                       # Project documentation
├── queries.sql                     # Example queries (joins, CTEs, window functions, analytics)
├── shilpa_patient.sql              # Patient schema + sample data
├── shilpa_doctor.sql               # Doctor schema + sample data
├── shilpa_appointment.sql          # Appointment schema + sample data
├── shilpa_surgery.sql              # Surgery schema + sample data
├── shilpa_billing_insurance.sql    # Billing & Insurance schema + sample data
├── shilpa_department.sql           # Department schema + sample data
├── shilpa_ehr.sql                  # Electronic Health Record schema + sample data
├── shilpa_pharmacy_inventory.sql   # Pharmacy & Inventory schema + sample data
├── shilpa_staff.sql                # Staff schema + sample data
├── shilpa_ward.sql                 # Ward schema + sample dat
└── docs/                           # Supporting documentation
  ├── Entities_and_Attributes.jpg 
  ├── Entity_Relationship_Diagram.jpg 
  ├── Hospital_Management_System.docx 
  └── Project_Hospital_Management_System.pptx
```

---

## 🛠️ Database Entities

Key entities included:

- **Patient** – personal details & medical history  
- **Doctor** – specialization, schedules  
- **Appointment** – links patient & doctor  
- **Surgery** – type, cost, date, doctor–patient mapping  
- **Billing & Insurance** – billing info, claim status  
- **Ward** – capacity, charges, patient assignment  
- **Staff** – job title, schedules  
- **Department** – department info & head  
- **Electronic Health Record (EHR)** – diagnoses & lab results  
- **Pharmacy & Inventory** – medicines, pricing, stock

---

## ▶️ How to Run

1. **Install MySQL** (or any compatible DBMS).  

2. **Create a new database**, for example:  
   ```sql
   CREATE DATABASE hospital_db;
   USE hospital_db;

Import schema files in this order:  

<details>
<summary>📂 Click to view schema files</summary>

- `shilpa_patient.sql`  
- `shilpa_doctor.sql`  
- `shilpa_appointment.sql`  
- `shilpa_surgery.sql`  
- `shilpa_billing_insurance.sql`  
- `shilpa_department.sql`  
- `shilpa_ehr.sql`  
- `shilpa_pharmacy_inventory.sql`  
- `shilpa_staff.sql`  
- `shilpa_ward.sql`  

</details>

Load sample data (already included in the `.sql` files).  

Run `queries.sql` to explore analytics.  

---

## 📊 Example Queries  

- List all patients and doctors in *Cardiology*  
- Join patient–appointment–doctor details  
- Rank patients by surgery cost  
- Running total of billing per patient  
- Patients with surgeries but no insurance  
- Longest stay per ward (using CTE + window function)

---

## 📈 Entity–Relationship Diagram    

📌 Refer to [`/docs/Entity_Relationship_Diagram.jpg`](docs/Entity_Relationship_Diagram.jpg) for the full schema relationships.  

---

# 📹 Demo

### YouTube presentation: Watch here (https://www.youtube.com/watch?v=ghvzvsQYQwM)

---

## 🚀 Future Enhancements  

- Web or mobile front-end for interaction  
- Integration with Flask/Django APIs  
- Real-time dashboards for billing & occupancy  
- Predictive analytics using ML models
  
---

## 🙌 Acknowledgments  
- Inspired by real-world hospital workflows and data management needs.  
- ER diagram and schema design modeled after common healthcare systems.  
- Special thanks to professors, mentors, and peers who helped shape this project.

---

## ⭐ Closing Notes  
This project showcases how **SQL + data modeling + analytics** can power core hospital operations.  
From appointment tracking to surgery logs, this system helps manage and analyze medical data efficiently and reliably.

If this project helped you learn or saved you time, consider ⭐ starring the repo to show support!  
Contributions and feedback are always welcome.
