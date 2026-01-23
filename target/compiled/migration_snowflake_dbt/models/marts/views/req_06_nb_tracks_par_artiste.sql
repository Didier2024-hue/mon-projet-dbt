

SELECT 
    ar.ARTIST_NAME, 
    COUNT(*) AS NB_TRACKS
FROM MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.fact_tracks t
JOIN MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.dim_album a ON t.ALBUM_ID = a.ALBUM_ID
JOIN MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.dim_artist ar ON a.ARTIST_ID = ar.ARTIST_ID
GROUP BY ar.ARTIST_NAME