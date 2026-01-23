

SELECT DISTINCT 
    p.PLAYLIST_NAME
FROM MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.fact_playlist_tracks pt
JOIN MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.fact_tracks t ON pt.TRACK_ID = t.TRACK_ID
JOIN MUSIC_DWH.STAR_DBT_SCHEMA_star_dbt_schema.dim_playlist p ON pt.PLAYLIST_ID = p.PLAYLIST_ID
WHERE t.DURATION_MS > 240000  <!-- 4 minutes en ms -->