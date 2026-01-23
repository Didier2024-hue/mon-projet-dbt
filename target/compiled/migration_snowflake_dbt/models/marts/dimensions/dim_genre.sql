

SELECT
    GenreId AS genre_id,
    Name AS genre_name,
    CURRENT_TIMESTAMP() AS loaded_at
FROM DST_DB.PUBLIC.GENRE