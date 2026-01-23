{{ config(
    alias='v_playlists_vintage',
    tags=['reporting']
) }}

SELECT DISTINCT 
    p.PLAYLIST_NAME
FROM {{ ref('fact_playlist_tracks') }} pt
JOIN {{ ref('fact_tracks') }} t ON pt.TRACK_ID = t.TRACK_ID
JOIN {{ ref('dim_album') }} a ON t.ALBUM_ID = a.ALBUM_ID
JOIN {{ ref('dim_artist') }} ar ON a.ARTIST_ID = ar.ARTIST_ID
JOIN {{ ref('dim_playlist') }} p ON pt.PLAYLIST_ID = p.PLAYLIST_ID
WHERE ar.BIRTH_YEAR < 1990
