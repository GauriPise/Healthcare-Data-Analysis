show tables;
use hosp;
select count(*) from healthcare where `Followup Date` is null;


select * from healthcare;
select count(*) Patient_ID;
select count(*) as total_no_patients from healthcare;   ## Total Patients in the Hospital 

select Diagnosis, count(*) as total_cases from healthcare ## Most Common Disease / Diagnosis
group by Diagnosis
order by total_cases desc;

select Doctor,count(*) as patient_treated from healthcare  ## Doctor Handling the Most Patients
group by Doctor
order by patient_treated desc;

select Diagnosis,sum(`billing amount`) as total_billing_amount from healthcare group by Diagnosis order by total_billing_amount desc;    ## Display total billing amount collected per diagnosis type

select Doctor , round(avg(`Feedback`),1) as Feedback from healthcare group by Doctor order by Feedback desc;   ## Find average feedback rating for each doctor

select Bed_Occupancy,count(Patient_ID) as patient_count from healthcare where Bed_Occupancy = 'ICU' group by Bed_Occupancy;    ## Show all patients admitted in ICU only


select Discharge_Date,count(`Patient_ID`) as patients_count from healthcare where Discharge_Date <= '2023-01-10'group by Discharge_Date; ## Get patients whose discharge date is later than '2023-01-10'

select Patient_ID,sum(`Billing Amount`) as billing_amount from healthcare group by Patient_ID order by  billing_amount desc limit 5  ; ## List top 5 highest billing patients

select Bed_Occupancy as bed_type , sum(`Health Insurance Amount`) as Total_health_insurance_amount from healthcare group by bed_type; ## Display total health insurance claim amount per bed type

select Patient_ID,Doctor,Diagnosis,`Billing Amount` as billing_amount from healthcare where Diagnosis="Viral Infection " ;   ## Get the patient ID ,doctor and billing amount for viral infection diagnosis


select Patient_ID,Doctor,avg(`Billing Amount`) as avg_billing_amount from healthcare group by Patient_ID,Doctor order by Doctor desc limit 3 ;## Calculate top 3 doctors whose avg billing amount per patient is highest

select sum(`Billing Amount`) as billing_amount, sum(`Health Insurance Amount`) as insurance_amount, 
sum(`Billing Amount`) - sum(`Health Insurance Amount`) as patient_paid_amount from healthcare;  ## Insurance coverage amount


