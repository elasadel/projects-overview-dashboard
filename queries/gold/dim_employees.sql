-- Replace your-project-id with your Google Cloud project ID

SELECT
  employee_id,
  first_name,
  last_name,
  CONCAT(first_name, ' ', last_name) AS full_name,
  role,
  seniority,
  monthly_cost_pln,
  ROUND(monthly_cost_pln / 160, 2) AS hourly_cost_pln
FROM `your-project-id`.silver.employees;