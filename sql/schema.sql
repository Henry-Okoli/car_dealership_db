-- =================================================
-- Mnaufacturers: the makers supplying the dealership
-- =================================================

CREATE TABLE manufacturers (
    manufacturer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL
);



-- =================================================
-- Models: the different car models available to be 
-- supplied by the manufacturers
-- =================================================

CREATE TABLE models (
    model_id INT AUTO_INCREMENT PRIMARY KEY,
    manufacturer_id INT NOT NULL,
    model_name VARCHAR(100) NOT NULL, -- eg SUV, Sedan, Hatchback
    category VARCHAR(100) NOT NULL,
    FOREIGN KEY (manufacturer_id) REFERENCES manufacturers(manufacturer_id)
);

-- =================================================
-- Vehicles: the individual cars in stock at the dealership
-- =================================================

CREATE TABLE vehicles (
    vin VARCHAR(17) PRIMARY KEY, -- VIN is a unique identifier for a physical vehicle
    model_id INT NOT NULL,
    year SMALLINT NOT NULL,
    color VARCHAR(30) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    status ENUM('available', 'reserved', 'sold') NOT NULL DEFAULT 'available',
    FOREIGN KEY (model_id) REFERENCES models(model_id)
);

