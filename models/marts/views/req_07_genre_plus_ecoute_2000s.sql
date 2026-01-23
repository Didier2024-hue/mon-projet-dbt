{{ config(
    alias='v_top_genre_2000s',
    tags=['reporting']
) }}

SELECT 
    g.GENRE_NAME, 
    COUNT(*) AS NB_ECOUTES
FROM {{ ref('fact_tracks') }} t
JOIN {{ ref('dim_genre') }} g ON t.GENRE_ID = g.GENRE_ID
JOIN {{ ref('dim_date') }} d ON t.RELEASE_DATE = d.DATE_ID
WHERE d.YEAR BETWEEN 2000 AND 2009
GROUP BY g.GENRE_NAME
ORDER BY NB_ECOUTES DESC
LIMIT 1
