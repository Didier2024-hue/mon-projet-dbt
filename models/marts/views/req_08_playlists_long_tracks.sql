{{ config(
    alias='v_playlists_longues',
    tags=['reporting']
) }}

SELECT DISTINCT 
    p.PLAYLIST_NAME
FROM {{ ref('fact_playlist_tracks') }} pt
JOIN {{ ref('fact_tracks') }} t ON pt.TRACK_ID = t.TRACK_ID
JOIN {{ ref('dim_playlist') }} p ON pt.PLAYLIST_ID = p.PLAYLIST_ID
WHERE t.DURATION_MS > 240000  <!-- 4 minutes en ms -->
