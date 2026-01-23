{{ config(alias='v_tracks_2000_2002') }}

SELECT 
    t.TRACK_NAME, 
    t.RELEASE_DATE
FROM {{ ref('fact_tracks') }} t
JOIN {{ ref('dim_date') }} d ON t.RELEASE_DATE = d.DATE_ID
WHERE d.YEAR IN (2000, 2002)
