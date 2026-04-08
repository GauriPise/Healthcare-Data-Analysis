# 🏥 Healthcare Data Analysis 


## 📑 Table of Contents

1. Project Overview  
2. Dataset Description   
3. Data Preparation & Transformations  
4. DAX Measures  
5. Key KPI Measures  
6. Branch / Location Measures  
7. Dashboard Pages & Visualizations     
8. Drill-Down & Interactivity  
9. Performance Optimization  
10. How to Reproduce / Deliverables  
11. Business Insights
12. Conclusion
13. Dashboard Images

---

# 📌 1. Project Overview

This project analyzes healthcare data to uncover insights related to:

- 🏥 Patient admissions & discharges  
- 💰 Hospital revenue  
- 👩‍⚕️ Department performance  
- 📊 Patient trends  

### 🎯 Objective:
To improve **hospital efficiency, patient management, and revenue tracking** using data-driven insights.

---

# 📊 2. Dataset Description

The dataset contains hospital-level patient and operational data:

| Column Name        | Description |
|-------------------|------------|
| Patient_ID        | Unique patient identifier |
| Patient_Name      | Name of patient |
| Age               | Patient age |
| Gender            | Male / Female |
| Admission_Date    | Date of admission |
| Discharge_Date    | Date of discharge |
| Department        | Hospital department |
| Doctor            | Assigned doctor |
| Treatment_Cost    | Cost of treatment |
| Payment_Status    | Paid / Pending |
| City              | Patient location |

---

# 🧹 3. Data Preparation & Transformations

## Step 1: Data Cleaning
- Removed null values  
- Removed duplicates  
- Standardized column names  

---

## Step 2: Data Type Conversion
- Converted Transaction_Date to datetime  
- Ensured numeric columns  

---

## Step 3: Feature Engineering

### Length of Stay
```python id="h1"
df['Stay_Days'] = (df['Discharge_Date'] - df['Admission_Date']).dt.days
```
### Extract Date Features
df['Year'] = df['Admission_Date'].dt.year
df['Month'] = df['Admission_Date'].dt.month

## Step 4: Data Validation
- Checked balance consistency
- Verified discharge dates > admission dates


---
##  📐 4. DAX Measures (Power BI)
- ### Total Patients
Total Patients = DISTINCTCOUNT('Healthcare'[Patient_ID])
- ### Total Revenue
Total Revenue = SUM('Healthcare'[Treatment_Cost])
- ### Average Stay
Avg Stay = AVERAGE('Healthcare'[Stay_Days])
- ### Payment Pending
- Pending Payments = 
COUNTROWS(FILTER('Healthcare','Healthcare'[Payment_Status]="Pending"))

---
# 📊 5. Key KPI Measures
- 👥 Total Patients
- 💰 Total Revenue
- ⏳ Average Stay Duration
- ❗ Pending Payments
---

# 📍 6. Branch / Location Measures

- ### Department / Location Measures
- Patients by Department
  Department Patients = COUNT('Healthcare'[Department])
- Revenue by Department
  Department Revenue = SUM('Healthcare'[Treatment_Cost])

# 📊 7. Dashboard Pages & Visualizations

## 1️⃣ Overview Dashboard

### KPIs:

- Total Patients
- Revenue
- Avg Stay
- Pending Payments

### Charts:

- Admission trend
- Gender distribution

## 2️⃣Patient Analysis

### Charts:

- Age distribution
- Patient demographics

## 3️⃣Department Analysis

### Charts:

- Patients by department
- Revenue by department

## 4️⃣Revenue Analysis

### Charts:

- Monthly revenue trend
- Payment status
---
# 🔍 8. Drill-Down & Interactivity

### Drill-Down:
- Year → Month 
- Department → Doctor
### Filters:
- Department
- Payment Status
- Date
### Interactivity:
- Cross-filtering
- Dynamic visuals

---
# ⚡ 9. Performance Optimization
- Removed unused columns
- Optimized DAX calculations
- Reduced visual load
---

# 🚀 10. How to Reproduce / Deliverables
### Steps:
- Load dataset into Power BI / Python
- Clean and transform data
- Create calculated columns
- Build dashboard

### 📦 Deliverables
- ✅ Power BI Dashboard (.pbix)
- ✅ Python Notebook (.ipynb)
- ✅ Dataset
- ✅ Insights


# 📈 11. Business Insights

- 🏥 Certain departments handle more patients
- 💰 Revenue varies across departments
- ⏳ Longer stays increase costs
- ❗ Pending payments impact cash flow
---

# ⭐12. Conclusion

This project demonstrates:
- End-to-end healthcare data analysis
- Dashboard design using Power BI
- Strong analytical and business insight skills

---

# 💡13.Dashboard Images
### Power BI Dashboard 
<img src="https://github.com/GauriPise/Healthcare-Data-Analysis/blob/main/Screenshot 2026-03-15 210333.png" width="1000"> <br> 

---

## Pyhton Images

<img src="https://github.com/GauriPise/Healthcare-Data-Analysis/blob/main/Screenshot 2026-03-15 213315.png" width="1000"> <br> 

<img src="https://github.com/GauriPise/Healthcare-Data-Analysis/blob/main/Screenshot 2026-03-15 213340.png" width="1000"> <br> 

<img src="https://github.com/GauriPise/Healthcare-Data-Analysis/blob/main/Screenshot 2026-03-15 213400.png" width="1000"> <br>

<img src="https://github.com/GauriPise/Healthcare-Data-Analysis/blob/main/Screenshot 2026-03-15 213423.png" width="1000"> <br> 

<img src="https://github.com/GauriPise/Healthcare-Data-Analysis/blob/main/Screenshot 2026-03-15 213445.png" width="1000"> <br> 

<img src="https://github.com/GauriPise/Healthcare-Data-Analysis/blob/main/Screenshot 2026-03-15 213535.png" width="1000"> <br>

<img src="https://github.com/GauriPise/Healthcare-Data-Analysis/blob/main/Screenshot 2026-03-15 213552.png" width="1000"> <br>

---

## SQL Images

<img src="https://github.com/GauriPise/Healthcare-Data-Analysis/blob/main/Screenshot 2026-03-15 214437.png" width="1000"> <br> 

<img src="https://github.com/GauriPise/Healthcare-Data-Analysis/blob/main/Screenshot 2026-03-15 214505.png" width="1000"> <br> 

