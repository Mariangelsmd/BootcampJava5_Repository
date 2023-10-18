-- CREACIÓN DE TABLAS

CREATE TABLE country (
  id_country INT NOT NULL PRIMARY KEY AUTO_INCREMENT UNIQUE,
  country VARCHAR(50),
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE city (
  id_city INT NOT NULL PRIMARY KEY AUTO_INCREMENT UNIQUE,
  city VARCHAR(50),
  country_id INT,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY ( country_id)
  REFERENCES country(id_country)
);

CREATE TABLE address (
  id_address INT NOT NULL PRIMARY KEY AUTO_INCREMENT UNIQUE,
  address VARCHAR(100),
  district VARCHAR(20),
  postalZIP VARCHAR(10),
  phonenumber VARCHAR(20),
  location VARCHAR(20),
  city_id INT,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (city_id)
  REFERENCES city(id_city)
);

-- INSERTAR VALORES

INSERT INTO country (country) 
	VALUES 
	("España"), 
	("Francia"), 
	("Portugual"), 
	("Andorra"), 
	("Italia"), 
	("Alemania"), 
	("Noruega"), 
	("Suecia"), 
	("Grecia"), 
	("Rumania");
    
INSERT INTO city (city, country_id) 
	VALUES 
	("Madrid", 1), 
	("París", 2), 
	("Lisboa", 3), 
	("Andorra la Vella", 4), 
	("Roma", 5), 
	("Berlín", 6), 
	("Oslo", 7), 
	("Estocolmo", 8), 
	("Atenas", 9), 
	("Bucarest", 10);
    
INSERT INTO address (address, district, postalZIP, phonenumber, location, city_id) 
	VALUES 
	("Las Rozas 4", "Las Rozas", "24856", "51468594", "Mad", 1),
	("Disneyland 1", "Disney", "24456", "51479494", "Par", 2), 
	("Rua Angusta 38", "Angusta", "75456", "36979494", "Lis", 3),  
	("Avinguda Meritxell 8", "Meritxell", "79456", "635849152", "And", 4), 
	("Via del Corso 6", "Corso", "09846", "648521469", "Rom", 5), 
	("Unter den Linden 42", "Unter", "24456", "51address479494", "Ber", 6), 
	("Karl Johans gate 4", "Karl", "24866", "548216957", "Osl", 7), 
	("Drottninggatan 1", "Gatan", "05649", "748615483", "Est", 8),  
	("Ermou Street 76", "Ermou", "48510", "631548954", "Ate", 9),  
	("Calea Victoriei 7", "Calea", "06492", "664985496", "Buc", 10);

-- CONSULTA

SELECT * FROM address
INNER JOIN city 
ON city_id = id_city
INNER JOIN country ON country_id = id_country;