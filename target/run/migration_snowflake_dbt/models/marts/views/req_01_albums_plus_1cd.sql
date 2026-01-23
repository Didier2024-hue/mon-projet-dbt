
  create or replace   view MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.v_albums_plus_1cd
  
  
  
  
  as (
    

SELECT 
    ALBUM_TITLE, 
    NUMBER_OF_TRACKS
FROM MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.dim_album
WHERE NUMBER_OF_TRACKS > 20
  );

