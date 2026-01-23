

SELECT 
    t.TRACK_NAME, 
    ar.ARTIST_NAME
FROM MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.fact_tracks t
JOIN MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.dim_genre g ON t.GENRE_ID = g.GENRE_ID
JOIN MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.dim_album a ON t.ALBUM_ID = a.ALBUM_ID
JOIN MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.dim_artist ar ON a.ARTIST_ID = ar.ARTIST_ID
WHERE g.GENRE_NAME = 'Rock' 
AND ar.COUNTRY = 'France'