-- Creating Customer OLTP
CREATE TABLE `stellar-lock-437017-s8.customer.customers` (
    CustomerID STRING NOT NULL,  -- Use STRING for unique IDs with UUIDs
    FirstName STRING NOT NULL,
    LastName STRING NOT NULL,
    Email STRING NOT NULL,
    PhoneNumber STRING,
    Address STRING,
    PRIMARY KEY (CustomerID) NOT ENFORCED
);

CREATE TABLE `stellar-lock-437017-s8.customer.orders` (
    OrderID STRING NOT NULL,  -- Use STRING for unique IDs with UUIDs
    CustomerID STRING NOT NULL,
    OrderDate DATE NOT NULL,
    TotalAmount NUMERIC(10, 2) NOT NULL,
    PRIMARY KEY (OrderID) NOT ENFORCED,
    FOREIGN KEY (CustomerID) REFERENCES `stellar-lock-437017-s8.customer.customers` (CustomerID) NOT ENFORCED
);

CREATE TABLE `stellar-lock-437017-s8.customer.orderdetails` (
    OrderDetailID STRING NOT NULL,  -- Use STRING for unique IDs with UUIDs
    OrderID STRING NOT NULL,
    ProductID INT64 NOT NULL,
    Quantity INT64 NOT NULL,
    Price NUMERIC(10, 2) NOT NULL,
    PRIMARY KEY (OrderDetailID) NOT ENFORCED,
    FOREIGN KEY (OrderID) REFERENCES `stellar-lock-437017-s8.customer.orders` (OrderID) NOT ENFORCED
);

-- Inserting customer database
INSERT INTO stellar-lock-437017-s8.customer.customers (CustomerID, FirstName, LastName, Email, PhoneNumber, Address)
VALUES
('CUST001', 'Emma', 'Smith', 'emma.smith@gmail.com', '454-968-9989', '303 Birch Road'),
('CUST002', 'Chris', 'Garcia', 'chris.garcia@hotmail.com', '555-656-7465', '456 Oak Avenue'),
('CUST003', 'Oliver', 'Johnson', 'oliver.johnson@yahoo.com', '239-934-6963', '456 Oak Avenue'),
('CUST004', 'Sophia', 'Brown', 'sophia.brown@yahoo.com', '592-810-5438', '202 Cedar Boulevard'),
('CUST005', 'Alice', 'Davis', 'alice.davis@gmail.com', '225-462-2552', '303 Birch Road'),
('CUST006', 'Oliver', 'Smith', 'oliver.smith@starbucks.com', '138-859-5882', '202 Cedar Boulevard'),
('CUST007', 'Liam', 'Davis', 'liam.davis@hotmail.com', '692-455-4226', '456 Oak Avenue'),
('CUST008', 'Jane', 'Johnson', 'jane.johnson@gmail.com', '520-728-6320', '505 Spruce Way'),
('CUST009', 'John', 'Davis', 'john.davis@starbucks.com', '851-266-6050', '303 Birch Road'),
('CUST010', 'Oliver', 'Wilson', 'oliver.wilson@yahoo.com', '674-736-7245', '101 Maple Drive'),
('CUST011', 'Liam', 'Brown', 'liam.brown@yahoo.com', '507-576-2680', '202 Cedar Boulevard'),
('CUST012', 'Sophia', 'Jones', 'sophia.jones@yahoo.com', '807-205-1747', '101 Maple Drive'),
('CUST013', 'Bob', 'Garcia', 'bob.garcia@yahoo.com', '743-174-4769', '202 Cedar Boulevard'),
('CUST014', 'Jane', 'Davis', 'jane.davis@gmail.com', '341-161-5583', '101 Maple Drive'),
('CUST015', 'John', 'Jones', 'john.jones@hotmail.com', '332-980-1483', '303 Birch Road'),
('CUST016', 'Liam', 'Moore', 'liam.moore@hotmail.com', '953-847-8250', '404 Cherry Court'),
('CUST017', 'Isabella', 'Brown', 'isabella.brown@hotmail.com', '998-472-1404', '303 Birch Road'),
('CUST018', 'Sophia', 'Miller', 'sophia.miller@gmail.com', '862-621-3858', '303 Birch Road'),
('CUST019', 'Sophia', 'Smith', 'sophia.smith@yahoo.com', '986-267-9587', '456 Oak Avenue'),
('CUST020', 'Bob', 'Davis', 'bob.davis@hotmail.com', '823-432-3841', '123 Elm Street'),
('CUST021', 'Alice', 'Moore', 'alice.moore@hotmail.com', '765-832-4640', '202 Cedar Boulevard'),
('CUST022', 'Jane', 'Davis', 'jane.davis@yahoo.com', '313-459-9658', '101 Maple Drive'),
('CUST023', 'Isabella', 'Wilson', 'isabella.wilson@gmail.com', '430-731-2218', '505 Spruce Way'),
('CUST024', 'Alice', 'Jones', 'alice.jones@hotmail.com', '478-326-2656', '101 Maple Drive'),
('CUST025', 'Alice', 'Johnson', 'alice.johnson@gmail.com', '175-675-3389', '456 Oak Avenue'),
('CUST026', 'Sophia', 'Brown', 'sophia.brown@hotmail.com', '331-214-7861', '202 Cedar Boulevard'),
('CUST027', 'John', 'Garcia', 'john.garcia@yahoo.com', '770-459-8788', '505 Spruce Way'),
('CUST028', 'Bob', 'Williams', 'bob.williams@starbucks.com', '299-792-3211', '123 Elm Street'),
('CUST029', 'Emma', 'Garcia', 'emma.garcia@gmail.com', '342-312-5309', '101 Maple Drive'),
('CUST030', 'John', 'Brown', 'john.brown@starbucks.com', '974-234-4785', '505 Spruce Way'),
('CUST031', 'Oliver', 'Jones', 'oliver.jones@hotmail.com', '537-993-5164', '456 Oak Avenue'),
('CUST032', 'Liam', 'Brown', 'liam.brown@starbucks.com', '896-112-6706', '456 Oak Avenue'),
('CUST033', 'Chris', 'Smith', 'chris.smith@starbucks.com', '959-656-6507', '404 Cherry Court'),
('CUST034', 'Sophia', 'Wilson', 'sophia.wilson@starbucks.com', '990-505-1180', '789 Pine Lane'),
('CUST035', 'Oliver', 'Wilson', 'oliver.wilson@gmail.com', '122-256-9272', '202 Cedar Boulevard'),
('CUST036', 'Alice', 'Davis', 'alice.davis@yahoo.com', '158-764-9671', '456 Oak Avenue'),
('CUST037', 'Alice', 'Johnson', 'alice.johnson@hotmail.com', '672-747-4187', '303 Birch Road'),
('CUST038', 'Oliver', 'Johnson', 'oliver.johnson@yahoo.com', '273-155-2039', '101 Maple Drive'),
('CUST039', 'Liam', 'Garcia', 'liam.garcia@starbucks.com', '817-511-7194', '202 Cedar Boulevard'),
('CUST040', 'Oliver', 'Brown', 'oliver.brown@gmail.com', '705-421-1423', '303 Birch Road'),
('CUST041', 'Emma', 'Davis', 'emma.davis@hotmail.com', '563-458-5963', '789 Pine Lane'),
('CUST042', 'Alice', 'Davis', 'alice.davis@hotmail.com', '556-993-5594', '123 Elm Street'),
('CUST043', 'Liam', 'Jones', 'liam.jones@starbucks.com', '469-978-3108', '303 Birch Road'),
('CUST044', 'Emma', 'Garcia', 'emma.garcia@starbucks.com', '511-441-5781', '404 Cherry Court'),
('CUST045', 'Bob', 'Miller', 'bob.miller@hotmail.com', '342-370-1402', '505 Spruce Way'),
('CUST046', 'Sophia', 'Wilson', 'sophia.wilson@hotmail.com', '575-920-8967', '456 Oak Avenue'),
('CUST047', 'Sophia', 'Jones', 'sophia.jones@yahoo.com', '288-690-9523', '505 Spruce Way'),
('CUST048', 'Chris', 'Wilson', 'chris.wilson@gmail.com', '499-683-2518', '123 Elm Street'),
('CUST049', 'John', 'Brown', 'john.brown@yahoo.com', '958-459-8890', '404 Cherry Court'),
('CUST050', 'Alice', 'Davis', 'alice.davis@starbucks.com', '381-751-8334', '505 Spruce Way'),
('CUST051', 'Chris', 'Moore', 'chris.moore@yahoo.com', '747-905-3779', '123 Elm Street'),
('CUST052', 'Sophia', 'Brown', 'sophia.brown@gmail.com', '550-292-5700', '101 Maple Drive'),
('CUST053', 'Chris', 'Miller', 'chris.miller@yahoo.com', '297-329-8413', '303 Birch Road'),
('CUST054', 'Alice', 'Davis', 'alice.davis@yahoo.com', '296-124-9755', '789 Pine Lane'),
('CUST055', 'Liam', 'Garcia', 'liam.garcia@yahoo.com', '408-331-2169', '123 Elm Street'),
('CUST056', 'Emma', 'Johnson', 'emma.johnson@starbucks.com', '317-337-7927', '202 Cedar Boulevard'),
('CUST057', 'Jane', 'Garcia', 'jane.garcia@starbucks.com', '257-728-1907', '789 Pine Lane'),
('CUST058', 'Jane', 'Johnson', 'jane.johnson@gmail.com', '466-384-7852', '456 Oak Avenue'),
('CUST059', 'Alice', 'Miller', 'alice.miller@gmail.com', '495-431-3940', '505 Spruce Way'),
('CUST060', 'Oliver', 'Johnson', 'oliver.johnson@gmail.com', '692-848-4639', '101 Maple Drive'),
('CUST061', 'John', 'Garcia', 'john.garcia@yahoo.com', '106-176-9861', '101 Maple Drive'),
('CUST062', 'Bob', 'Smith', 'bob.smith@gmail.com', '761-985-4173', '404 Cherry Court'),
('CUST063', 'Sophia', 'Jones', 'sophia.jones@yahoo.com', '418-925-4653', '505 Spruce Way'),
('CUST064', 'Alice', 'Brown', 'alice.brown@gmail.com', '273-209-3690', '404 Cherry Court'),
('CUST065', 'Chris', 'Smith', 'chris.smith@gmail.com', '451-586-4322', '202 Cedar Boulevard'),
('CUST066', 'Bob', 'Moore', 'bob.moore@starbucks.com', '919-616-5342', '456 Oak Avenue'),
('CUST067', 'Chris', 'Williams', 'chris.williams@gmail.com', '340-118-8483', '456 Oak Avenue'),
('CUST068', 'Oliver', 'Davis', 'oliver.davis@starbucks.com', '893-249-2152', '789 Pine Lane'),
('CUST069', 'Chris', 'Miller', 'chris.miller@gmail.com', '739-100-2901', '123 Elm Street'),
('CUST070', 'Bob', 'Garcia', 'bob.garcia@starbucks.com', '519-320-9261', '303 Birch Road'),
('CUST071', 'Alice', 'Davis', 'alice.davis@hotmail.com', '621-323-8333', '303 Birch Road'),
('CUST072', 'Liam', 'Garcia', 'liam.garcia@gmail.com', '610-594-3792', '202 Cedar Boulevard'),
('CUST073', 'Chris', 'Williams', 'chris.williams@yahoo.com', '725-773-2062', '303 Birch Road'),
('CUST074', 'Oliver', 'Miller', 'oliver.miller@gmail.com', '629-841-5343', '404 Cherry Court'),
('CUST075', 'Alice', 'Johnson', 'alice.johnson@hotmail.com', '264-892-5393', '505 Spruce Way'),
('CUST076', 'Liam', 'Davis', 'liam.davis@gmail.com', '826-748-4173', '505 Spruce Way'),
('CUST077', 'Isabella', 'Miller', 'isabella.miller@yahoo.com', '702-389-1417', '789 Pine Lane'),
('CUST078', 'Sophia', 'Smith', 'sophia.smith@starbucks.com', '574-502-6476', '404 Cherry Court'),
('CUST079', 'Bob', 'Garcia', 'bob.garcia@starbucks.com', '994-376-2754', '202 Cedar Boulevard'),
('CUST080', 'Liam', 'Smith', 'liam.smith@yahoo.com', '247-241-1978', '202 Cedar Boulevard'),
('CUST081', 'Emma', 'Moore', 'emma.moore@hotmail.com', '657-962-5806', '505 Spruce Way'),
('CUST082', 'Liam', 'Davis', 'liam.davis@gmail.com', '612-525-7604', '789 Pine Lane'),
('CUST083', 'Jane', 'Brown', 'jane.brown@starbucks.com', '754-306-7854', '303 Birch Road'),
('CUST084', 'Liam', 'Brown', 'liam.brown@starbucks.com', '993-117-5164', '101 Maple Drive'),
('CUST085', 'Chris', 'Smith', 'chris.smith@hotmail.com', '521-887-3533', '789 Pine Lane'),
('CUST086', 'Liam', 'Miller', 'liam.miller@yahoo.com', '259-297-6188', '456 Oak Avenue'),
('CUST087', 'John', 'Jones', 'john.jones@gmail.com', '121-105-7436', '456 Oak Avenue'),
('CUST088', 'Liam', 'Williams', 'liam.williams@hotmail.com', '356-286-8386', '123 Elm Street'),
('CUST089', 'Bob', 'Davis', 'bob.davis@gmail.com', '583-925-1117', '202 Cedar Boulevard'),
('CUST090', 'Alice', 'Davis', 'alice.davis@hotmail.com', '265-863-7447', '456 Oak Avenue'),
('CUST091', 'Bob', 'Miller', 'bob.miller@hotmail.com', '345-243-3885', '101 Maple Drive'),
('CUST092', 'Emma', 'Jones', 'emma.jones@gmail.com', '685-815-7312', '456 Oak Avenue'),
('CUST093', 'Alice', 'Garcia', 'alice.garcia@yahoo.com', '553-820-8847', '404 Cherry Court'),
('CUST094', 'Oliver', 'Moore', 'oliver.moore@hotmail.com', '290-997-5799', '123 Elm Street'),
('CUST095', 'Isabella', 'Brown', 'isabella.brown@starbucks.com', '148-674-4695', '404 Cherry Court'),
('CUST096', 'Emma', 'Jones', 'emma.jones@starbucks.com', '635-996-8660', '404 Cherry Court'),
('CUST097', 'Isabella', 'Brown', 'isabella.brown@starbucks.com', '766-748-8256', '456 Oak Avenue'),
('CUST098', 'Bob', 'Jones', 'bob.jones@starbucks.com', '625-296-4889', '505 Spruce Way'),
('CUST099', 'Bob', 'Williams', 'bob.williams@starbucks.com', '658-787-4072', '789 Pine Lane'),
('CUST100', 'Liam', 'Wilson', 'liam.wilson@yahoo.com', '767-505-6506', '202 Cedar Boulevard');

INSERT INTO `stellar-lock-437017-s8.customer.orders` (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
('ORDER001', 'CUST047', '2024-03-29', 490.26),
('ORDER002', 'CUST008', '2024-03-14', 463.92),
('ORDER003', 'CUST082', '2024-11-15', 365.44),
('ORDER004', 'CUST079', '2024-11-23', 359.95),
('ORDER005', 'CUST073', '2024-10-06', 485.91),
('ORDER006', 'CUST001', '2024-01-25', 227.95),
('ORDER007', 'CUST096', '2024-10-02', 353.17),
('ORDER008', 'CUST069', '2024-05-25', 460.84),
('ORDER009', 'CUST015', '2024-11-13', 271.82),
('ORDER010', 'CUST037', '2024-09-25', 112.41),
('ORDER011', 'CUST054', '2024-01-03', 285.02),
('ORDER012', 'CUST041', '2023-12-27', 199.5),
('ORDER013', 'CUST054', '2024-08-04', 336.81),
('ORDER014', 'CUST072', '2024-01-11', 331.98),
('ORDER015', 'CUST012', '2024-06-23', 471.34),
('ORDER016', 'CUST004', '2024-01-08', 156.07),
('ORDER017', 'CUST050', '2024-05-02', 126.03),
('ORDER018', 'CUST003', '2024-02-12', 177.98),
('ORDER019', 'CUST049', '2024-08-08', 145.29),
('ORDER020', 'CUST042', '2024-11-06', 205.52),
('ORDER021', 'CUST045', '2024-03-13', 498.5),
('ORDER022', 'CUST087', '2024-09-15', 130.06),
('ORDER023', 'CUST089', '2024-11-18', 184.04),
('ORDER024', 'CUST094', '2024-11-20', 367.19),
('ORDER025', 'CUST012', '2024-05-26', 355.5),
('ORDER026', 'CUST042', '2024-06-15', 44.44),
('ORDER027', 'CUST075', '2024-10-29', 87.25),
('ORDER028', 'CUST063', '2024-05-20', 122.95),
('ORDER029', 'CUST002', '2024-05-13', 478.63),
('ORDER030', 'CUST083', '2024-08-17', 375.0),
('ORDER031', 'CUST032', '2024-09-12', 268.72),
('ORDER032', 'CUST044', '2024-05-08', 105.81),
('ORDER033', 'CUST092', '2024-03-05', 407.47),
('ORDER034', 'CUST033', '2024-02-01', 193.38),
('ORDER035', 'CUST078', '2024-09-07', 198.46),
('ORDER036', 'CUST081', '2024-10-02', 296.26),
('ORDER037', 'CUST084', '2024-07-26', 439.68),
('ORDER038', 'CUST069', '2024-07-29', 429.07),
('ORDER039', 'CUST094', '2024-01-03', 330.74),
('ORDER040', 'CUST065', '2024-05-13', 201.63),
('ORDER041', 'CUST037', '2024-09-08', 39.91),
('ORDER042', 'CUST093', '2024-11-19', 346.27),
('ORDER043', 'CUST061', '2024-10-19', 218.38),
('ORDER044', 'CUST091', '2023-12-25', 413.38),
('ORDER045', 'CUST074', '2024-09-04', 117.83),
('ORDER046', 'CUST098', '2024-07-14', 393.92),
('ORDER047', 'CUST010', '2024-06-30', 119.74),
('ORDER048', 'CUST044', '2024-08-12', 374.49),
('ORDER049', 'CUST037', '2024-09-12', 237.97),
('ORDER050', 'CUST014', '2024-06-15', 308.12);

INSERT INTO `stellar-lock-437017-s8.customer.orderdetails` (OrderDetailID, OrderID, ProductID, Quantity, Price)
VALUES
('OD001', 'ORDER009', 6, 4, 66.28),
('OD002', 'ORDER040', 15, 5, 7.69),
('OD003', 'ORDER024', 2, 5, 94.54),
('OD004', 'ORDER017', 16, 7, 10.25),
('OD005', 'ORDER043', 2, 2, 63.37),
('OD006', 'ORDER013', 14, 10, 97.33),
('OD007', 'ORDER046', 14, 9, 79.38),
('OD008', 'ORDER001', 2, 6, 60.84),
('OD009', 'ORDER026', 3, 2, 71.96),
('OD010', 'ORDER009', 17, 10, 13.56),
('OD011', 'ORDER035', 15, 4, 68.91),
('OD012', 'ORDER045', 8, 10, 24.86),
('OD013', 'ORDER040', 19, 7, 82.87),
('OD014', 'ORDER031', 5, 2, 18.43),
('OD015', 'ORDER024', 20, 3, 49.75),
('OD016', 'ORDER045', 10, 8, 97.95),
('OD017', 'ORDER021', 5, 10, 10.01),
('OD018', 'ORDER023', 1, 7, 94.45),
('OD019', 'ORDER039', 17, 9, 47.69),
('OD020', 'ORDER049', 16, 6, 33.56),
('OD021', 'ORDER042', 14, 7, 9.57),
('OD022', 'ORDER016', 8, 2, 95.03),
('OD023', 'ORDER034', 12, 1, 89.26),
('OD024', 'ORDER044', 19, 4, 95.37),
('OD025', 'ORDER011', 3, 5, 23.87),
('OD026', 'ORDER021', 13, 7, 29.26),
('OD027', 'ORDER016', 16, 7, 70.63),
('OD028', 'ORDER036', 3, 3, 83.52),
('OD029', 'ORDER027', 1, 8, 59.38),
('OD030', 'ORDER006', 2, 5, 95.48),
('OD031', 'ORDER036', 11, 2, 24.01),
('OD032', 'ORDER022', 5, 2, 85.02),
('OD033', 'ORDER050', 11, 6, 46.71),
('OD034', 'ORDER039', 20, 1, 32.42),
('OD035', 'ORDER043', 11, 4, 34.47),
('OD036', 'ORDER026', 20, 10, 19.36),
('OD037', 'ORDER043', 14, 3, 62.52),
('OD038', 'ORDER026', 3, 7, 65.80),
('OD039', 'ORDER011', 16, 3, 86.45),
('OD040', 'ORDER012', 13, 5, 33.13),
('OD041', 'ORDER031', 3, 5, 34.64),
('OD042', 'ORDER019', 11, 7, 71.55),
('OD043', 'ORDER009', 6, 2, 40.04),
('OD044', 'ORDER025', 2, 9, 75.14),
('OD045', 'ORDER002', 18, 10, 29.35),
('OD046', 'ORDER035', 4, 10, 54.30),
('OD047', 'ORDER039', 15, 4, 87.45),
('OD048', 'ORDER020', 20, 4, 24.27),
('OD049', 'ORDER008', 4, 8, 40.30),
('OD050', 'ORDER021', 4, 3, 72.45),
('OD051', 'ORDER049', 18, 4, 72.62),
('OD052', 'ORDER026', 11, 2, 53.29),
('OD053', 'ORDER034', 7, 1, 67.88),
('OD054', 'ORDER010', 20, 7, 50.11),
('OD055', 'ORDER012', 6, 6, 15.95),
('OD056', 'ORDER017', 4, 9, 57.14),
('OD057', 'ORDER017', 7, 4, 67.79),
('OD058', 'ORDER036', 7, 10, 97.89),
('OD059', 'ORDER010', 16, 9, 15.49),
('OD060', 'ORDER036', 8, 6, 81.10),
('OD061', 'ORDER040', 20, 5, 53.76),
('OD062', 'ORDER023', 11, 8, 48.80),
('OD063', 'ORDER004', 13, 1, 43.79),
('OD064', 'ORDER007', 19, 1, 97.86),
('OD065', 'ORDER005', 5, 7, 43.39),
('OD066', 'ORDER003', 8, 1, 14.76),
('OD067', 'ORDER017', 15, 10, 66.10),
('OD068', 'ORDER044', 20, 4, 49.83),
('OD069', 'ORDER034', 4, 9, 78.85),
('OD070', 'ORDER009', 2, 9, 24.45),
('OD071', 'ORDER040', 19, 7, 36.10),
('OD072', 'ORDER006', 5, 3, 20.31),
('OD073', 'ORDER045', 1, 8, 7.76),
('OD074', 'ORDER015', 16, 9, 82.55),
('OD075', 'ORDER045', 11, 1, 95.91),
('OD076', 'ORDER003', 19, 5, 72.47),
('OD077', 'ORDER022', 5, 6, 28.83),
('OD078', 'ORDER035', 5, 6, 55.70),
('OD079', 'ORDER034', 11, 8, 15.14),
('OD080', 'ORDER017', 4, 7, 35.76),
('OD081', 'ORDER024', 8, 7, 92.45),
('OD082', 'ORDER014', 4, 1, 15.62),
('OD083', 'ORDER026', 18, 8, 19.10),
('OD084', 'ORDER005', 14, 3, 39.70),
('OD085', 'ORDER026', 14, 4, 49.74),
('OD086', 'ORDER025', 13, 8, 92.53),
('OD087', 'ORDER026', 1, 10, 57.09),
('OD088', 'ORDER029', 13, 7, 63.47),
('OD089', 'ORDER033', 9, 7, 89.30),
('OD090', 'ORDER049', 14, 3, 91.64),
('OD091', 'ORDER036', 5, 5, 71.21),
('OD092', 'ORDER022', 10, 10, 15.48),
('OD093', 'ORDER048', 7, 6, 44.88),
('OD094', 'ORDER019', 1, 6, 84.43),
('OD095', 'ORDER013', 1, 2, 42.50),
('OD096', 'ORDER022', 6, 4, 68.57),
('OD097', 'ORDER040', 4, 8, 30.62),
('OD098', 'ORDER030', 4, 4, 7.03),
('OD099', 'ORDER021', 1, 2, 39.16),
('OD100', 'ORDER016', 16, 7, 27.31);

-- creating employee oltp
CREATE TABLE `stellar-lock-437017-s8.employee.employees` (
    EmployeeID INT64 NOT NULL,  -- Primary Key
    FirstName STRING NOT NULL,
    LastName STRING NOT NULL,
    Position STRING,
    HireDate DATE,
    Salary NUMERIC(10, 2),
    PRIMARY KEY (EmployeeID) NOT ENFORCED
);


CREATE TABLE `stellar-lock-437017-s8.employee.employeeprojects` (
    EmployeeProjectID INT64 NOT NULL,  -- Primary Key
    EmployeeID INT64 NOT NULL,  -- Foreign Key to Employees.EmployeeID
    ProjectID INT64 NOT NULL,  -- Foreign Key to Projects.ProjectID
    StartDate DATE,
    EndDate DATE,
    PRIMARY KEY (EmployeeProjectID) NOT ENFORCED
);

CREATE TABLE `stellar-lock-437017-s8.employee.projects` (
    ProjectID INT64 NOT NULL,  -- Primary Key
    ProjectName STRING NOT NULL,
    Budget NUMERIC(10, 2),
    PRIMARY KEY (ProjectID) NOT ENFORCED
);

-- Insert into employee OLTP
INSERT INTO `stellar-lock-437017-s8.employee.employeeprojects` (EmployeeProjectID, EmployeeID, ProjectID, StartDate, EndDate)
VALUES
(1, 44, 40, '2022-12-07', '2025-08-18'),
(2, 26, 34, '2024-04-15', '2026-12-16'),
(3, 4, 2, '2024-04-03', '2027-04-11'),
(4, 39, 15, '2023-12-25', '2026-05-05'),
(5, 43, 30, '2023-02-21', '2026-12-30'),
(6, 8, 40, '2024-05-13', '2026-03-09'),
(7, 34, 41, '2023-04-16', '2025-09-28'),
(8, 3, 12, '2022-04-21', '2026-05-20'),
(9, 6, 32, '2022-10-04', '2026-04-15'),
(10, 36, 44, '2023-04-29', '2025-03-04'),
(11, 1, 30, '2024-04-02', '2025-02-17'),
(12, 49, 24, '2022-07-18', '2026-07-08'),
(13, 5, 27, '2024-02-15', '2025-01-05'),
(14, 30, 24, '2022-10-12', '2025-11-06'),
(15, 45, 20, '2024-01-03', '2025-09-27'),
(16, 47, 27, '2022-08-01', '2025-05-24'),
(17, 18, 39, '2022-07-21', '2025-08-27'),
(18, 36, 24, '2022-04-29', '2025-05-13'),
(19, 44, 45, '2022-06-10', '2025-11-13'),
(20, 29, 10, '2024-01-18', '2026-11-04'),
(21, 12, 3, '2022-12-12', '2025-01-19'),
(22, 40, 44, '2022-12-29', '2026-03-07'),
(23, 10, 46, '2023-03-29', '2026-11-10'),
(24, 29, 23, '2023-11-24', '2026-12-14'),
(25, 41, 34, '2023-01-28', '2025-08-24'),
(26, 17, 37, '2024-10-30', '2025-05-19'),
(27, 46, 48, '2022-06-08', '2026-12-01'),
(28, 9, 26, '2023-11-07', '2025-11-08'),
(29, 44, 36, '2023-10-28', '2025-12-14'),
(30, 6, 2, '2023-12-07', '2025-02-11'),
(31, 20, 18, '2023-07-07', '2026-05-04'),
(32, 38, 23, '2022-04-07', '2027-07-25'),
(33, 8, 35, '2022-07-30', '2025-03-02'),
(34, 33, 25, '2022-12-31', '2025-03-27'),
(35, 48, 20, '2023-11-07', '2025-01-27'),
(36, 35, 39, '2023-08-12', '2027-01-31'),
(37, 12, 3, '2022-06-29', '2025-07-25'),
(38, 32, 18, '2024-09-17', '2024-12-04'),
(39, 26, 33, '2022-09-14', '2026-11-02'),
(40, 23, 33, '2024-08-18', '2025-06-10'),
(41, 44, 42, '2024-09-07', '2027-04-21'),
(42, 32, 31, '2024-09-28', '2027-01-10'),
(43, 39, 22, '2022-12-17', '2026-12-06'),
(44, 12, 17, '2022-07-23', '2026-01-24'),
(45, 33, 15, '2022-03-24', '2025-05-16'),
(46, 17, 23, '2024-09-05', '2025-05-04'),
(47, 2, 35, '2022-06-26', '2026-04-09'),
(48, 36, 14, '2022-09-16', '2025-10-09'),
(49, 8, 5, '2024-10-05', '2025-06-17'),
(50, 13, 36, '2023-02-16', '2026-02-13');

INSERT INTO `stellar-lock-437017-s8.employee.projects` (ProjectID, ProjectName, Budget)
VALUES
(1, 'Project1', 544061.37),
(2, 'Project2', 840068.31),
(3, 'Project3', 588090.48),
(4, 'Project4', 899205.16),
(5, 'Project5', 571909.16),
(6, 'Project6', 935232.18),
(7, 'Project7', 769105.68),
(8, 'Project8', 746998.68),
(9, 'Project9', 398938.84),
(10, 'Project10', 200923.02),
(11, 'Project11', 158329.39),
(12, 'Project12', 216307.1),
(13, 'Project13', 208553.3),
(14, 'Project14', 887790.95),
(15, 'Project15', 372773.27),
(16, 'Project16', 610580.57),
(17, 'Project17', 405027.16),
(18, 'Project18', 887774.14),
(19, 'Project19', 237902.83),
(20, 'Project20', 516738.75),
(21, 'Project21', 532133.77),
(22, 'Project22', 823348.78),
(23, 'Project23', 170346.62),
(24, 'Project24', 725772.06),
(25, 'Project25', 371312.4),
(26, 'Project26', 857726.39),
(27, 'Project27', 821571.43),
(28, 'Project28', 766303.98),
(29, 'Project29', 965176.7),
(30, 'Project30', 128306.7),
(31, 'Project31', 627939.66),
(32, 'Project32', 342439.57),
(33, 'Project33', 977297.66),
(34, 'Project34', 870386.56),
(35, 'Project35', 463015.91),
(36, 'Project36', 541504.43),
(37, 'Project37', 262341.25),
(38, 'Project38', 300566.76),
(39, 'Project39', 886945.37),
(40, 'Project40', 435760.98),
(41, 'Project41', 560479.34),
(42, 'Project42', 674262.62),
(43, 'Project43', 797063.35),
(44, 'Project44', 216696.91),
(45, 'Project45', 615017.74),
(46, 'Project46', 272447.95),
(47, 'Project47', 858565.83),
(48, 'Project48', 274382.77),
(49, 'Project49', 619339.06),
(50, 'Project50', 433351.0);


INSERT INTO `stellar-lock-437017-s8.employee.employees` (EmployeeID, FirstName, LastName, Position, HireDate, Salary)
VALUES
(1, 'FirstName1', 'LastName1', 'Analyst', '2017-12-21', 98264.12),
(2, 'FirstName2', 'LastName2', 'Tester', '2019-01-18', 116705.03),
(3, 'FirstName3', 'LastName3', 'Tester', '2024-09-04', 70332.25),
(4, 'FirstName4', 'LastName4', 'Analyst', '2022-04-29', 60182.84),
(5, 'FirstName5', 'LastName5', 'Tester', '2012-07-02', 111466.62),
(6, 'FirstName6', 'LastName6', 'Developer', '2012-03-03', 105561.68),
(7, 'FirstName7', 'LastName7', 'Designer', '2018-02-17', 93483.88),
(8, 'FirstName8', 'LastName8', 'Tester', '2017-05-01', 91647.27),
(9, 'FirstName9', 'LastName9', 'Analyst', '2014-11-06', 83307.55),
(10, 'FirstName10', 'LastName10', 'Analyst', '2013-02-27', 80438.59),
(11, 'FirstName11', 'LastName11', 'Developer', '2017-03-15', 97196.85),
(12, 'FirstName12', 'LastName12', 'Analyst', '2022-04-21', 97463.6),
(13, 'FirstName13', 'LastName13', 'Tester', '2011-08-08', 71681.89),
(14, 'FirstName14', 'LastName14', 'Analyst', '2023-02-02', 66938.81),
(15, 'FirstName15', 'LastName15', 'Tester', '2023-07-08', 83709.61),
(16, 'FirstName16', 'LastName16', 'Tester', '2023-12-30', 116291.98),
(17, 'FirstName17', 'LastName17', 'Analyst', '2024-11-09', 60727.47),
(18, 'FirstName18', 'LastName18', 'Developer', '2020-05-01', 83607.79),
(19, 'FirstName19', 'LastName19', 'Developer', '2012-01-03', 82066.72),
(20, 'FirstName20', 'LastName20', 'Analyst', '2022-08-08', 61960.95),
(21, 'FirstName21', 'LastName21', 'Tester', '2019-02-08', 90037.47),
(22, 'FirstName22', 'LastName22', 'Analyst', '2012-05-25', 114927.68),
(23, 'FirstName23', 'LastName23', 'Designer', '2015-03-01', 108153.02),
(24, 'FirstName24', 'LastName24', 'Designer', '2022-06-19', 50188.12),
(25, 'FirstName25', 'LastName25', 'Manager', '2023-10-08', 76903.66),
(26, 'FirstName26', 'LastName26', 'Analyst', '2022-10-26', 112039.88),
(27, 'FirstName27', 'LastName27', 'Tester', '2013-10-14', 110729.68),
(28, 'FirstName28', 'LastName28', 'Developer', '2014-07-17', 87869.39),
(29, 'FirstName29', 'LastName29', 'Developer', '2022-10-27', 115060.19),
(30, 'FirstName30', 'LastName30', 'Designer', '2023-06-21', 98347.8),
(31, 'FirstName31', 'LastName31', 'Manager', '2016-12-24', 112462.75),
(32, 'FirstName32', 'LastName32', 'Designer', '2023-02-12', 115445.29),
(33, 'FirstName33', 'LastName33', 'Analyst', '2016-12-22', 92447.93),
(34, 'FirstName34', 'LastName34', 'Designer', '2018-07-25', 100392.64),
(35, 'FirstName35', 'LastName35', 'Analyst', '2011-10-13', 50565.2),
(36, 'FirstName36', 'LastName36', 'Analyst', '2024-10-31', 76954.71),
(37, 'FirstName37', 'LastName37', 'Analyst', '2013-08-11', 113330.22),
(38, 'FirstName38', 'LastName38', 'Manager', '2017-06-29', 101551.65),
(39, 'FirstName39', 'LastName39', 'Designer', '2016-11-02', 113427.19),
(40, 'FirstName40', 'LastName40', 'Designer', '2021-01-29', 118795.06),
(41, 'FirstName41', 'LastName41', 'Analyst', '2022-03-26', 60078.96),
(42, 'FirstName42', 'LastName42', 'Developer', '2021-04-12', 66529.63),
(43, 'FirstName43', 'LastName43', 'Developer', '2013-08-12', 89578.16),
(44, 'FirstName44', 'LastName44', 'Manager', '2020-12-12', 70865.52),
(45, 'FirstName45', 'LastName45', 'Designer', '2014-02-27', 54343.78),
(46, 'FirstName46', 'LastName46', 'Developer', '2012-09-22', 53455.76),
(47, 'FirstName47', 'LastName47', 'Developer', '2017-01-31', 78317.79),
(48, 'FirstName48', 'LastName48', 'Designer', '2014-03-17', 66878.99),
(49, 'FirstName49', 'LastName49', 'Analyst', '2022-04-19', 55178.76),
(50, 'FirstName50', 'LastName50', 'Designer', '2019-05-22', 115600.22);


-- Creating supplier OLTP
CREATE TABLE `stellar-lock-437017-s8.supplier.suppliers` (
    SupplierID INT64 NOT NULL,  -- Primary Key
    SupplierName STRING NOT NULL,
    ContactNumber STRING,
    Email STRING,
    PRIMARY KEY (SupplierID) NOT ENFORCED
);

CREATE TABLE `stellar-lock-437017-s8.supplier.supplierproducts` (
    SupplierProductID INT64 NOT NULL,  -- Primary Key
    SupplierID INT64 NOT NULL,  -- Foreign Key to Suppliers.SupplierID
    ProductID INT64 NOT NULL,  -- Foreign Key to a Products table (if applicable)
    Price NUMERIC(10, 2) NOT NULL,
    PRIMARY KEY (SupplierProductID) NOT ENFORCED
);

CREATE TABLE `stellar-lock-437017-s8.supplier.products` (
    ProductID STRING NOT NULL,  -- Primary Key
    ProductName STRING NOT NULL,  -- Name of the product
    ProductDescription STRING,  -- Optional description
    PRIMARY KEY (ProductID) NOT ENFORCED
);

-- Insert into supplier OLTP

INSERT INTO `stellar-lock-437017-s8.supplier.supplierproducts` (SupplierProductID, SupplierID, ProductID, Price)
VALUES
(1, 27, 37, 243.81),
(2, 34, 78, 402.15),
(3, 28, 62, 382.1),
(4, 43, 46, 321.43),
(5, 44, 100, 189.84),
(6, 6, 93, 297.68),
(7, 29, 34, 206.88),
(8, 34, 32, 471.24),
(9, 30, 22, 467.8),
(10, 31, 39, 93.5),
(11, 25, 96, 298.32),
(12, 31, 95, 409.13),
(13, 27, 3, 375.15),
(14, 22, 17, 209.56),
(15, 36, 96, 411.07),
(16, 29, 76, 212.65),
(17, 18, 25, 275.07),
(18, 26, 10, 327.25),
(19, 46, 18, 13.22),
(20, 38, 24, 302.95),
(21, 6, 80, 397.2),
(22, 5, 90, 364.87),
(23, 47, 37, 93.44),
(24, 1, 67, 371.18),
(25, 2, 46, 126.22),
(26, 20, 84, 230.24),
(27, 23, 12, 127.38),
(28, 29, 83, 323.1),
(29, 35, 95, 232.83),
(30, 15, 35, 370.66),
(31, 4, 78, 366.51),
(32, 17, 82, 146.23),
(33, 41, 15, 180.91),
(34, 49, 25, 192.44),
(35, 33, 41, 437.49),
(36, 25, 85, 371.95),
(37, 24, 99, 343.64),
(38, 23, 15, 113.8),
(39, 43, 52, 41.58),
(40, 1, 96, 351.27),
(41, 27, 5, 194.83),
(42, 5, 17, 286.94),
(43, 3, 64, 270.82),
(44, 46, 64, 237.95),
(45, 26, 43, 213.48),
(46, 3, 93, 95.47),
(47, 39, 10, 234.17),
(48, 11, 11, 174.09),
(49, 39, 88, 271.1),
(50, 21, 48, 388.64);

INSERT INTO `stellar-lock-437017-s8.supplier.suppliers` (SupplierID, SupplierName, ContactNumber, Email)
VALUES
(1, 'Supplier1', '123-456-7811', 'supplier1@example.com'),
(2, 'Supplier2', '123-456-7822', 'supplier2@example.com'),
(3, 'Supplier3', '123-456-7833', 'supplier3@example.com'),
(4, 'Supplier4', '123-456-7844', 'supplier4@example.com'),
(5, 'Supplier5', '123-456-7855', 'supplier5@example.com'),
(6, 'Supplier6', '123-456-7866', 'supplier6@example.com'),
(7, 'Supplier7', '123-456-7877', 'supplier7@example.com'),
(8, 'Supplier8', '123-456-7888', 'supplier8@example.com'),
(9, 'Supplier9', '123-456-7899', 'supplier9@example.com'),
(10, 'Supplier10', '123-456-78010', 'supplier10@example.com'),
(11, 'Supplier11', '123-456-78111', 'supplier11@example.com'),
(12, 'Supplier12', '123-456-78212', 'supplier12@example.com'),
(13, 'Supplier13', '123-456-78313', 'supplier13@example.com'),
(14, 'Supplier14', '123-456-78414', 'supplier14@example.com'),
(15, 'Supplier15', '123-456-78515', 'supplier15@example.com'),
(16, 'Supplier16', '123-456-78616', 'supplier16@example.com'),
(17, 'Supplier17', '123-456-78717', 'supplier17@example.com'),
(18, 'Supplier18', '123-456-78818', 'supplier18@example.com'),
(19, 'Supplier19', '123-456-78919', 'supplier19@example.com'),
(20, 'Supplier20', '123-456-78020', 'supplier20@example.com'),
(21, 'Supplier21', '123-456-78121', 'supplier21@example.com'),
(22, 'Supplier22', '123-456-78222', 'supplier22@example.com'),
(23, 'Supplier23', '123-456-78323', 'supplier23@example.com'),
(24, 'Supplier24', '123-456-78424', 'supplier24@example.com'),
(25, 'Supplier25', '123-456-78525', 'supplier25@example.com'),
(26, 'Supplier26', '123-456-78626', 'supplier26@example.com'),
(27, 'Supplier27', '123-456-78727', 'supplier27@example.com'),
(28, 'Supplier28', '123-456-78828', 'supplier28@example.com'),
(29, 'Supplier29', '123-456-78929', 'supplier29@example.com'),
(30, 'Supplier30', '123-456-78030', 'supplier30@example.com'),
(31, 'Supplier31', '123-456-78131', 'supplier31@example.com'),
(32, 'Supplier32', '123-456-78232', 'supplier32@example.com'),
(33, 'Supplier33', '123-456-78333', 'supplier33@example.com'),
(34, 'Supplier34', '123-456-78434', 'supplier34@example.com'),
(35, 'Supplier35', '123-456-78535', 'supplier35@example.com'),
(36, 'Supplier36', '123-456-78636', 'supplier36@example.com'),
(37, 'Supplier37', '123-456-78737', 'supplier37@example.com'),
(38, 'Supplier38', '123-456-78838', 'supplier38@example.com'),
(39, 'Supplier39', '123-456-78939', 'supplier39@example.com'),
(40, 'Supplier40', '123-456-78040', 'supplier40@example.com'),
(41, 'Supplier41', '123-456-78141', 'supplier41@example.com'),
(42, 'Supplier42', '123-456-78242', 'supplier42@example.com'),
(43, 'Supplier43', '123-456-78343', 'supplier43@example.com'),
(44, 'Supplier44', '123-456-78444', 'supplier44@example.com'),
(45, 'Supplier45', '123-456-78545', 'supplier45@example.com'),
(46, 'Supplier46', '123-456-78646', 'supplier46@example.com'),
(47, 'Supplier47', '123-456-78747', 'supplier47@example.com'),
(48, 'Supplier48', '123-456-78848', 'supplier48@example.com'),
(49, 'Supplier49', '123-456-78949', 'supplier49@example.com'),
(50, 'Supplier50', '123-456-78050', 'supplier50@example.com');

INSERT INTO `stellar-lock-437017-s8.supplier.products` (ProductID, ProductName, ProductDescription)
VALUES
(1, 'Product1', 'This is a description of Product1'),
(2, 'Product2', 'This is a description of Product2'),
(3, 'Product3', 'This is a description of Product3'),
(4, 'Product4', 'This is a description of Product4'),
(5, 'Product5', 'This is a description of Product5'),
(6, 'Product6', 'This is a description of Product6'),
(7, 'Product7', 'This is a description of Product7'),
(8, 'Product8', 'This is a description of Product8'),
(9, 'Product9', 'This is a description of Product9'),
(10, 'Product10', 'This is a description of Product10'),
(11, 'Product11', 'This is a description of Product11'),
(12, 'Product12', 'This is a description of Product12'),
(13, 'Product13', 'This is a description of Product13'),
(14, 'Product14', 'This is a description of Product14'),
(15, 'Product15', 'This is a description of Product15'),
(16, 'Product16', 'This is a description of Product16'),
(17, 'Product17', 'This is a description of Product17'),
(18, 'Product18', 'This is a description of Product18'),
(19, 'Product19', 'This is a description of Product19'),
(20, 'Product20', 'This is a description of Product20');

-- Creating Datawarehouse tables
-- DimCustomer
CREATE TABLE `stellar-lock-437017-s8.master.dimcustomer` (
    CustomerKey INT64 NOT NULL,
    CustomerID STRING,
    FirstName STRING,
    LastName STRING,
    Email STRING,
    PhoneNumber STRING,
    Address STRING,
    PRIMARY KEY (CustomerKey) NOT ENFORCED
);

-- DimEmployee
CREATE TABLE `stellar-lock-437017-s8.master.dimemployee` (
    EmployeeKey INT64 NOT NULL,
    EmployeeID INT64,
    FirstName STRING,
    LastName STRING,
    Position STRING,
    HireDate DATE,
    Salary NUMERIC(10,2),
    PRIMARY KEY (EmployeeKey) NOT ENFORCED
);

-- DimSupplier
CREATE TABLE `stellar-lock-437017-s8.master.dimsupplier` (
    SupplierKey INT64 NOT NULL,
    SupplierID INT64,
    SupplierName STRING,
    ContactNumber STRING,
    Email STRING,
    PRIMARY KEY (SupplierKey) NOT ENFORCED
);

-- DimProduct
CREATE TABLE `stellar-lock-437017-s8.master.dimproduct` (
    ProductKey INT64 NOT NULL,
    ProductID INT64,
    ProductName STRING,
    ProductDescription STRING,
    PRIMARY KEY (ProductKey) NOT ENFORCED
);

-- DimProject
CREATE TABLE `stellar-lock-437017-s8.master.dimproject` (
    ProjectKey INT64 NOT NULL,
    ProjectID INT64,
    ProjectName STRING,
    Budget NUMERIC(10,2),
    PRIMARY KEY (ProjectKey) NOT ENFORCED
);

-- FactSales
CREATE TABLE `stellar-lock-437017-s8.master.factsales` (
    SalesKey INT64 NOT NULL,
    OrderID STRING,
    OrderDetailID STRING,
    DateKey INT64,
    CustomerKey INT64,
    ProductKey INT64,
    Quantity INT64,
    UnitPrice NUMERIC(10,2),
    TotalPrice NUMERIC(10,2),
    PRIMARY KEY (SalesKey) NOT ENFORCED
);

-- FactEmployeeProjects
CREATE TABLE `stellar-lock-437017-s8.master.factemployeeprojects` (
    EmployeeProjectKey INT64 NOT NULL,
    EmployeeProjectID INT64,
    EmployeeKey INT64,
    ProjectKey INT64,
    StartDateKey INT64,
    EndDateKey INT64,
    ProjectDuration INT64,
    PRIMARY KEY (EmployeeProjectKey) NOT ENFORCED
);

-- FactSupplierProducts
CREATE TABLE `stellar-lock-437017-s8.master.factsupplierproducts` (
    SupplierProductKey INT64 NOT NULL,
    SupplierProductID INT64,
    SupplierKey INT64,
    ProductKey INT64,
    Price NUMERIC(10,2),
    PRIMARY KEY (SupplierProductKey) NOT ENFORCED
);

--inserting records
INSERT INTO `stellar-lock-437017-s8.master.dimcustomer` (CustomerKey, CustomerID, FirstName, LastName, Email, PhoneNumber, Address)
SELECT
    ROW_NUMBER() OVER (ORDER BY CustomerID) AS CustomerKey,
    CustomerID,
    FirstName,
    LastName,
    Email,
    PhoneNumber,
    Address
FROM `stellar-lock-437017-s8.customer.customers`;

INSERT INTO `stellar-lock-437017-s8.master.dimemployee` (EmployeeKey, EmployeeID, FirstName, LastName, Position, HireDate, Salary)
SELECT
    ROW_NUMBER() OVER (ORDER BY EmployeeID) AS EmployeeKey,
    EmployeeID,
    FirstName,
    LastName,
    Position,
    HireDate,
    Salary
FROM `stellar-lock-437017-s8.employee.employees`;

INSERT INTO `stellar-lock-437017-s8.master.dimsupplier` (SupplierKey, SupplierID, SupplierName, ContactNumber, Email)
SELECT
    ROW_NUMBER() OVER (ORDER BY SupplierID) AS SupplierKey,
    SupplierID,
    SupplierName,
    ContactNumber,
    Email
FROM `stellar-lock-437017-s8.supplier.suppliers`;

INSERT INTO `stellar-lock-437017-s8.master.dimproduct` (ProductKey, ProductID, ProductName, ProductDescription)
SELECT
    ROW_NUMBER() OVER (ORDER BY ProductID) AS ProductKey,
    ProductID,
    ProductName,
    ProductDescription
FROM `stellar-lock-437017-s8.supplier.products`;

INSERT INTO `stellar-lock-437017-s8.master.dimproject` (ProjectKey, ProjectID, ProjectName, Budget)
SELECT
    ROW_NUMBER() OVER (ORDER BY ProjectID) AS ProjectKey,
    ProjectID,
    ProjectName,
    Budget
FROM `stellar-lock-437017-s8.employee.projects`;

-- Generate a date range from 2020-01-01 to 2030-12-31
CREATE TABLE `stellar-lock-437017-s8.master.dimdate` AS
WITH dates AS (
  SELECT
    GENERATE_DATE_ARRAY('2020-01-01', '2030-12-31') AS date_array
)
SELECT
  EXTRACT(YEAR FROM date) * 10000 + EXTRACT(MONTH FROM date) * 100 + EXTRACT(DAY FROM date) AS DateKey,
  date AS FullDate,
  EXTRACT(YEAR FROM date) AS Year,
  EXTRACT(QUARTER FROM date) AS Quarter,
  EXTRACT(MONTH FROM date) AS Month,
  EXTRACT(DAY FROM date) AS Day,
  EXTRACT(DAYOFWEEK FROM date) AS DayOfWeek
FROM dates, UNNEST(date_array) AS date;

INSERT INTO `stellar-lock-437017-s8.master.factsales` (SalesKey, OrderID, OrderDetailID, DateKey, CustomerKey, ProductKey, Quantity, UnitPrice, TotalPrice)
SELECT
    ROW_NUMBER() OVER (ORDER BY o.OrderID, od.OrderDetailID) AS SalesKey,
    o.OrderID,
    od.OrderDetailID,
    EXTRACT(YEAR FROM o.OrderDate) * 10000 + EXTRACT(MONTH FROM o.OrderDate) * 100 + EXTRACT(DAY FROM o.OrderDate) AS DateKey,
    dc.CustomerKey,
    dp.ProductKey,
    od.Quantity,
    od.Price AS UnitPrice,
    od.Quantity * od.Price AS TotalPrice
FROM `stellar-lock-437017-s8.customer.orders` o
JOIN `stellar-lock-437017-s8.customer.orderdetails` od ON o.OrderID = od.OrderID
JOIN `stellar-lock-437017-s8.master.dimcustomer` dc ON o.CustomerID = dc.CustomerID
JOIN `stellar-lock-437017-s8.master.dimproduct` dp ON od.ProductID = dp.ProductID;

INSERT INTO `stellar-lock-437017-s8.master.factemployeeprojects` (EmployeeProjectKey, EmployeeProjectID, EmployeeKey, ProjectKey, StartDateKey, EndDateKey, ProjectDuration)
SELECT
    ROW_NUMBER() OVER (ORDER BY ep.EmployeeProjectID) AS EmployeeProjectKey,
    ep.EmployeeProjectID,
    de.EmployeeKey,
    dp.ProjectKey,
    EXTRACT(YEAR FROM ep.StartDate) * 10000 + EXTRACT(MONTH FROM ep.StartDate) * 100 + EXTRACT(DAY FROM ep.StartDate) AS StartDateKey,
    EXTRACT(YEAR FROM ep.EndDate) * 10000 + EXTRACT(MONTH FROM ep.EndDate) * 100 + EXTRACT(DAY FROM ep.EndDate) AS EndDateKey,
    DATE_DIFF(ep.EndDate, ep.StartDate, DAY) AS ProjectDuration
FROM `stellar-lock-437017-s8.employee.employeeprojects` ep
JOIN `stellar-lock-437017-s8.master.dimemployee` de ON ep.EmployeeID = de.EmployeeID
JOIN `stellar-lock-437017-s8.master.dimproject` dp ON ep.ProjectID = dp.ProjectID;


INSERT INTO `stellar-lock-437017-s8.master.factsupplierproducts` (SupplierProductKey, SupplierProductID, SupplierKey, ProductKey, Price)
SELECT
    ROW_NUMBER() OVER (ORDER BY sp.SupplierProductID) AS SupplierProductKey,
    sp.SupplierProductID,
    ds.SupplierKey,
    dp.ProductKey,
    sp.Price
FROM `stellar-lock-437017-s8.supplier.supplierproducts` sp
JOIN `stellar-lock-437017-s8.master.dimsupplier` ds ON sp.SupplierID = ds.SupplierID
JOIN `stellar-lock-437017-s8.master.dimproduct` dp ON sp.ProductID = dp.ProductID;



-- Creating Datawarehouse where the dimensions tables are the combination of all the tables in the individual OLTP and 
-- the with Fact table they make a centralized Data Warehouse
-- DimCustomer
CREATE OR REPLACE TABLE `stellar-lock-437017-s8.master.dimcustomer` AS
SELECT
    ROW_NUMBER() OVER (ORDER BY CustomerID) AS CustomerKey,
    CustomerID,
    FirstName,
    LastName,
    Email,
    PhoneNumber,
    Address
FROM `stellar-lock-437017-s8.customer.customers`;

-- DimProduct
CREATE OR REPLACE TABLE `stellar-lock-437017-s8.master.dimproduct` AS
SELECT
    ROW_NUMBER() OVER (ORDER BY ProductID) AS ProductKey,
    ProductID,
    ProductName,
    ProductDescription
FROM `stellar-lock-437017-s8.supplier.products`;

-- DimEmployee
CREATE OR REPLACE TABLE `stellar-lock-437017-s8.master.dimemployee` AS
SELECT
    ROW_NUMBER() OVER (ORDER BY EmployeeID) AS EmployeeKey,
    EmployeeID,
    FirstName,
    LastName,
    Position,
    HireDate,
    Salary
FROM `stellar-lock-437017-s8.employee.employees`;

-- DimSupplier
CREATE OR REPLACE TABLE `stellar-lock-437017-s8.master.dimsupplier` AS
SELECT
    ROW_NUMBER() OVER (ORDER BY SupplierID) AS SupplierKey,
    SupplierID,
    SupplierName,
    ContactNumber,
    Email
FROM `stellar-lock-437017-s8.supplier.suppliers`;

-- DimDate
CREATE OR REPLACE TABLE `stellar-lock-437017-s8.master.dimdate` AS
WITH dates AS (
  SELECT GENERATE_DATE_ARRAY('2020-01-01', '2030-12-31') AS date_array
)
SELECT
  EXTRACT(YEAR FROM date) * 10000 + EXTRACT(MONTH FROM date) * 100 + EXTRACT(DAY FROM date) AS DateKey,
  date AS FullDate,
  EXTRACT(YEAR FROM date) AS Year,
  EXTRACT(QUARTER FROM date) AS Quarter,
  EXTRACT(MONTH FROM date) AS Month,
  EXTRACT(DAY FROM date) AS Day,
  EXTRACT(DAYOFWEEK FROM date) AS DayOfWeek
FROM dates, UNNEST(date_array) AS date;

CREATE TABLE `stellar-lock-437017-s8.master.factsalestransactions` (
    SalesTransactionKey INT64 NOT NULL,
    OrderID STRING,
    OrderDetailID STRING,
    DateKey INT64,
    CustomerKey INT64,
    ProductKey INT64,
    EmployeeKey INT64,
    SupplierKey INT64,
    Quantity INT64,
    UnitPrice NUMERIC(10,2),
    TotalPrice NUMERIC(10,2),
    PRIMARY KEY (SalesTransactionKey) NOT ENFORCED
);

INSERT INTO `stellar-lock-437017-s8.master.dimcustomer` (
    CustomerKey, CustomerID, FirstName, LastName, Email, PhoneNumber, Address
)
SELECT
    ROW_NUMBER() OVER (ORDER BY CustomerID) AS CustomerKey,
    CustomerID,
    FirstName,
    LastName,
    Email,
    PhoneNumber,
    Address
FROM `stellar-lock-437017-s8.customer.customers`;

INSERT INTO `stellar-lock-437017-s8.master.dimproduct` (
    ProductKey, ProductID, ProductName, ProductDescription
)
SELECT
    ROW_NUMBER() OVER (ORDER BY ProductID) AS ProductKey,
    ProductID,
    ProductName,
    ProductDescription
FROM `stellar-lock-437017-s8.supplier.products`;

INSERT INTO `stellar-lock-437017-s8.master.dimemployee` (
    EmployeeKey, EmployeeID, FirstName, LastName, Position, HireDate, Salary
)
SELECT
    ROW_NUMBER() OVER (ORDER BY EmployeeID) AS EmployeeKey,
    EmployeeID,
    FirstName,
    LastName,
    Position,
    HireDate,
    Salary
FROM `stellar-lock-437017-s8.employee.employees`;

INSERT INTO `stellar-lock-437017-s8.master.dimsupplier` (
    SupplierKey, SupplierID, SupplierName, ContactNumber, Email
)
SELECT
    ROW_NUMBER() OVER (ORDER BY SupplierID) AS SupplierKey,
    SupplierID,
    SupplierName,
    ContactNumber,
    Email
FROM `stellar-lock-437017-s8.supplier.suppliers`;

-- Generate a date range covering all relevant dates
CREATE OR REPLACE TABLE `stellar-lock-437017-s8.master.dimdate` AS
WITH dates AS (
  SELECT
    GENERATE_DATE_ARRAY(
      (SELECT MIN(OrderDate) FROM `stellar-lock-437017-s8.customer.orders`),
      (SELECT MAX(OrderDate) FROM `stellar-lock-437017-s8.customer.orders`)
    ) AS date_array
)
SELECT
  EXTRACT(YEAR FROM date) * 10000 + EXTRACT(MONTH FROM date) * 100 + EXTRACT(DAY FROM date) AS DateKey,
  date AS FullDate,
  EXTRACT(YEAR FROM date) AS Year,
  EXTRACT(QUARTER FROM date) AS Quarter,
  EXTRACT(MONTH FROM date) AS Month,
  EXTRACT(DAY FROM date) AS Day,
  EXTRACT(DAYOFWEEK FROM date) AS DayOfWeek
FROM dates, UNNEST(date_array) AS date;

-- First, ensure EmployeeID exists in orders and assign if necessary
ALTER TABLE `stellar-lock-437017-s8.customer.orders`
ADD COLUMN IF NOT EXISTS EmployeeID INT64;

-- Assign EmployeeID to orders if not already assigned
-- For demonstration, assigning random EmployeeIDs between 1 and 50
UPDATE `stellar-lock-437017-s8.customer.orders`
SET EmployeeID = CAST(FLOOR(1 + RAND() * 50) AS INT64)
WHERE EmployeeID IS NULL;

-- Now, populate FactSalesTransactions
INSERT INTO `stellar-lock-437017-s8.master.FactSalesTransactions` (
    SalesTransactionKey, OrderID, OrderDetailID, DateKey, CustomerKey, ProductKey, EmployeeKey, SupplierKey, Quantity, UnitPrice, TotalPrice
)
SELECT
    ROW_NUMBER() OVER (ORDER BY o.OrderID, od.OrderDetailID) AS SalesTransactionKey,
    o.OrderID,
    od.OrderDetailID,
    EXTRACT(YEAR FROM o.OrderDate) * 10000 + EXTRACT(MONTH FROM o.OrderDate) * 100 + EXTRACT(DAY FROM o.OrderDate) AS DateKey,
    dc.CustomerKey,
    dp.ProductKey,
    de.EmployeeKey,
    ds.SupplierKey,
    od.Quantity,
    od.Price AS UnitPrice,
    od.Quantity * od.Price AS TotalPrice
FROM `stellar-lock-437017-s8.customer.orders` o
JOIN `stellar-lock-437017-s8.customer.orderdetails` od ON o.OrderID = od.OrderID
JOIN `stellar-lock-437017-s8.master.DimCustomer` dc ON o.CustomerID = dc.CustomerID
JOIN `stellar-lock-437017-s8.master.DimProduct` dp ON od.ProductID = dp.ProductID
JOIN `stellar-lock-437017-s8.master.DimEmployee` de ON o.EmployeeID = de.EmployeeID
LEFT JOIN `stellar-lock-437017-s8.supplier.supplierproducts` sp ON od.ProductID = sp.ProductID
LEFT JOIN `stellar-lock-437017-s8.master.DimSupplier` ds ON sp.SupplierID = ds.SupplierID;