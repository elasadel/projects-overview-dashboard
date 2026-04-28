-- Replace your-project-id with your Google Cloud project ID

SELECT 
  TRIM(project_id) as project_id,
  TRIM(project_name) as project_name,
  TRIM(client_id) as client_id,
  TRIM(project_type) as project_type,
  TRIM(status) as status,
  start_date,
  end_date,
  contract_value_pln
FROM `your-project-id`.bronze.projects;