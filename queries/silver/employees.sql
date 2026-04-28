-- Replace your-project-id with your Google Cloud project ID

SELECT 
  TRIM(employee_id) as employee_id,
  TRIM(first_name) as first_name,
  TRIM(last_name) as last_name,
  CASE WHEN role = 'Develeper' THEN 'Developer' ELSE TRIM(role) END as role,
  TRIM(seniority) as seniority,
  monthly_cost_pln,
  start_date  
FROM `your-project-id`.bronze.employees;