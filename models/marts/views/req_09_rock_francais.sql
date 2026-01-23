{{ config(
    alias='v_rock_france',
    tags=['reporting']
) }}

SELECT 
    t.TRACK_NAME, 
    ar.ARTIST_NAME
FROM {{ ref('fact_tracks') }} t
JOIN {{ ref('dim_genre') }} g ON t.GENRE_ID = g.GENRE_ID
JOIN {{ ref('dim_album') }} a ON t.ALBUM_ID = a.ALBUM_ID
JOIN {{ ref('dim_artist') }} ar ON a.ARTIST_ID = ar.ARTIST_ID
WHERE g.GENRE_NAME = 'Rock' 
AND ar.COUNTRY = 'France'
