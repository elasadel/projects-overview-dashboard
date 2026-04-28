-- Replace your-project-id with your Google Cloud project ID

SELECT 
  TRIM(invoice_id) as invoice_id,
  TRIM(project_id) as project_id,
  invoice_date,
  amount_pln,
  TRIM(status) as status
FROM `your-project-id`.bronze.invoices;