
  
    

create or replace transient table MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.fact_tracks
    
    
    
    as (

SELECT
    t.TrackId AS track_id,
    t.AlbumId,
    t.MediaTypeId,
    t.GenreId,
    t.Name AS track_name,
    t.Composer,
    t.Milliseconds AS duration_ms,
    t.Bytes AS size_bytes,
    t.UnitPrice,
    DATE('2000-01-01') AS release_date, 
    CURRENT_TIMESTAMP() AS loaded_at
FROM DST_DB.PUBLIC.TRACK t
    )
;


  