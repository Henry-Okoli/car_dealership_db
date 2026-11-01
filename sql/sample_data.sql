-- ===============================================
-- Sample Data for Car Dealership Database
-- ===============================================

INSERT INTO manufacturers (name, country) VALUES
('Toyota', 'Japan'),
('Ford', 'USA'),
('Volkswagen', 'Germany'),
('Hyundai', 'South Korea');

INSERT INTO models (manufacturer_id, model_name, category) VALUES
(1, 'Corolla', 'Sedan'),
(1, 'Auris', 'Hatchback'),
(1, 'RAV4', 'SUV'),
(2, 'Focus', 'Hatchback'),
(2, 'Explorer', 'SUV'),
(3, 'Golf', 'Hatchback'),
(3, 'Tiguan', 'SUV'),
(4, 'Tucson', 'SUV'),
(4, 'i20', 'Hatchback');


