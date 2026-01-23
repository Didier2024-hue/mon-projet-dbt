
  create or replace   view MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.v_tracks_2000_2002
  
  
  
  
  as (
    

SELECT 
    t.TRACK_NAME, 
    t.RELEASE_DATE
FROM MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.fact_tracks t
JOIN MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.dim_date d ON t.RELEASE_DATE = d.DATE_ID
WHERE d.YEAR IN (2000, 2002)
  );

