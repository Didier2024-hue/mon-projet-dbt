{{ config(
    alias='v_tracks_par_artiste',
    tags=['reporting']
) }}

SELECT 
    ar.ARTIST_NAME, 
    COUNT(*) AS NB_TRACKS
FROM {{ ref('fact_tracks') }} t
JOIN {{ ref('dim_album') }} a ON t.ALBUM_ID = a.ALBUM_ID
JOIN {{ ref('dim_artist') }} ar ON a.ARTIST_ID = ar.ARTIST_ID
GROUP BY ar.ARTIST_NAME
