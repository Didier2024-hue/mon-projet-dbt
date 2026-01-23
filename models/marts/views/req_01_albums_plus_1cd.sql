{{ config(
    alias='v_albums_plus_1cd',
    tags=['reporting']
) }}

SELECT 
    ALBUM_TITLE, 
    NUMBER_OF_TRACKS
FROM {{ ref('dim_album') }}
WHERE NUMBER_OF_TRACKS > 20
