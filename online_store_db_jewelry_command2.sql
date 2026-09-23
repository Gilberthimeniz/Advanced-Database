-- =====================================================
-- PostgreSQL Hands-On Exercise
-- Theme: Jewelry Store (online_store_db)
-- Version: SQL / Command 2 style (SERIAL auto-increment PKs)
-- =====================================================

CREATE DATABASE online_store_db;
-- Connect to online_store_db before running the statements below.

-- ---------------------------------------------------
-- Step 4: Create the Categories Table (Command 2 style)
-- ---------------------------------------------------
CREATE TABLE categories (
  CategoryID SERIAL NOT NULL PRIMARY KEY,
  CategoryName VARCHAR(255),
  Description VARCHAR(255)
);

-- Step 5: Insert Category Data (10 records) -- CategoryID auto-generated (1-10)
INSERT INTO categories (CategoryName, Description)
VALUES
  ('Rings', 'Engagement, wedding, and fashion rings'),
  ('Necklaces', 'Pendants, chains, and chokers'),
  ('Earrings', 'Studs, hoops, and drop earrings'),
  ('Bracelets', 'Bangles, cuffs, and charm bracelets'),
  ('Watches', 'Analog and luxury wristwatches'),
  ('Anklets', 'Beaded and chain anklets'),
  ('Brooches & Pins', 'Decorative pins and brooches'),
  ('Cufflinks', 'Formal wear cufflinks and tie clips'),
  ('Wedding Sets', 'Matching bridal jewelry sets'),
  ('Loose Gemstones', 'Unset diamonds and colored gemstones');

-- ---------------------------------------------------
-- Step 6: Create the Customers Table (Command 2 style)
-- ---------------------------------------------------
CREATE TABLE customers (
  CustomerID SERIAL NOT NULL PRIMARY KEY,
  CustomerName VARCHAR(255),
  ContactName VARCHAR(255),
  Address VARCHAR(255),
  City VARCHAR(255),
  PostalCode VARCHAR(255),
  Country VARCHAR(255)
);

-- Step 7: Insert Customer Data (91 records) -- CustomerID auto-generated (1-91)
INSERT INTO customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
  ('Luxe Adornments', 'Alicia Santos', '75 Mabini St', 'Quezon City', '1950', 'Philippines'),
  ('Elegant Jewels', 'Antonio Aquino', '429 Mabini St', 'Manila', '2486', 'Philippines'),
  ('Sparkling Jewels', 'Guadalupe Garcia', '971 Osmena Blvd', 'Bacoor', '2013', 'Philippines'),
  ('Diamond Baubles', 'Grace Torres', '48 Del Pilar St', 'Davao', '7867', 'Philippines'),
  ('Heritage Gems', 'Alvaro Gonzales', '574 Del Pilar St', 'Iloilo', '4078', 'Philippines'),
  ('Silver Boutique', 'Isabel Manalo', '62 Osmena Blvd', 'Cagayan de Oro', '9711', 'Philippines'),
  ('Luxe Gallery', 'Josefina Fernandez', '371 Magsaysay Ave', 'Manila', '3945', 'Philippines'),
  ('Silver House', 'Paula Del Rosario', '507 Colon St', 'Cagayan de Oro', '5717', 'Philippines'),
  ('Silver Gems', 'Arturo Aquino', '169 Colon St', 'Cebu', '9011', 'Philippines'),
  ('Golden Gems', 'Ernesto Manalo', '809 Colon St', 'Quezon City', '6737', 'Philippines'),
  ('Royal House', 'Norma Reyes', '861 Mabini St', 'Davao', '8767', 'Philippines'),
  ('Golden Charms', 'Pilar Manalo', '698 Roxas Blvd', 'Davao', '7320', 'Philippines'),
  ('Golden Gallery', 'Alfonso Ramos', '626 Mabini St', 'Cagayan de Oro', '1965', 'Philippines'),
  ('Precious Adornments', 'Victor Castro', '401 Roxas Blvd', 'Iloilo', '3725', 'Philippines'),
  ('Sparkling Boutique', 'Gabriel Lopez', '839 Luna St', 'Zamboanga', '5561', 'Philippines'),
  ('Luxe Baubles', 'Roberto Lopez', '85 Del Pilar St', 'Cebu', '4800', 'Philippines'),
  ('Diamond Adornments', 'Enrique Gonzales', '5 Del Pilar St', 'Baguio', '9758', 'Philippines'),
  ('Diamond House', 'Claudia Lopez', '708 Rizal Ave', 'Cagayan de Oro', '7428', 'Philippines'),
  ('Sparkling Baubles', 'Fernando Pascual', '650 Luna St', 'Bacolod', '4122', 'Philippines'),
  ('Elegant Gallery', 'Luz Garcia', '349 Rizal Ave', 'Iloilo', '1003', 'Philippines'),
  ('Radiant Boutique', 'Rosa Villanueva', '629 Rizal Ave', 'Iloilo', '4407', 'Philippines'),
  ('Sparkling Adornments', 'Lorenzo Flores', '979 Colon St', 'Bacoor', '6966', 'Philippines'),
  ('Royal Gallery', 'Pablo Pascual', '320 Mabini St', 'Cebu', '2674', 'Philippines'),
  ('Precious Gallery', 'Juan Ramos', '529 Rizal Ave', 'Manila', '9654', 'Philippines'),
  ('Golden Boutique', 'Paula Reyes', '713 Magsaysay Ave', 'Zamboanga', '7008', 'Philippines'),
  ('Luxe Treasures', 'Dolores Rivera', '798 Colon St', 'Manila', '4197', 'Philippines'),
  ('Sparkling Treasures', 'Eduardo Del Rosario', '505 Colon St', 'Bacolod', '1457', 'Philippines'),
  ('Royal Charms', 'Beatriz Salazar', '980 Colon St', 'Cagayan de Oro', '6726', 'Philippines'),
  ('Silver Treasures', 'Fernando Torres', '482 Osmena Blvd', 'Quezon City', '4348', 'Philippines'),
  ('Luxe Gems', 'Fabiola Garcia', '932 Luna St', 'Manila', '8832', 'Philippines'),
  ('Sparkling Fineries', 'Antonio Castro', '475 Luna St', 'Iloilo', '3602', 'Philippines'),
  ('Radiant Jewels', 'Manuel Manalo', '927 Roxas Blvd', 'Cebu', '8771', 'Philippines'),
  ('Heritage Adornments', 'Sofia Dela Cruz', '819 Mabini St', 'Zamboanga', '3281', 'Philippines'),
  ('Elegant Treasures', 'Carlo Flores', '218 Magsaysay Ave', 'Zamboanga', '4940', 'Philippines'),
  ('Luxe Charms', 'Tomas Aquino', '855 Del Pilar St', 'Bacolod', '6796', 'Philippines'),
  ('Diamond Boutique', 'Andres Del Rosario', '134 Del Pilar St', 'Zamboanga', '9364', 'Philippines'),
  ('Royal Adornments', 'Joaquin Dela Cruz', '795 Del Pilar St', 'Cebu', '3319', 'Philippines'),
  ('Diamond Gems', 'Ernesto Santos', '334 Roxas Blvd', 'Iloilo', '1930', 'Philippines'),
  ('Elegant Charms', 'Jose Garcia', '520 Roxas Blvd', 'Zamboanga', '1456', 'Philippines'),
  ('Royal Fineries', 'Renata Del Rosario', '621 Osmena Blvd', 'Davao', '8411', 'Philippines'),
  ('Heritage Gallery', 'Marisol Torres', '716 Magsaysay Ave', 'Zamboanga', '4319', 'Philippines'),
  ('Radiant Baubles', 'Diego Castro', '453 Colon St', 'Iloilo', '4942', 'Philippines'),
  ('Precious Gems', 'Manuel Villanueva', '147 Magsaysay Ave', 'Cebu', '8663', 'Philippines'),
  ('Silver Baubles', 'Lourdes Ramos', '684 Osmena Blvd', 'Cebu', '8070', 'Philippines'),
  ('Luxe Fineries', 'Antonio Villanueva', '20 Colon St', 'Zamboanga', '8514', 'Philippines'),
  ('Golden Baubles', 'Diana Del Rosario', '639 Magsaysay Ave', 'Zamboanga', '2053', 'Philippines'),
  ('Elegant Gems', 'Carmen Flores', '279 Rizal Ave', 'Cebu', '5430', 'Philippines'),
  ('Sparkling Charms', 'Rodrigo Lopez', '550 Roxas Blvd', 'Quezon City', '2465', 'Philippines'),
  ('Golden Adornments', 'Rocio Reyes', '276 Rizal Ave', 'Iloilo', '5268', 'Philippines'),
  ('Diamond Treasures', 'Isabel Flores', '884 Mabini St', 'Cagayan de Oro', '1189', 'Philippines'),
  ('Heritage Baubles', 'Adriana Salazar', '133 Rizal Ave', 'Zamboanga', '4906', 'Philippines'),
  ('Radiant Charms', 'Grace Ramos', '207 Magsaysay Ave', 'Davao', '9701', 'Philippines'),
  ('Precious Fineries', 'Sofia Flores', '38 Rizal Ave', 'Bacolod', '9284', 'Philippines'),
  ('Elegant Boutique', 'Irene Torres', '958 Roxas Blvd', 'Iloilo', '8080', 'Philippines'),
  ('Heritage Charms', 'Juan Mendoza', '236 Colon St', 'Manila', '3289', 'Philippines'),
  ('Luxe Jewels', 'Patricia Dela Cruz', '73 Magsaysay Ave', 'Baguio', '3674', 'Philippines'),
  ('Precious Jewels', 'Norma Ramos', '162 Magsaysay Ave', 'Cagayan de Oro', '1059', 'Philippines'),
  ('Heritage Fineries', 'Victor Santos', '989 Magsaysay Ave', 'Manila', '6842', 'Philippines'),
  ('Golden Fineries', 'Sandra Reyes', '487 Magsaysay Ave', 'Zamboanga', '4292', 'Philippines'),
  ('Heritage Jewels', 'Antonio Flores', '837 Mabini St', 'Cebu', '7545', 'Philippines'),
  ('Precious Treasures', 'Carmen Manalo', '981 Del Pilar St', 'Bacoor', '7381', 'Philippines'),
  ('Precious House', 'Pilar Lopez', '45 Luna St', 'Zamboanga', '3282', 'Philippines'),
  ('Heritage House', 'Sofia Manalo', '818 Osmena Blvd', 'Iloilo', '1510', 'Philippines'),
  ('Radiant Fineries', 'Fernando Castro', '856 Roxas Blvd', 'Zamboanga', '1831', 'Philippines'),
  ('Heritage Treasures', 'Lourdes Flores', '4 Roxas Blvd', 'Iloilo', '9240', 'Philippines'),
  ('Silver Gallery', 'Silvia Reyes', '867 Magsaysay Ave', 'Manila', '4362', 'Philippines'),
  ('Sparkling Gems', 'Pablo Gonzales', '786 Rizal Ave', 'Bacoor', '4248', 'Philippines'),
  ('Precious Boutique', 'Veronica Fernandez', '478 Roxas Blvd', 'Iloilo', '9996', 'Philippines'),
  ('Royal Jewels', 'Hector Fernandez', '79 Roxas Blvd', 'Davao', '7338', 'Philippines'),
  ('Radiant House', 'Ximena Del Rosario', '287 Mabini St', 'Quezon City', '4790', 'Philippines'),
  ('Royal Baubles', 'Carlo Ramos', '4 Roxas Blvd', 'Cagayan de Oro', '7642', 'Philippines'),
  ('Precious Charms', 'Emilio Reyes', '403 Luna St', 'Bacoor', '2251', 'Philippines'),
  ('Silver Jewels', 'Fabiola Gonzales', '651 Del Pilar St', 'Manila', '5353', 'Philippines'),
  ('Elegant Fineries', 'Rocio Dela Cruz', '832 Luna St', 'Zamboanga', '9998', 'Philippines'),
  ('Sparkling Gallery', 'Renata Lopez', '660 Magsaysay Ave', 'Cagayan de Oro', '1802', 'Philippines'),
  ('Radiant Adornments', 'Irene Aquino', '352 Magsaysay Ave', 'Davao', '5190', 'Philippines'),
  ('Silver Adornments', 'Pilar Ramos', '77 Osmena Blvd', 'Zamboanga', '9144', 'Philippines'),
  ('Diamond Fineries', 'Patricia Del Rosario', '542 Osmena Blvd', 'Iloilo', '5440', 'Philippines'),
  ('Diamond Gallery', 'Maria Reyes', '401 Roxas Blvd', 'Cagayan de Oro', '5070', 'Philippines'),
  ('Elegant Adornments', 'Manuel Del Rosario', '996 Mabini St', 'Cagayan de Oro', '2392', 'Philippines'),
  ('Golden Jewels', 'Patricia Torres', '584 Rizal Ave', 'Davao', '3096', 'Philippines'),
  ('Silver Charms', 'Vicente Manalo', '197 Luna St', 'Davao', '4663', 'Philippines'),
  ('Royal Boutique', 'Monica Rivera', '253 Rizal Ave', 'Baguio', '6036', 'Philippines'),
  ('Golden Treasures', 'Cesar Aquino', '84 Magsaysay Ave', 'Manila', '7952', 'Philippines'),
  ('Royal Treasures', 'Enrique Gonzales', '112 Roxas Blvd', 'Bacoor', '4068', 'Philippines'),
  ('Golden House', 'Teresa Castro', '56 Osmena Blvd', 'Bacolod', '3325', 'Philippines'),
  ('Radiant Gems', 'Maria Reyes', '287 Mabini St', 'Quezon City', '7884', 'Philippines'),
  ('Precious Baubles', 'Antonio Santos', '723 Roxas Blvd', 'Manila', '7106', 'Philippines'),
  ('Royal Gems', 'Miguel Flores', '200 Mabini St', 'Bacoor', '6555', 'Philippines'),
  ('Diamond Jewels', 'Enrique Bautista', '947 Magsaysay Ave', 'Davao', '1061', 'Philippines'),
  ('Radiant Gallery', 'Alberto Dela Cruz', '822 Magsaysay Ave', 'Cebu', '4868', 'Philippines');

-- ---------------------------------------------------
-- Step 8: Create the Products Table (Command 2 style)
-- ---------------------------------------------------
CREATE TABLE products (
  ProductID SERIAL NOT NULL PRIMARY KEY,
  ProductName VARCHAR(255),
  CategoryID INT,
  Unit VARCHAR(255),
  Price DECIMAL(10, 2),
  FOREIGN KEY (CategoryID)
        REFERENCES categories(CategoryID)
);

-- Step 9: Insert Product Data (77 records) -- explicit ProductID as shown in Command 2
INSERT INTO products (ProductID, ProductName, CategoryID, Unit, Price)
VALUES
  (1, 'Stainless Steel Opal Ring', 1, 'box of 1', 18517.13),
  (2, 'Stainless Steel Aquamarine Ring', 1, '1 piece', 24743.22),
  (3, 'White Gold Sapphire Ring', 1, '1 pair', 20421.91),
  (4, 'Titanium Diamond Ring', 1, 'box of 1', 26432.68),
  (5, 'Rose Gold Sapphire Ring', 1, 'box of 1', 40164.20),
  (6, 'Gold Pearl Ring', 1, 'pouch of 1', 6989.43),
  (7, 'Gold Amethyst Ring', 1, 'box of 1', 44519.93),
  (8, 'White Gold Sapphire Ring', 1, '1 pair', 9016.64),
  (9, 'White Gold Aquamarine Necklace', 2, '1 pair', 45382.67),
  (10, 'Stainless Steel Cubic Zirconia Necklace', 2, '1 piece', 47225.53),
  (11, 'Rose Gold Pearl Necklace', 2, 'set of 2', 34879.28),
  (12, 'Rose Gold Pearl Necklace', 2, 'set of 2', 13553.03),
  (13, 'Silver Sapphire Necklace', 2, '1 pair', 15659.23),
  (14, 'Rose Gold Aquamarine Necklace', 2, '1 pair', 20927.60),
  (15, 'White Gold Pearl Necklace', 2, '1 pair', 31424.82),
  (16, 'Silver Cubic Zirconia Necklace', 2, '1 piece', 39892.94),
  (17, 'Gold Ruby Earrings', 3, '1 piece', 19778.37),
  (18, 'Stainless Steel Emerald Earrings', 3, 'box of 1', 36703.46),
  (19, 'Gold Pearl Earrings', 3, '1 pair', 6089.84),
  (20, 'Silver Aquamarine Earrings', 3, 'pouch of 1', 8975.22),
  (21, 'Gold Opal Earrings', 3, 'pouch of 1', 34845.90),
  (22, 'White Gold Aquamarine Earrings', 3, 'set of 2', 31337.43),
  (23, 'Titanium Diamond Earrings', 3, '1 piece', 26042.11),
  (24, 'Titanium Aquamarine Earrings', 3, 'set of 2', 9879.35),
  (25, 'Rose Gold Opal Bracelet', 4, '1 pair', 3266.33),
  (26, 'Rose Gold Diamond Bracelet', 4, 'pouch of 1', 26109.98),
  (27, 'Silver Diamond Bracelet', 4, 'set of 2', 15378.63),
  (28, 'Rose Gold Sapphire Bracelet', 4, 'pouch of 1', 12164.90),
  (29, 'Silver Diamond Bracelet', 4, 'box of 1', 19995.09),
  (30, 'Gold Amethyst Bracelet', 4, '1 piece', 28222.02),
  (31, 'Titanium Garnet Bracelet', 4, '1 pair', 23020.84),
  (32, 'Gold Cubic Zirconia Bracelet', 4, '1 pair', 15006.03),
  (33, 'Rose Gold Amethyst Watch', 5, 'set of 2', 58258.78),
  (34, 'White Gold Diamond Watch', 5, 'set of 2', 64499.67),
  (35, 'Rose Gold Amethyst Watch', 5, 'box of 1', 5966.16),
  (36, 'Stainless Steel Opal Watch', 5, '1 pair', 35953.85),
  (37, 'White Gold Emerald Watch', 5, '1 piece', 39450.22),
  (38, 'Silver Amethyst Watch', 5, '1 piece', 70539.67),
  (39, 'White Gold Aquamarine Watch', 5, 'set of 2', 41602.95),
  (40, 'Silver Sapphire Anklet', 6, '1 piece', 1017.12),
  (41, 'Silver Cubic Zirconia Anklet', 6, 'box of 1', 1173.93),
  (42, 'Platinum Opal Anklet', 6, 'pouch of 1', 1521.08),
  (43, 'Rose Gold Pearl Anklet', 6, '1 pair', 2988.87),
  (44, 'Gold Ruby Anklet', 6, 'box of 1', 2860.14),
  (45, 'Stainless Steel Emerald Anklet', 6, 'set of 2', 1331.93),
  (46, 'Gold Topaz Anklet', 6, 'set of 2', 1024.17),
  (47, 'Titanium Amethyst Brooch', 7, '1 piece', 7348.70),
  (48, 'Platinum Onyx Brooch', 7, '1 pair', 5554.21),
  (49, 'Stainless Steel Emerald Brooch', 7, 'pouch of 1', 3950.49),
  (50, 'Stainless Steel Emerald Brooch', 7, 'box of 1', 2444.17),
  (51, 'Silver Diamond Brooch', 7, 'box of 1', 7582.13),
  (52, 'Silver Amethyst Brooch', 7, 'set of 2', 2036.79),
  (53, 'Silver Onyx Brooch', 7, '1 pair', 1479.47),
  (54, 'Platinum Cubic Zirconia Cufflinks', 8, '1 piece', 8346.86),
  (55, 'Rose Gold Ruby Cufflinks', 8, 'box of 1', 7594.72),
  (56, 'Platinum Cubic Zirconia Cufflinks', 8, 'set of 2', 8139.31),
  (57, 'Rose Gold Aquamarine Cufflinks', 8, '1 pair', 5683.14),
  (58, 'Titanium Opal Cufflinks', 8, 'box of 1', 6539.36),
  (59, 'Silver Diamond Cufflinks', 8, '1 piece', 7807.81),
  (60, 'White Gold Topaz Cufflinks', 8, '1 pair', 5915.01),
  (61, 'Platinum Topaz Cufflinks', 8, '1 pair', 9915.82),
  (62, 'White Gold Ruby Wedding Set', 9, '1 piece', 28487.87),
  (63, 'White Gold Opal Wedding Set', 9, '1 piece', 99239.61),
  (64, 'Platinum Garnet Wedding Set', 9, '1 piece', 19268.42),
  (65, 'Silver Ruby Wedding Set', 9, 'set of 2', 96651.79),
  (66, 'Platinum Ruby Wedding Set', 9, '1 piece', 93966.18),
  (67, 'White Gold Cubic Zirconia Wedding Set', 9, '1 pair', 17714.93),
  (68, 'Gold Aquamarine Wedding Set', 9, '1 piece', 35339.27),
  (69, 'White Gold Pearl Wedding Set', 9, '1 pair', 87044.07),
  (70, 'Titanium Emerald Loose Gemstone', 10, '1 piece', 75390.66),
  (71, 'Platinum Pearl Loose Gemstone', 10, '1 pair', 30835.91),
  (72, 'Platinum Pearl Loose Gemstone', 10, 'box of 1', 15062.58),
  (73, 'Platinum Topaz Loose Gemstone', 10, '1 pair', 54290.18),
  (74, 'Platinum Garnet Loose Gemstone', 10, '1 pair', 30419.28),
  (75, 'Gold Emerald Loose Gemstone', 10, '1 pair', 37803.23),
  (76, 'Titanium Pearl Loose Gemstone', 10, 'set of 2', 80848.65),
  (77, 'Silver Pearl Loose Gemstone', 10, '1 piece', 69723.25);

-- Keep the products sequence in sync since IDs were inserted explicitly:
SELECT setval('products_productid_seq', (SELECT MAX(ProductID) FROM products));

-- ---------------------------------------------------
-- Step 10: Create the Orders Table (Command 2 style)
-- ---------------------------------------------------
CREATE TABLE orders (
  OrderID SERIAL NOT NULL PRIMARY KEY,
  CustomerID INT,
  OrderDate DATE,
  FOREIGN KEY (CustomerID)
        REFERENCES customers(CustomerID)
);

-- Step 11: Insert Order Data (50 records) -- explicit OrderID as shown in Command 2
INSERT INTO orders (OrderID, CustomerID, OrderDate)
VALUES
  (20001, 7, '2026-10-11'),
  (20002, 47, '2026-10-26'),
  (20003, 58, '2026-10-06'),
  (20004, 67, '2026-10-08'),
  (20005, 89, '2026-10-27'),
  (20006, 14, '2026-09-17'),
  (20007, 69, '2026-10-11'),
  (20008, 51, '2026-10-18'),
  (20009, 48, '2026-09-17'),
  (20010, 49, '2026-09-24'),
  (20011, 74, '2026-09-10'),
  (20012, 47, '2026-09-22'),
  (20013, 11, '2026-09-29'),
  (20014, 30, '2026-09-12'),
  (20015, 79, '2026-10-18'),
  (20016, 7, '2026-09-19'),
  (20017, 67, '2026-09-17'),
  (20018, 40, '2026-10-11'),
  (20019, 75, '2026-10-30'),
  (20020, 85, '2026-10-28'),
  (20021, 41, '2026-10-17'),
  (20022, 1, '2026-10-18'),
  (20023, 5, '2026-09-15'),
  (20024, 20, '2026-09-19'),
  (20025, 79, '2026-10-11'),
  (20026, 56, '2026-09-27'),
  (20027, 66, '2026-09-24'),
  (20028, 7, '2026-09-09'),
  (20029, 63, '2026-09-15'),
  (20030, 79, '2026-10-12'),
  (20031, 6, '2026-09-02'),
  (20032, 7, '2026-09-01'),
  (20033, 73, '2026-09-23'),
  (20034, 39, '2026-09-07'),
  (20035, 67, '2026-09-23'),
  (20036, 69, '2026-09-15'),
  (20037, 53, '2026-10-08'),
  (20038, 39, '2026-10-08'),
  (20039, 18, '2026-09-14'),
  (20040, 47, '2026-10-10'),
  (20041, 61, '2026-09-11'),
  (20042, 18, '2026-09-01'),
  (20043, 32, '2026-10-16'),
  (20044, 20, '2026-09-29'),
  (20045, 13, '2026-09-05'),
  (20046, 82, '2026-09-10'),
  (20047, 86, '2026-10-21'),
  (20048, 35, '2026-09-26'),
  (20049, 34, '2026-09-01'),
  (20050, 8, '2026-10-12');

SELECT setval('orders_orderid_seq', (SELECT MAX(OrderID) FROM orders));

-- ---------------------------------------------------
-- Step 12: Create the Order_Details Table (Command 2 style)
-- ---------------------------------------------------
CREATE TABLE order_details (
  OrderDetailID SERIAL NOT NULL PRIMARY KEY,
  OrderID INT,
  ProductID INT,
  Quantity INT,
  FOREIGN KEY (OrderID)
        REFERENCES orders(OrderID),
  FOREIGN KEY (ProductID)
        REFERENCES products(ProductID)
);

-- Step 13: Insert Order Details (80 records) -- OrderDetailID auto-generated
INSERT INTO order_details (OrderID, ProductID, Quantity)
VALUES
  (20036, 45, 4),
  (20039, 67, 4),
  (20016, 22, 1),
  (20003, 8, 1),
  (20026, 24, 2),
  (20011, 8, 1),
  (20001, 71, 2),
  (20010, 53, 2),
  (20034, 65, 4),
  (20040, 23, 3),
  (20005, 39, 1),
  (20047, 62, 1),
  (20025, 56, 4),
  (20006, 58, 2),
  (20015, 14, 3),
  (20015, 5, 1),
  (20022, 34, 1),
  (20018, 71, 4),
  (20044, 67, 3),
  (20019, 28, 1),
  (20033, 2, 2),
  (20017, 31, 2),
  (20011, 42, 2),
  (20025, 43, 2),
  (20025, 69, 4),
  (20031, 68, 1),
  (20002, 56, 2),
  (20037, 40, 2),
  (20026, 75, 1),
  (20037, 22, 2),
  (20003, 4, 1),
  (20007, 21, 3),
  (20010, 4, 1),
  (20003, 18, 1),
  (20045, 9, 1),
  (20005, 76, 3),
  (20013, 69, 1),
  (20049, 50, 1),
  (20016, 27, 2),
  (20008, 5, 1),
  (20049, 12, 3),
  (20031, 13, 2),
  (20007, 27, 3),
  (20021, 44, 4),
  (20017, 3, 3),
  (20017, 37, 1),
  (20046, 48, 3),
  (20050, 65, 4),
  (20019, 4, 4),
  (20002, 56, 1),
  (20023, 61, 1),
  (20035, 73, 2),
  (20046, 12, 3),
  (20011, 56, 1),
  (20034, 26, 3),
  (20049, 7, 1),
  (20023, 63, 1),
  (20032, 24, 4),
  (20038, 45, 3),
  (20037, 21, 3),
  (20014, 30, 4),
  (20011, 15, 1),
  (20032, 72, 1),
  (20041, 42, 3),
  (20007, 52, 4),
  (20048, 12, 4),
  (20042, 4, 3),
  (20014, 39, 3),
  (20028, 70, 2),
  (20025, 30, 4),
  (20009, 69, 1),
  (20023, 75, 3),
  (20034, 20, 4),
  (20043, 71, 3),
  (20011, 60, 4),
  (20045, 33, 2),
  (20009, 43, 4),
  (20042, 31, 2),
  (20018, 39, 2),
  (20047, 20, 2);

-- ---------------------------------------------------
-- Step 14: Create the TestProducts Table (Command 2 style)
-- ---------------------------------------------------
CREATE TABLE testproducts (
  TestProductID SERIAL NOT NULL PRIMARY KEY,
  ProductName VARCHAR(255),
  CategoryID INT,
  FOREIGN KEY (CategoryID)
        REFERENCES categories(CategoryID)
);

-- Insert TestProducts Data (10 records) -- TestProductID auto-generated
INSERT INTO testproducts (ProductName, CategoryID)
VALUES
  ('Silver Charm Bracelet Sample', 4),
  ('Gold Plated Promise Ring', 1),
  ('Pearl Stud Earrings Sample', 3),
  ('Steel Fashion Watch Sample', 5),
  ('Loose Amethyst Stone', 10),
  ('Simple Wedding Band Set', 9),
  ('Beaded Anklet Sample', 6),
  ('Vintage Brooch Sample', 7),
  ('Classic Cufflinks Sample', 8),
  ('Rose Gold Bangle Sample', 4);

-- ---------------------------------------------------
-- Step 15: Verify All Tables
-- ---------------------------------------------------
SELECT * FROM categories;
SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_details;
SELECT * FROM testproducts;

-- ---------------------------------------------------
-- Step 16: Check the Relationships
-- ---------------------------------------------------
-- Products with Categories
SELECT p.ProductName, c.CategoryName
FROM products p
JOIN categories c ON p.CategoryID = c.CategoryID;

-- Orders with Customers
SELECT o.OrderID, c.CustomerName, c.ContactName, o.OrderDate
FROM orders o
JOIN customers c ON o.CustomerID = c.CustomerID;

-- Order Details with Products
SELECT od.OrderID, p.ProductName, od.Quantity, p.Price
FROM order_details od
JOIN products p 
ON od.ProductID = p.ProductID;
--inner join--
SELECT testproductID, ProductName, CategoryName
FROM testproducts
INNER JOIN categories ON testproducts.categoryID = categories.categoryID;
--left join--
SELECT testproductID, ProductName, CategoryName
FROM testproducts
LEFT JOIN categories ON testproducts.categoryID = categories.categoryID;
--right join--
SELECT testproductID, ProductName, CategoryName
FROM testproducts
RIGHT JOIN categories ON testproducts.categoryID = categories.categoryID;
--full join--
SELECT testproductID, ProductName, CategoryName
FROM testproducts
FULL JOIN categories ON testproducts.categoryID = categories.categoryID;
--cross join--
SELECT testproductID, ProductName, CategoryName
FROM testproducts
CROSS JOIN categories;
--
SELECT productID, productName
FROM products
UNION
SELECT testproductID, productName
FROM testproducts
ORDER BY productID;
--ID ONLY--
SELECT productID
FROM products
UNION
SELECT testproductID
FROM testproducts
ORDER BY productID;
--UNION ALL--
SELECT productID
FROM products
UNION ALL
SELECT testproductID
FROM testproducts
ORDER BY productID;
--count--
SELECT COUNT(customerID), country
FROM customers
GROUP BY country;
--count how many times--
SELECT customers.customerName, COUNT(orderID)
FROM orders
LEFT JOIN customers ON orders.customerID = customers.customerID
GROUP BY customerName;
--COUNT COUNTRY--
SELECT COUNT(customerID), country
FROM customers
GROUP BY country
HAVING COUNT(customerID) >20;
--SUM--
SELECT orderID, SUM(order_details.quantity * products.price)
FROM order_details
LEFT JOIN products on products.productID = order_details.productID
GROUP BY orderID
HAVING SUM(order_details.quantity * products.price) >400.00;
--EXISTS--
SELECT customers.customerName
FROM customers
WHERE EXISTS(
 SELECT orderID
 FROM orders 
WHERE customerID = customers.customerID);
--NOT EXIST--
SELECT customers.customerName
FROM customers
WHERE NOT EXISTS(
 SELECT orderID
 FROM orders 
WHERE customerID = customers.customerID);
--ANY--
SELECT productName 
FROM products
WHERE productID = ANY (
SELECT productID 
FROM order_details
WHERE quantity > 12);
--ALL--
SELECT productName 
FROM products
WHERE productID = ALL (
SELECT productID 
FROM order_details
WHERE quantity > 120);
--END --
SELECT productName,
CASE 
  WHEN price <10 THEN 'Low price product'
  WHEN price <50 THEN 'High price product'
ELSE 
  'Normal product'
END
FROM products;
--END AS--
SELECT productName,
CASE 
  WHEN price <10 THEN 'Low price product'
  WHEN price <50 THEN 'High price product'
ELSE 
  'Normal product'
END AS "price category"
FROM products;