{{ config(
    materialized='table',
    schema='star_dbt_schema',
    tags=['star_schema', 'dimension']
) }}

SELECT
    ArtistId AS artist_id,
    Name AS artist_name,
    Birthyear AS birth_year,
    Country AS country_code,
    CURRENT_TIMESTAMP() AS loaded_at
FROM {{ source('music_source', 'ARTIST') }}
