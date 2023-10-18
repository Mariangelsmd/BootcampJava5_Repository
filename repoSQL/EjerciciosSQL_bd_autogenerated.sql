SELECT postalZIP AS codigo_postal, region, country AS pais FROM myTable;
SELECT * FROM myTable WHERE phone = "811%";
SELECT * FROM myTable WHERE country = "Italy" OR country="Spain";
SELECT COUNT(*) AS num_registros FROM myTable;
SELECT region, country, postalZIP FROM myTable WHERE id IN (SELECT id FROM myTable WHERE country = "Germany" OR country = "Turkey");
SELECT MAX(id), MIN(id) FROM myTable;
SELECT COUNT(country), country FROM myTable GROUP BY country;
SELECT * FROM myTable ORDER BY postalZIP LIMIT 10;
SELECT * FROM myTable WHERE country = "Singapore";
-- Una vez hecha la seleccion se cambia a DELETE
DELETE FROM myTable WHERE country = "Singapore";
