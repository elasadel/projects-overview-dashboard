-- Replace your-project-id with your Google Cloud project ID

SELECT
  timesheet_id,
  employee_id,
  project_id,
  date,
  hours,
  type
FROM `your-project-id`.silver.timesheet;