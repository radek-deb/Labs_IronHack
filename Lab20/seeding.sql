INSERT INTO lab_mysql.cars (Auto_ID, VIN_No, Model, `Year`, Color, Manufacturer, Price)
VALUES ('0', '3K096I98581DHSNUP','Tiguan', '2019', 'Blue', 'Volkswagen', '150000'), 
('1', 'ZM8G7BEUQZ97IH46V', 'Rifter', '2019', 'Red', 'Peugeot', '200000'),
('2', 'RKXVNNIHLVVZOUB4M', 'Fusion', '2018', 'White', 'Ford', '130000'),
('3', 'HKNDGS7CU31E9Z7JW', 'RAV4', '2018', 'Silver', 'Toyota', '10000'),
('4', 'DAM41UDN3CHU2WVF6', 'V60', '2019', 'Gray', 'Volvo', '123823'),
('5', 'DAM41UDN3CHU2WVF6', 'V60 Cross Country', '2019', 'Gray', 'Volvo', '453680');

ALTER TABLE lab_mysql.customers 
MODIFY COLUMN Phone varchar(255);

INSERT INTO lab_mysql.customers (Auto_ID, Customer_ID, Name, Phone, Email, Adress, City, `State/Province`, Country, `ZIP/Postal Code`)
VALUES
('0', '10001', 'Pablo Picasso', '+34 636 17 63 82', 'Paseo de la Chopera 14', 'Madrid', 'Madrid', 'Spain', '28045'),
('1', '20001', 'Abraham Lincoln', '+1 305 907 7086', '120 SW 8th St	Miami', 'Florida', 'United States', '33130'),
('2', '30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

ALTER TABLE lab_mysql.invoices
MODIFY COLUMN `Date` date;
ALTER TABLE lab_mysql.invoices
ADD COLUMN Sales_Person varchar(255);

INSERT INTO lab_mysql.invoices (Auto_ID, Invoice_ID, `Date`, Car_ID, Customer_ID, Sales_Person)
VALUES
('0', '852399038', '22-08-2018', '0', '1', '3'),
('1', '731166526', '31-12-2018', '3', '0', '5'),
('2', '271135104', '22-01-2019', '2', '2', '7');

INSERT INTO lab_mysql.salesperson (Auto_ID, Staff_ID, Name, Store)
VALUES
('0', '00001', 'Petey Cruiser', 'Madrid'),
('1', '00002', 'Anna Sthesia', 'Barcelona'),
('2', '00003', 'Paul Molive', 'Berlin'),
('3', '00004', 'Gail Forcewind', 'Paris'),
('4', '00005', 'Paige Turner', 'Mimia'),
('5', '00006', 'Bob Frapples', 'Mexico City'),
('6', '00007', 'Walter Melon', 'Amsterdam'),
('7', '00008', 'Shonda Leer', 'São Paulo');
