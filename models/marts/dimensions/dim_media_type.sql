{{ config(
    materialized='table',
    schema='star_dbt_schema',
    tags=['star_schema', 'dimension']
) }}

SELECT
    MediaTypeId AS media_type_id,
    Name AS media_type_name,
    CURRENT_TIMESTAMP() AS loaded_at
FROM {{ source('music_source', 'MEDIATYPE') }}
