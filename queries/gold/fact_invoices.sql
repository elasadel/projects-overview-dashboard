-- Replace your-project-id with your Google Cloud project ID

SELECT
  invoice_id,
  project_id,
  invoice_date AS date,
  amount_pln,
  status
FROM `your-project-id`.silver.invoices;