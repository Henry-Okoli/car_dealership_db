CREATE TABLE manufacturer (
    manufacturer_id INT AUTO_INCREMENT PRIMARY KEY,
    name    VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    model_id INT auto_increment primary key,
    manufacturer_id INT required; a forign key pointering at manufacturers (manufacturer_id),
    modele_name VARCHAR(100) required,
    category VARCHAR(100) required (for example SUV, Sedan, Hatchback, etc.),
    foreign key (manufacturer_id) REFERENCES manufacturer(manufacturer_id)
);