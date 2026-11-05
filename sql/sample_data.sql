-- ===============================================
-- Sample Data for Car Dealership Database
-- Explorer sold well below list price: assumed damaged vehicle (deliberate outlier)
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


INSERT INTO customers (name, phone, email, address) VALUES
('Sarah Mitchell', '07700900001', 'sarah.mitchell@email.com', '123 Main St, City, Country'),
('James Wallace', '07700900002', 'james.wallace@email.com', '456 Oak Ave, City, Country'),
('Priya Nair', '07700900003', 'priya.nair@email.com', '789 Pine Rd, City, Country'),
('Henry scot', '07700900004', 'henry.scot@email.com', '101 Elm St, City, Country'),
('Grace Ochieng', '07700900005', 'grace.ochieng@email.com', '102 Maple St, City, Country'),
('Michael Brown', '07700900006', 'michael.brown@email.com', '103 Cedar St, City, Country'),
('Emily Davis', '07700900007', 'emily.davis@gmail.com', '104 Birch St, City, Country'),
('David Smith', '07700900008', 'david.smith@email.com', '105 Oak St, City, Country');


INSERT INTO salesreps (name, phone, email, hire_date) VALUES
('David Reid', '07700900009', 'david.reid@email.com', '2020-01-15'),
('Amara Okafor', '07700900010', 'amara.okafor@email.com', '2020-02-20'),
('Lisa Chen', '07700900011', 'lisa.chen@email.com', '2020-03-10'),
('John Doe', '07700900012', 'john.doe@email.com', '2020-04-05'),
('Jane Smith', '07700900013', 'jane.smith@email.com', '2020-05-12');


INSERT INTO sales (vin, customer_id, rep_id, sale_date, sale_price, payment_method) VALUES
('JTDKN3DU5A0000001', 1, 1, '2024-01-15', 10500.00, 'finance'),
('BWDE21J9941238456', 2, 2, '2024-02-20', 12000.00, 'cash'),
('1HGCM82633A000003', 3, 3, '2024-03-10', 13000.00, 'lease'),
('2T1BURHE0JC123456', 4, 4, '2024-04-05', 27000.00, 'finance'),
('VWFE21C04M2000005', 5, 5, '2024-05-12', 14500.00, 'cash'),
('4S3BMHB60B3123456', 6, 1, '2024-06-18', 25000.00, 'lease'),
('FTFW1EF1EKE200007', 7, 2, '2024-07-22', 17000.00, 'finance');
