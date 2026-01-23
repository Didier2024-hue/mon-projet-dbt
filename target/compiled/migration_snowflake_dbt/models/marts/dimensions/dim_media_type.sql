

SELECT
    MediaTypeId AS media_type_id,
    Name AS media_type_name,
    CURRENT_TIMESTAMP() AS loaded_at
FROM DST_DB.PUBLIC.MEDIATYPE