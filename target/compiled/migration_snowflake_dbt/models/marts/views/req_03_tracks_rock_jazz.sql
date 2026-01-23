

SELECT 
    t.TRACK_NAME, 
    t.COMPOSER, 
    g.GENRE_NAME
FROM MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.fact_tracks t
JOIN MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.dim_genre g ON t.GENRE_ID = g.GENRE_ID
WHERE g.GENRE_NAME IN ('Rock', 'Jazz')