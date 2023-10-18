-- CREACIÓN DE TABLAS

CREATE TABLE salesman (
  salesman_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT UNIQUE,
  name_salesman VARCHAR(30),
  city VARCHAR(15),
  commission DECIMAL(5.2)
);

CREATE TABLE costumer (
  costumer_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT UNIQUE,
  name_costumer VARCHAR(30),
  city VARCHAR(15),
  grade NUMERIC(3)
);

CREATE TABLE orders (
  order_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT UNIQUE,
  purch_atm DECIMAL(8.5),
  order_date DATE,
  id_costumer INT,
  id_salesman INT,
  FOREIGN KEY (id_costumer) REFERENCES costumer(costumer_id),
  FOREIGN KEY (id_salesman) REFERENCES salesman(salesman_id)
);

-- INSERTAR VALORES

INSERT INTO salesman (name_salesman, city, commission) VALUES 
	('John Smith', 'New York', 0.15), 
	('Alice Johnson', 'Los Angeles', 0.12),
	('Bob Williams', 'Chicago', 0.10),
	('Karen Rodriguez', 'Miami', 0.18),
	('Daniel Kim', 'Seattle', 0.14),
	('Samantha White', 'Dallas', 0.11),
	('Christopher Harris', 'Atlanta', 0.17),
	('Olivia Martinez', 'Denver', 0.13),
	('Ryan Johnson', 'Phoenix', 0.12),
	('Isabella Davis', 'Philadelphia', 0.15);

INSERT INTO costumer (name_costumer, city, grade) VALUES 
	('David Lee', 'Houston', 90),
    ('Emily Davis', 'San Francisco', 85),
    ('Michael Brown', 'Boston', 95),
    ('Sophia Miller', 'Austin', 88),
    ('Liam Taylor', 'San Diego', 92),
    ('Emma Brown', 'Portland', 80),
    ('Noah Davis', 'Nashville', 94),
    ('Ava Wilson', 'New Orleans', 89),
    ('William Rodriguez', 'Las Vegas', 91),
    ('Mia Jackson', 'Minneapolis', 87);
    
INSERT INTO orders (purch_atm, order_date, id_costumer, id_salesman) VALUES 
    (1500.00000, '2023-10-18', 1, 1),
    (500.75000, '2023-10-19', 2, 2),
    (1200.30000, '2023-10-20', 3, 3),
    (800.45000, '2023-10-21', 4, 4),
    (1000.55000, '2023-10-22', 5, 5),
    (300.20000, '2023-10-23', 6, 6),
    (750.90000, '2023-10-24', 7, 7),
    (200.00000, '2023-10-25', 1, 1),
    (450.30000, '2023-10-26', 2, 2),
    (600.75000, '2023-10-27', 3, 3);

-- CONSULTAS

SELECT COUNT(*) AS 'Total registros'
FROM orders;

SELECT DISTINCT name_costumer
FROM costumer;

SELECT name_salesman, COUNT(name_salesman) AS 'num_ventas'
FROM salesman
INNER JOIN orders
ON salesman_id = id_salesman
GROUP BY name_salesman;

SELECT *
FROM costumer
ORDER BY costumer_id
LIMIT 5;

SELECT *
FROM orders
ORDER BY purch_atm ASC
LIMIT 1;

SELECT *
FROM orders
ORDER BY purch_atm DESC
LIMIT 1;


