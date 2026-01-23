
  
    

create or replace transient table MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.dim_genre
    
    
    
    as (

SELECT
    GenreId AS genre_id,
    Name AS genre_name,
    CURRENT_TIMESTAMP() AS loaded_at
FROM DST_DB.PUBLIC.GENRE
    )
;


  