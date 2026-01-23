
  
    

create or replace transient table MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.dim_playlist
    
    
    
    as (

SELECT
    PlaylistId AS playlist_id,
    Name AS playlist_name,
    CURRENT_TIMESTAMP() AS loaded_at
FROM DST_DB.PUBLIC.PLAYLIST
    )
;


  