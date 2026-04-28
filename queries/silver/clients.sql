-- Replace your-project-id with your Google Cloud project ID

SELECT 
  TRIM(client_id) as client_id,
  TRIM(company_name) as company_name,
  TRIM(industry) as industry,
  TRIM(country) as country,
  since_year
FROM `your-project-id`.bronze.clients;