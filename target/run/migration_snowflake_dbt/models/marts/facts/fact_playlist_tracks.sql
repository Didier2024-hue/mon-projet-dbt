
  
    

create or replace transient table MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.fact_playlist_tracks
    
    
    
    as (

SELECT
    pt.PlaylistId,
    pt.TrackId,
    a.number_of_tracks,  
    CURRENT_DATE() AS added_date,
    CURRENT_TIMESTAMP() AS loaded_at
FROM DST_DB.PUBLIC.PLAYLISTTRACK pt
JOIN MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.fact_tracks t ON pt.TrackId = t.track_id
JOIN (
    SELECT 
        AlbumId, 
        COUNT(*) AS number_of_tracks 
    FROM DST_DB.PUBLIC.TRACK 
    GROUP BY 1
) a ON t.AlbumId = a.AlbumId
    )
;


  