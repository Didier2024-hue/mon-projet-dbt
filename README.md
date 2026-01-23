📘 dbt + Snowflake – Exam Migration Project

DataScientest | Data Engineer / Data Architect

🎯 Context & Objective

This project consists of migrating a Snowflake SQL exam into a dbt workflow, applying best practices for modeling, orchestration, and documentation. The objective is to demonstrate the ability to industrialize a Snowflake analytical pipeline within a dbt framework.

The project covers:

dbt source configuration

creation of star schema tables

implementation of business queries as dbt views

project organization using dbt tags

🧱 Project Architecture

The project follows a classic analytical architecture:

1️⃣ Sources (Raw / Staging)

Data is loaded from S3 into Snowflake:
s3://mc-snowflake/sample/music/

The source tables are referenced in schema.yml via dbt sources.

2️⃣ Modeling (Star Schema)

Fact and dimension tables are created using .sql models.
The modeling is BI-oriented and optimized for analytical queries.

3️⃣ Consumption (Analytical Views)

Exam queries are implemented as dbt views.
Each view is tagged for targeted execution.

📦 Repository Contents

✅ 1) Source Configuration (schema.yml)

This file contains:

source declarations

table location (database, schema, tables)

optional tests (recommended)

Objective: connect dbt to Snowflake tables and ensure clear documentation of sources.

✅ 2) Models (Star Schema Tables)

Models are defined in models/:

dim_artist.sql

dim_album.sql

dim_track.sql

dim_genre.sql

fact_track_play.sql (or equivalent)

Objective: build a star schema optimized for BI analytics.

Each table model must be tagged (e.g., tags: ['create_tables']) to avoid recreating tables on every dbt run.

✅ 3) Analytical Views (Business Queries)

Exam queries are implemented as dbt views under models/analytics/:

Question	Objective	View
3.1	Albums with more than one CD	v_albums_multi_cd.sql
3.2	Tracks produced in 2000 or 2002	v_tracks_2000_2002.sql
3.3	Rock & Jazz tracks (name + composer)	v_rock_jazz_composers.sql
3.4	Top 10 longest albums	v_top10_longest_albums.sql
3.5	Albums per artist	v_albums_per_artist.sql
3.6	Tracks per artist	v_tracks_per_artist.sql
3.7	Most listened genre in the 2000s	v_top_genre_2000s.sql
3.8	Playlists with tracks > 4 minutes	v_playlists_long_tracks.sql
3.9	Rock tracks with artists based in France	v_rock_tracks_france.sql
3.10	Average track length by genre	v_avg_track_length_by_genre.sql
3.11	Playlists with artists born before 1990	v_playlists_artists_pre1990.sql

Each view is tagged (e.g., tags: ['exam_queries']) for targeted execution.

🚀 dbt Execution (Recommended)
1) Load data into Snowflake

(If not already completed)

2) Run dbt with tags

To run only table creation:

dbt run --select tag:create_tables


To run only analytical views:

dbt run --select tag:exam_queries

🧩 Optional Bonus

dbt tests can be added to ensure data quality, such as:

not_null

unique

relationships

📌 Conclusion

This project demonstrates an industrial approach to migrating SQL workflows into dbt, structuring:

sources

modeling

business queries

execution via tags

It highlights the ability to operationalize a Snowflake analytical pipeline while applying dbt best practices
