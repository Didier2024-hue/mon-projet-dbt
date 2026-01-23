

WITH date_series AS (
    SELECT DATEADD(DAY, SEQ4(), '2000-01-01') AS date_value
    FROM TABLE(GENERATOR(ROWCOUNT => 10000))
    WHERE date_value <= CURRENT_DATE()
)
SELECT
    date_value AS date_id,
    DAY(date_value) AS day_number,
    DAYNAME(date_value) AS day_name,
    MONTH(date_value) AS month_number,
    MONTHNAME(date_value) AS month_name,
    YEAR(date_value) AS year,
    QUARTER(date_value) AS quarter,
    WEEKOFYEAR(date_value) AS week_of_year,
    DAYOFWEEK(date_value) AS day_of_week,
    DAYOFWEEK(date_value) IN (6, 7) AS is_weekend,
    FALSE AS is_holiday,
    CASE 
        WHEN MONTH(date_value) IN (12, 1, 2) THEN 'Winter'
        WHEN MONTH(date_value) IN (3, 4, 5) THEN 'Spring'
        WHEN MONTH(date_value) IN (6, 7, 8) THEN 'Summer'
        WHEN MONTH(date_value) IN (9, 10, 11) THEN 'Autumn'
    END AS season,
    CURRENT_TIMESTAMP() AS loaded_at
FROM date_series