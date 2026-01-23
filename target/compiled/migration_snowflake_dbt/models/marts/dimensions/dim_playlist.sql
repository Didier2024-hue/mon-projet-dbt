

SELECT
    PlaylistId AS playlist_id,
    Name AS playlist_name,
    CURRENT_TIMESTAMP() AS loaded_at
FROM DST_DB.PUBLIC.PLAYLIST