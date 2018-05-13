SELECT name FROM `movies` WHERE year=1995;

SELECT DISTINCT COUNT(a.first_name)
FROM actors a
JOIN roles r ON r.actor_id=a.id
JOIN movies m ON m.id=r.movie_id
WHERE m.name='Lost in Translation';

SELECT DISTINCT a.first_name, a.last_name
FROM actors a
JOIN roles r ON r.actor_id=a.id
JOIN movies m ON m.id=r.movie_id
WHERE m.name='Lost in Translation';

SELECT DISTINCT d.first_name, d.last_name
FROM directors d
JOIN movies_directors md ON md.director_id=d.id
JOIN movies m ON m.id=md.movie_id
WHERE m.name='Fight Club';

SELECT DISTINCT COUNT(m.name)
FROM movies m
JOIN movies_directors md ON md.movie_id=m.id
JOIN directors d ON d.id=md.director_id
WHERE d.first_name='Clint' AND d.last_name='Eastwood';

SELECT DISTINCT m.name
FROM movies m
JOIN movies_directors md ON md.movie_id=m.id
JOIN directors d ON d.id=md.director_id
WHERE d.first_name='Clint' AND d.last_name='Eastwood';

SELECT d.first_name, d.last_name
FROM directors d 
JOIN movies_directors md ON md.director_id=d.id
JOIN movies m ON m.id=md.movie_id
JOIN movies_genres mg ON mg.movie_id=m.id
WHERE mg.genre='Horror';

SELECT DISTINCT a.first_name,a.last_name
FROM actors a
JOIN roles r ON r.actor_id=a.id
JOIN movies_directors md ON md.movie_id=r.movie_id
JOIN directors d ON d.id=md.director_id
WHERE d.first_name='Christopher' AND d.last_name='Nolan';