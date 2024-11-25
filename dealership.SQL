DROP DATABASE cardealership;
CREATE DATABASE cardealership;

CREATE TABLE dealerships(
dealership_id INT auto_increment,
`name` VARCHAR(50),
address VARCHAR(50),
phone VARCHAR(12),
PRIMARY KEY(dealership_id)
);

CREATE TABLE vehicles(
price DECIMAL(10,2),
car_type VARCHAR(30),
`year` VARCHAR(4),
color VARCHAR(30),
VIN VARCHAR(50),
SOLD VARCHAR(50),
PRIMARY KEY(VIN)
);

CREATE TABLE inventory(
dealership_id INT,
VIN VARCHAR(50)
);

CREATE TABLE sales_contracts(
`date` date,
customer_name VARCHAR(50),
customer_phone_number INT(10),
vehicle_sold VARCHAR(50),
total_price DECIMAL(10,2),
monthly_payment DECIMAL(10,2),
ID INT AUTO_INCREMENT PRIMARY KEY,
VIN VARCHAR(50),
foreign key(VIN) references vehicles(VIN)
);

INSERT INTO dealerships (`name`, address, phone)
VALUES
    ('Auto World', '123 Main St, Springfield', '555-1234'),
    ('City Motors', '456 Elm St, Metropolis', '555-5678'),
    ('Speedy Cars', '789 Oak St, Rivertown', '555-9101');
    
INSERT INTO vehicles (price, car_type, `year`, color, VIN, SOLD)
VALUES
    (25000.00, 'Sedan', '2023', 'Red', '1HGBH41JXMN109186', 'No'),
    (32000.00, 'SUV', '2022', 'Blue', '2A4RR6GG5AR123456', 'Yes'),
    (18000.00, 'Truck', '2021', 'Black', '3GNEC13T78G102345', 'No');
    
INSERT INTO inventory (dealership_id, VIN)
VALUES
    (1, '1HGBH41JXMN109186'),
    (2, '2A4RR6GG5AR123456'),
    (3, '3GNEC13T78G102345');
    
    
INSERT INTO sales_contracts (`date`, customer_name, customer_phone_number, vehicle_sold, total_price, monthly_payment, VIN)
VALUES
    ('2024-11-20', 'Keely Lowder', 704123456, 'Honda Civic', 25000.00, 500.00, '1HGBH41JXMN109186'),
    ('2024-11-21', 'Ozzie', 704234567, 'Ford Explorer', 32000.00, 600.00, '2A4RR6GG5AR123456'),
    ('2024-11-22', 'Ollie', 704345678, 'Chevrolet Camaro', 18000.00, 400.00, '3GNEC13T78G102345');


    







