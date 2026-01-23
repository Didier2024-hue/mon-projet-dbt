
  create or replace   view MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.v_top_genre_2000s
  
  
  
  
  as (
    

SELECT 
    g.GENRE_NAME, 
    COUNT(*) AS NB_ECOUTES
FROM MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.fact_tracks t
JOIN MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.dim_genre g ON t.GENRE_ID = g.GENRE_ID
JOIN MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.dim_date d ON t.RELEASE_DATE = d.DATE_ID
WHERE d.YEAR BETWEEN 2000 AND 2009
GROUP BY g.GENRE_NAME
ORDER BY NB_ECOUTES DESC
LIMIT 1
  );

