{{ config(alias='v_tracks_rock_jazz') }}

SELECT 
    t.TRACK_NAME, 
    t.COMPOSER, 
    g.GENRE_NAME
FROM {{ ref('fact_tracks') }} t
JOIN {{ ref('dim_genre') }} g ON t.GENRE_ID = g.GENRE_ID
WHERE g.GENRE_NAME IN ('Rock', 'Jazz')
