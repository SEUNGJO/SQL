
CREATE TABLE Ages ( 
  name VARCHAR(128), 
  age INTEGER
)

DELETE FROM Ages;
INSERT INTO Ages (name, age) VALUES ('Aaryn', 33);
INSERT INTO Ages (name, age) VALUES ('Victoria', 34);
INSERT INTO Ages (name, age) VALUES ('Kalena', 21);
INSERT INTO Ages (name, age) VALUES ('Aleksandr', 17);
INSERT INTO Ages (name, age) VALUES ('Adrien', 29);
INSERT INTO Ages (name, age) VALUES ('Bailley', 30);


SELECT sha1(CONCAT(name,age)) AS X FROM Ages ORDER BY X
