

SELECT DISTINCT 
    p.PLAYLIST_NAME
FROM MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.fact_playlist_tracks pt
JOIN MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.fact_tracks t ON pt.TRACK_ID = t.TRACK_ID
JOIN MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.dim_album a ON t.ALBUM_ID = a.ALBUM_ID
JOIN MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.dim_artist ar ON a.ARTIST_ID = ar.ARTIST_ID
JOIN MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.dim_playlist p ON pt.PLAYLIST_ID = p.PLAYLIST_ID
WHERE ar.BIRTH_YEAR < 1990