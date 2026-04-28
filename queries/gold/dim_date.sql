-- Replace your-project-id with your Google Cloud project ID

-- Note: ideally dim_date would be generated independently using GENERATE_DATE_ARRAY
-- with hardcoded start and end dates, without referencing any existing table.
-- However, when a query doesn't reference any table, BigQuery defaults to the US region
-- and the results cannot be saved to an EU dataset.
-- As a workaround, this query references silver.timesheet (which is in the EU region)
-- to derive the date range, which forces BigQuery to execute in the correct region.

WITH date_range AS (
  SELECT
    MIN(date) AS min_date,
    MAX(date) AS max_date
  FROM `your-project-id`.silver.timesheet
)
SELECT
  date,
  EXTRACT(YEAR FROM date)    AS year,
  EXTRACT(MONTH FROM date)   AS month,
  EXTRACT(QUARTER FROM date) AS quarter,
  FORMAT_DATE('%B', date)    AS month_name,
  FORMAT_DATE('%A', date)    AS day_name,
  IF(EXTRACT(DAYOFWEEK FROM date) IN (1,7), true, false) AS is_weekend
FROM date_range,
UNNEST(GENERATE_DATE_ARRAY(min_date, max_date, INTERVAL 1 DAY)) AS date;