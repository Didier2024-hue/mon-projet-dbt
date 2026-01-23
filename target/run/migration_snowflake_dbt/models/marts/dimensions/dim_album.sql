
  
    

create or replace transient table MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.dim_album
    
    
    
    as (

WITH track_counts AS (
    SELECT 
        AlbumId,
        COUNT(*) AS number_of_tracks
    FROM DST_DB.PUBLIC.TRACK
    GROUP BY 1
)

SELECT
    a.AlbumId AS album_id,
    a.Title AS album_title,
    a.ArtistId AS artist_id,
    a.Prod_year AS production_year,
    a.Cd_year AS release_year,
    COALESCE(tc.number_of_tracks, 0) AS number_of_tracks,  
    CURRENT_TIMESTAMP() AS loaded_at
FROM DST_DB.PUBLIC.ALBUM a
LEFT JOIN track_counts tc ON a.AlbumId = tc.AlbumId
    )
;


  