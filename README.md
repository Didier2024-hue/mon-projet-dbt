📘 dbt + Snowflake – Exam Migration Project

DataScientest | Data Engineer / Data Architect

🎯 Contexte & objectif

Ce projet consiste à migrer l’examen Snowflake (SQL) vers un workflow dbt, en appliquant les bonnes pratiques de modélisation, d’orchestration et de documentation.
L’objectif est de démontrer une capacité à industrialiser un pipeline analytique Snowflake dans un cadre dbt.

Le projet couvre :

la gestion de sources dans dbt,

la création de tables (schéma en étoile),

la construction de vues analytiques (requêtes métier),

l’organisation du projet via tags dbt.

🧱 Architecture du projet

Le projet respecte une architecture analytique classique :

1️⃣ Sources (raw / staging)

Les données sont chargées depuis S3 vers Snowflake :

s3://mc-snowflake/sample/music/


Les tables sources sont référencées dans schema.yml via sources.

2️⃣ Modélisation (star schema)

Création des tables fact et dimension via des fichiers .sql

Modélisation orientée BI (optimisée pour les requêtes analytiques)

3️⃣ Consommation (vues analytiques)

Les requêtes de l’examen sont implémentées en tant que vues dbt

Chaque vue est taguée pour une exécution ciblée

📦 Contenu du dépôt
✅ 1) Source configuration (schema.yml)

Le fichier schema.yml contient :

la déclaration des sources

la localisation des tables Snowflake (database, schema, tables)

les tests optionnels (facultatifs mais recommandés)

📌 Objectif : lier dbt aux tables existantes dans Snowflake et garantir une documentation claire des sources.

✅ 2) Modèles (tables du star schema)

Les modèles sont définis dans le dossier models/ :

dim_artist.sql

dim_album.sql

dim_track.sql

dim_genre.sql

fact_track_play.sql (ou équivalent selon votre modélisation)

📌 Objectif : construire un schéma en étoile prêt pour l’analyse BI.

🔖 Chaque modèle de création de table doit être tagué (ex : tags: ['create_tables']) afin d’éviter la recréation à chaque compilation.

✅ 3) Vues analytiques (requêtes métier)

Les requêtes de l’examen sont implémentées en tant que vues dbt dans models/analytics/ :

Question	Objectif	Vue
3.1	Albums avec plus d’un CD	v_albums_multi_cd.sql
3.2	Morceaux produits en 2000 ou 2002	v_tracks_2000_2002.sql
3.3	Morceaux Rock & Jazz (nom + compositeur)	v_rock_jazz_composers.sql
3.4	Top 10 albums les plus longs	v_top10_longest_albums.sql
3.5	Nombre d’albums par artiste	v_albums_per_artist.sql
3.6	Nombre de morceaux par artiste	v_tracks_per_artist.sql
3.7	Genre le plus écouté dans les années 2000	v_top_genre_2000s.sql
3.8	Playlists avec morceaux > 4 min	v_playlists_long_tracks.sql
3.9	Rock tracks avec artistes en France	v_rock_tracks_france.sql
3.10	Moyenne durée des morceaux par genre	v_avg_track_length_by_genre.sql
3.11	Playlists avec artistes nés avant 1990	v_playlists_artists_pre1990.sql

🔖 Chaque vue est également taguée (ex : tags: ['exam_queries']) pour permettre une exécution ciblée.

🚀 Exécution dbt (recommandée)
1) Charger les données dans Snowflake

(Étape préalable si non déjà réalisée)

2) Exécuter dbt avec tags

Pour exécuter uniquement la création des tables :

dbt run --select tag:create_tables


Pour exécuter uniquement les vues analytiques :

dbt run --select tag:exam_queries

🧩 Bonus (optionnel)

Des tests dbt peuvent être ajoutés pour assurer la qualité des données, par exemple :

not_null

unique

relationships

📌 Conclusion

Ce projet démontre une approche industrielle de transformation SQL vers dbt, en structurant :

les sources,

la modélisation,

les requêtes métier,

et l’exécution via tags.

Il illustre une capacité à industrialiser un pipeline analytique Snowflake, tout en respectant les bonnes pratiques dbt.
