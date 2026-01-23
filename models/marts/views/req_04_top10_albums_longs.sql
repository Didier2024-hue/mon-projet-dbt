{{ config(alias='v_top10_albums_long') }}

SELECT 
    a.ALBUM_TITLE, 
    SUM(t.DURATION_MS)/60000 AS DUREE_MINUTES
FROM {{ ref('fact_tracks') }} t
JOIN {{ ref('dim_album') }} a ON t.ALBUM_ID = a.ALBUM_ID
GROUP BY a.ALBUM_TITLE
ORDER BY DUREE_MINUTES DESC
LIMIT 10
