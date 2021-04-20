CREATE DATABASE mysqlfun;

-- Yasar Bici

CREATE TABLE Klant (
	klant_id INT NOT NULL AUTO_INCREMENT,
    naam VARCHAR(255) NOT NULL,
    achternaam VARCHAR(255) NOT NULL,
    adres_straatnaam VARCHAR(255) NOT NULL,
    stad VARCHAR(255),
    PRIMARY KEY(klant_id)
);

CREATE TABLE Orders (
    id INT NOT NULL AUTO_INCREMENT,
    klant_id INT NOT NULL,
    product VARCHAR(255) NOT NULL,
    aantal INT NOT NULL,
    prijs DECIMAL(6,2) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(klant_id) REFERENCES klant(id)
);

INSERT INTO `klant` (`id`, `naam`, `achternaam`, `adres_straatnaam`, `stad`) VALUES 
	(NULL, 'Yasar', 'Bici', 'VS VD 329', 'Amsterdam'),
	(NULL, 'Kees', 'Vaart', 'Blekerstraat 17', 'Haarlem'),
    (NULL, 'Mohammed', 'Maddani', 'Braamstraat 1', 'Den Haag');
    
INSERT INTO `orders` (`id`, `klant_id`, `product`, `aantal`, `prijs`) VALUES 
	(NULL, '1', 'Kettingzaag', '1', '149.99'), 
	(NULL, '2', 'Hamer', '2', '4.99'), 
	(NULL, '2', 'Schroevendraaier', '3', '3.99'), 
	(NULL, '3', 'Houtlak 1 liter', '4', '22,49'), 
	(NULL, '3', 'Kwasten set', '1', '6.00'), 
	(NULL, '3', 'bloemenpot', '6', '5.00'), 
	(NULL, '3', 'tuinstoel', '4', '30.00');