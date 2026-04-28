-- Replace your-project-id with your Google Cloud project ID

SELECT
  DISTINCT TRIM(timesheet_id) as timesheet_id,
  TRIM(employee_id) as employee_id,
  TRIM(project_id) as project_id,
  CASE
    -- YYY-MM-DD
    WHEN REGEXP_CONTAINS(date, r'^\d{4}-\d{2}-\d{2}$')
      THEN PARSE_DATE('%Y-%m-%d', date)
    
    -- DD/MM/YYYY
    WHEN REGEXP_CONTAINS(date, r'^\d{2}/\d{2}/\d{4}$')
      THEN PARSE_DATE('%d/%m/%Y', date)
    
    -- DD.MM.YYYY
    WHEN REGEXP_CONTAINS(date, r'^\d{2}\.\d{2}\.\d{4}$')
      THEN PARSE_DATE('%d.%m.%Y', date)
    
    ELSE NULL
  END AS date,
  COALESCE(hours, 0) as hours,
  COALESCE(type, 'internal') as type
FROM `your-project-id`.bronze.timesheet;