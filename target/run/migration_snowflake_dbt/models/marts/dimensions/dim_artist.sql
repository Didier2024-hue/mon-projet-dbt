
  
    

create or replace transient table MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.dim_artist
    
    
    
    as (

SELECT
    ArtistId AS artist_id,
    Name AS artist_name,
    Birthyear AS birth_year,
    Country AS country_code,
    CURRENT_TIMESTAMP() AS loaded_at
FROM DST_DB.PUBLIC.ARTIST
    )
;


  