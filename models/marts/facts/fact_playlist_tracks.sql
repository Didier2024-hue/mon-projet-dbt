{{ config(
    materialized='table',
    schema='star_dbt_schema',
    tags=['star_schema', 'fact']
) }}

SELECT
    pt.PlaylistId,
    pt.TrackId,
    a.number_of_tracks,  
    CURRENT_DATE() AS added_date,
    CURRENT_TIMESTAMP() AS loaded_at
FROM {{ source('music_source', 'PLAYLISTTRACK') }} pt
JOIN {{ ref('fact_tracks') }} t ON pt.TrackId = t.track_id
JOIN (
    SELECT 
        AlbumId, 
        COUNT(*) AS number_of_tracks 
    FROM {{ source('music_source', 'TRACK') }} 
    GROUP BY 1
) a ON t.AlbumId = a.AlbumId
