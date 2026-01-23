{{ config(
    materialized='table',
    schema='star_dbt_schema',
    tags=['star_schema', 'dimension']
) }}

SELECT
    PlaylistId AS playlist_id,
    Name AS playlist_name,
    CURRENT_TIMESTAMP() AS loaded_at
FROM {{ source('music_source', 'PLAYLIST') }}
