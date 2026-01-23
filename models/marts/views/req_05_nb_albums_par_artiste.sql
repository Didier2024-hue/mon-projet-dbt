{{ config(alias='v_albums_par_artiste') }}

SELECT 
    ar.ARTIST_NAME, 
    COUNT(*) AS NB_ALBUMS
FROM {{ ref('dim_album') }} a
JOIN {{ ref('dim_artist') }} ar ON a.ARTIST_ID = ar.ARTIST_ID
GROUP BY ar.ARTIST_NAME
