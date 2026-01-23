
  
    

create or replace transient table MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.dim_media_type
    
    
    
    as (

SELECT
    MediaTypeId AS media_type_id,
    Name AS media_type_name,
    CURRENT_TIMESTAMP() AS loaded_at
FROM DST_DB.PUBLIC.MEDIATYPE
    )
;


  