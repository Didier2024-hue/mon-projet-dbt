{{ config(
    alias='v_taille_moyenne_genre',
    tags=['reporting']
) }}

SELECT 
    g.GENRE_NAME, 
    ROUND(AVG(t.SIZE_BYTES)/1024, 2) AS TAILLE_KO
FROM {{ ref('fact_tracks') }} t
JOIN {{ ref('dim_genre') }} g ON t.GENRE_ID = g.GENRE_ID
GROUP BY g.GENRE_NAME
