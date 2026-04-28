-- Replace your-project-id with your Google Cloud project ID

SELECT
  p.project_id,
  p.project_name,
  p.project_type,
  p.status,
  p.start_date,
  p.end_date,
  p.contract_value_pln,
  c.company_name,
  c.industry,
  c.country
FROM `your-project-id`.silver.projects p
LEFT JOIN `your-project-id`.silver.clients c 
  ON p.client_id = c.client_id;