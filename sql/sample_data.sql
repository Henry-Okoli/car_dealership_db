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

INSERT INTO vehicles (vin, model_id, year, color, price, status) VALUES
('JTDKN3DU5A0000001', 1, 2015, 'Blue', 11000.00, 'sold'),
('WVWZZZ1KZAW000002', 1, 2016, 'Red', 12000.00, 'available'),
('1HGCM82633A000003', 2, 2017, 'Black', 13000.00, 'sold'),
('FADP3F21J1L000004', 2, 2018, 'White', 14000.00, 'available'),
('VWFE21C04M2000005', 3, 2019, 'Silver', 15000.00, 'sold'),
('NPE24AF4FH1000006', 3, 2020, 'Grey', 16000.00, 'available'),
('FTFW1EF1EKE200007', 4, 2021, 'Blue', 17000.00, 'sold'),
('C4RJFBG0FC1000008', 4, 2022, 'Red', 18000.00, 'available'),
('BWDE21J9941238456', 5, 2023, 'Blue', 22300.00, 'sold'),
('1VWAT7A32EC123456', 5, 2024, 'White', 22900.00, 'available'),
('2T1BURHE0JC123456', 6, 2023, 'Silver', 27400.00, 'sold'),
('3FA6P0H74HR123456', 6, 2024, 'Red', 28100.00, 'available'),
('4S3BMHB60B3123456', 7, 2023, 'White', 25600.00, 'sold'),
('5NPE24AF4FH123456', 7, 2024, 'Black', 26400.00, 'available'),
('6MMGM3AC4EL123456', 8, 2024, 'Blue', 16900.00, 'available');
