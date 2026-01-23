{{ config(
    materialized='table',
    schema='star_dbt_schema',
    tags=['star_schema', 'dimension']
) }}

SELECT
    GenreId AS genre_id,
    Name AS genre_name,
    CURRENT_TIMESTAMP() AS loaded_at
FROM {{ source('music_source', 'GENRE') }}
