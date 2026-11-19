USE cdg_hyd_jfs_059;

DROP TABLE courses;

DROP TABLE instructors;

-- Table-1:
CREATE TABLE courses (
    course_id INT,
    course_code VARCHAR(15),
    course_title VARCHAR(150),
    category VARCHAR(60),
    duration_hours INT,
    fee DECIMAL(10,2),
    discount_percentage DECIMAL(5,2),
    delivery_mode VARCHAR(20),
    start_date DATE,
    class_start_time TIME,
    class_end_time TIME,
    created_at DATETIME
);

DESCRIBE courses;

SHOW CREATE TABLE courses;

INSERT INTO
    courses(course_id, course_code, course_title, category, duration_hours, fee, discount_percentage, delivery_mode, start_date, class_start_time, class_end_time, created_at)
VALUES
    (101, 'CRS-JAVA-101', 'Java Fundamentals', 'Programming', 40, 6500.00, 10.00, 'CLASSROOM', '2026-12-01', '09:00:00', '11:00:00', '2026-11-19 09:00:00');

INSERT INTO
    courses(course_id, course_code, course_title, category, duration_hours, fee, discount_percentage, delivery_mode, start_date, class_start_time, class_end_time, created_at)
VALUES
    (102, 'CRS-SQL-102', 'MySQL Essentials', 'Database', 32, 4500.50, 5.00, 'ONLINE', '2026-12-05', '10:00:00', '12:00:00', '2026-11-19 09:15:00'),
    (103, 'CRS-WEB-103', 'Web Development', 'Web Development', 60, 8500.00, 12.50, 'HYBRID', '2027-01-10', '14:00:00', '16:00:00', '2026-11-19 09:30:00');

INSERT INTO
    courses(course_id, course_code, course_title, category, duration_hours, fee, discount_percentage, delivery_mode, start_date, class_start_time, class_end_time, created_at)
VALUES
    (104, 'CRS-TST-104', 'Software Testing', 'Testing', 24, 3500.75, 0.00, 'ONLINE', '2026-12-15', '15:00:00', '17:00:00', '2026-11-19 09:45:00'),
    (105, 'CRS-PYT-105', 'Python Basics', 'Programming', 36, 5500.25, 7.50, 'CLASSROOM', '2027-01-05', '09:30:00', '11:30:00', '2026-11-19 10:00:00');

INSERT INTO
    courses(course_id, course_code, course_title, category, duration_hours, fee, discount_percentage, delivery_mode, start_date, class_start_time, class_end_time, created_at)
VALUES
    (106, 'CRS-DSA-106', 'Data Structures', 'Programming', 45, 6250.75, 8.25, 'ONLINE', '2027-02-01', '13:00:00', '15:00:00', '2026-11-19 10:15:00');

INSERT INTO
    courses(course_id, course_code, course_title, category, duration_hours, fee, discount_percentage, delivery_mode, start_date, class_start_time, class_end_time, created_at)
VALUES
    (107, 'CRS-CLD-107', 'Cloud Computing', 'Technology', 30, 7500.50, 6.50, 'HYBRID', '2027-02-10', '08:30:00', '10:30:00', '2026-11-19 10:30:00');

UPDATE courses
SET
    fee = 7000.00
WHERE
    course_code = 'CRS-JAVA-101';

UPDATE courses
SET
    fee = ROUND(fee * 1.085, 2)
WHERE
    delivery_mode = 'ONLINE';

UPDATE courses
SET
    delivery_mode = 'ONLINE'
WHERE
    course_code = 'CRS-WEB-103';

UPDATE courses
SET
    start_date = '2027-01-15'
WHERE
    course_code = 'CRS-PYT-105';

UPDATE courses
SET
    class_start_time = '10:00:00',
    class_end_time = '12:00:00'
WHERE
    delivery_mode = 'CLASSROOM';

UPDATE courses
SET
    created_at = '2026-11-19 11:00:00'
WHERE
    course_code = 'CRS-JAVA-101';

SELECT
    course_id,
    course_code,
    course_title,
    category,
    duration_hours,
    fee,
    discount_percentage,
    delivery_mode,
    start_date,
    class_start_time,
    class_end_time,
    created_at
FROM
    courses;
    
    
-- Table-2
CREATE TABLE instructors (
    instructor_id INT,
    instructor_code VARCHAR(12),
    first_name VARCHAR(60),
    last_name VARCHAR(60),
    email VARCHAR(120),
    specialization VARCHAR(100),
    years_experience INT,
    hourly_rate DECIMAL(8,2),
    employment_type VARCHAR(20),
    joined_on DATE,
    work_start_time TIME,
    work_end_time TIME,
    created_at DATETIME
);

DESCRIBE instructors;

SHOW CREATE TABLE instructors;

INSERT INTO
    instructors(instructor_id, instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, joined_on, work_start_time, work_end_time, created_at)
VALUES
    (101, 'INS-JV-001', 'Kavya', 'Menon', 'kavya.menon@gmail.com', 'Java', 8, 1500.50, 'FULL_TIME', '2021-06-14', '09:00:00', '18:00:00', '2026-11-19 09:00:00');

INSERT INTO
    instructors(instructor_id, instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, joined_on, work_start_time, work_end_time, created_at)
VALUES
    (102, 'INS-DB-002', 'Ritesh', 'Kumar', 'ritesh.kumar@gmail.com', 'Databases', 12, 1800.75, 'CONTRACT', '2019-02-01', '10:00:00', '19:00:00', '2026-11-19 09:15:00'),
    (103, 'INS-WB-003', 'Farah', 'Ali', 'farah.ali@gmail.com', 'Web Development', 5, 1200.00, 'PART_TIME', '2023-08-21', '14:00:00', '18:00:00', '2026-11-19 09:30:00');

INSERT INTO
    instructors(instructor_id, instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, joined_on, work_start_time, work_end_time, created_at)
VALUES
    (104, 'INS-QA-004', 'Nitin', 'Bose', 'nitin.bose@gmail.com', 'Software Testing', 7, 1350.25, 'PART_TIME', '2022-01-10', '09:30:00', '13:30:00', '2026-11-19 09:45:00'),
    (105, 'INS-PY-005', 'Leela', 'Shah', 'leela.shah@gmail.com', 'Python', 10, 1650.00, 'FULL_TIME', '2020-05-17', '09:00:00', '18:00:00', '2026-11-19 10:00:00');

INSERT INTO
    instructors(instructor_id, instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, joined_on, work_start_time, work_end_time, created_at)
VALUES
    (106, 'INS-JS-006', 'Arjun', 'Reddy', 'arjun.reddy@gmail.com', 'JavaScript', 0, 800.50, 'PART_TIME', '2026-10-01', '10:00:00', '14:00:00', '2026-11-19 10:15:00');

INSERT INTO
    instructors(instructor_id, instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, joined_on, work_start_time, work_end_time, created_at)
VALUES
    (107, 'INS-CL-007', 'Meera', 'Rao', 'meera.rao@gmail.com', 'Cloud Computing', 6, 1750.85, 'CONTRACT', '2022-07-15', '08:30:00', '17:30:00', '2026-11-19 10:30:00');

UPDATE instructors
SET
    hourly_rate = 1500.75
WHERE
    instructor_code = 'INS-QA-004';

UPDATE instructors
SET
    hourly_rate = ROUND(hourly_rate * 1.10, 2)
WHERE
    employment_type = 'FULL_TIME';

UPDATE instructors
SET
    specialization = 'Full-Stack Web Development'
WHERE
    instructor_code = 'INS-WB-003';

UPDATE instructors
SET
    joined_on = '2020-06-01'
WHERE
    instructor_code = 'INS-PY-005';

UPDATE instructors
SET
    work_start_time = '10:00:00',
    work_end_time = '14:00:00'
WHERE
    employment_type = 'PART_TIME';

UPDATE instructors
SET
    created_at = '2026-11-19 11:00:00'
WHERE
    instructor_code = 'INS-JV-001';

SELECT
    instructor_id,
    instructor_code,
    first_name,
    last_name,
    email,
    specialization,
    years_experience,
    hourly_rate,
    employment_type,
    joined_on,
    work_start_time,
    work_end_time,
    created_at
FROM
    instructors;
    
-- Table-3
CREATE TABLE warehouses (
    warehouse_id INT,
    warehouse_code VARCHAR(10),
    warehouse_name VARCHAR(100),
    city VARCHAR(80),
    state VARCHAR(80),
    capacity_units INT,
    occupied_units INT,
    monthly_rent DECIMAL(12,2),
    temperature_controlled INT,
    operational_status VARCHAR(20),
    opening_time TIME,
    closing_time TIME,
    last_inspection DATE,
    created_at DATETIME
);

DESCRIBE warehouses;

SHOW CREATE TABLE warehouses;

INSERT INTO
    warehouses(warehouse_id, warehouse_code, warehouse_name, city, state, capacity_units, occupied_units, monthly_rent, temperature_controlled, operational_status, opening_time, closing_time, last_inspection, created_at)
VALUES
    (101, 'WH-BLR-01', 'Bengaluru Central', 'Bengaluru', 'Karnataka', 10000, 6400, 125000.50, 0, 'ACTIVE', '08:00:00', '20:00:00', '2026-10-01', '2026-11-19 09:00:00');

INSERT INTO
    warehouses(warehouse_id, warehouse_code, warehouse_name, city, state, capacity_units, occupied_units, monthly_rent, temperature_controlled, operational_status, opening_time, closing_time, last_inspection, created_at)
VALUES
    (102, 'WH-HYD-02', 'Hyderabad North', 'Hyderabad', 'Telangana', 8000, 7900, 98000.00, 1, 'ACTIVE', '07:00:00', '22:00:00', '2026-09-15', '2026-11-19 09:15:00'),
    (103, 'WH-MUM-03', 'Mumbai Port Store', 'Mumbai', 'Maharashtra', 15000, 9000, 175500.75, 0, 'MAINTENANCE', '09:00:00', '18:00:00', '2026-08-20', '2026-11-19 09:30:00');

INSERT INTO
    warehouses(warehouse_id, warehouse_code, warehouse_name, city, state, capacity_units, occupied_units, monthly_rent, temperature_controlled, operational_status, opening_time, closing_time, last_inspection, created_at)
VALUES
    (104, 'WH-KOC-04', 'Kochi Cold Hub', 'Kochi', 'Kerala', 6000, 3200, 85000.25, 1, 'ACTIVE', '06:00:00', '21:00:00', '2026-10-10', '2026-11-19 09:45:00'),
    (105, 'WH-PUN-05', 'Pune Distribution Hub', 'Pune', 'Maharashtra', 5000, 2500, 75000.00, 0, 'ACTIVE', '08:30:00', '19:30:00', '2026-10-25', '2026-11-19 10:00:00');

INSERT INTO
    warehouses(warehouse_id, warehouse_code, warehouse_name, city, state, capacity_units, occupied_units, monthly_rent, temperature_controlled, operational_status, opening_time, closing_time, last_inspection, created_at)
VALUES
    (106, 'WH-CHN-06', 'Chennai Storage Hub', 'Chennai', 'Tamil Nadu', 12000, 5500, 115750.85, 0, 'ACTIVE', '08:00:00', '20:00:00', '2026-10-15', '2026-11-19 10:15:00');

INSERT INTO
    warehouses(warehouse_id, warehouse_code, warehouse_name, city, state, capacity_units, occupied_units, monthly_rent, temperature_controlled, operational_status, opening_time, closing_time, last_inspection, created_at)
VALUES
    (107, 'WH-DEL-07', 'Delhi Cold Storage', 'Delhi', 'Delhi', 9000, 4200, 95000.75, 1, 'ACTIVE', '06:30:00', '20:30:00', '2026-10-20', '2026-11-19 10:30:00');

UPDATE warehouses
SET
    occupied_units = occupied_units + 500
WHERE
    warehouse_code = 'WH-BLR-01';

UPDATE warehouses
SET
    occupied_units = occupied_units - 1000
WHERE
    warehouse_code = 'WH-HYD-02';

UPDATE warehouses
SET
    operational_status = 'ACTIVE'
WHERE
    warehouse_code = 'WH-MUM-03';

UPDATE warehouses
SET
    monthly_rent = ROUND(monthly_rent * 1.055, 2)
WHERE
    temperature_controlled = 1;

UPDATE warehouses
SET
    last_inspection = '2026-11-15'
WHERE
    warehouse_code = 'WH-KOC-04';

UPDATE warehouses
SET
    opening_time = '07:00:00',
    closing_time = '21:00:00'
WHERE
    operational_status = 'ACTIVE';

SELECT
    warehouse_id,
    warehouse_code,
    warehouse_name,
    city,
    state,
    capacity_units,
    occupied_units,
    monthly_rent,
    temperature_controlled,
    operational_status,
    opening_time,
    closing_time,
    last_inspection,
    created_at
FROM
    warehouses;
    
-- Table-4
CREATE TABLE shipments (
    shipment_id INT,
    tracking_number VARCHAR(20),
    sender_name VARCHAR(120),
    recipient_name VARCHAR(120),
    destination_city VARCHAR(80),
    package_weight_kg DECIMAL(8,3),
    shipping_cost DECIMAL(10,2),
    shipped_date DATE,
    shipped_time TIME,
    expected_delivery_date DATE,
    delivered_at DATETIME,
    shipment_status VARCHAR(20),
    priority VARCHAR(10),
    created_at DATETIME
);

DESCRIBE shipments;

SHOW CREATE TABLE shipments;

INSERT INTO
    shipments(shipment_id, tracking_number, sender_name, recipient_name, destination_city, package_weight_kg, shipping_cost, shipped_date, shipped_time, expected_delivery_date, delivered_at, shipment_status, priority, created_at)
VALUES
    (101, 'TRK26000001', 'Asha Stores', 'Nitin Rao', 'Chennai', 2.500, 180.50, '2026-11-10', '09:30:00', '2026-11-14', NULL, 'IN_TRANSIT', 'NORMAL', '2026-11-19 09:00:00');

INSERT INTO
    shipments(shipment_id, tracking_number, sender_name, recipient_name, destination_city, package_weight_kg, shipping_cost, shipped_date, shipped_time, expected_delivery_date, delivered_at, shipment_status, priority, created_at)
VALUES
    (102, 'TRK26000002', 'Nova Tech', 'Isha Sen', 'Bengaluru', 0.800, 250.75, '2026-11-11', '11:15:00', '2026-11-13', '2026-11-13 15:30:00', 'DELIVERED', 'EXPRESS', '2026-11-19 09:15:00');

INSERT INTO
    shipments(shipment_id, tracking_number, sender_name, recipient_name, destination_city, package_weight_kg, shipping_cost, shipped_date, shipped_time, expected_delivery_date, delivered_at, shipment_status, priority, created_at)
VALUES
    (103, 'TRK26000003', 'Book Nest', 'Omar Ali', 'Kochi', 4.200, 220.00, '2026-11-12', '14:00:00', '2026-11-17', NULL, 'CREATED', 'NORMAL', '2026-11-19 09:30:00');

INSERT INTO
    shipments(shipment_id, tracking_number, sender_name, recipient_name, destination_city, package_weight_kg, shipping_cost, shipped_date, shipped_time, expected_delivery_date, delivered_at, shipment_status, priority, created_at)
VALUES
    (104, 'TRK26000004', 'Green Foods', 'Meera Das', 'Hyderabad', 12.000, 550.50, '2026-11-12', '08:45:00', '2026-11-15', NULL, 'IN_TRANSIT', 'EXPRESS', '2026-11-19 09:45:00'),
    (105, 'TRK26000005', 'Test Sender', 'Test Receiver', 'Pune', 1.000, 100.25, '2026-11-13', '16:30:00', '2026-11-16', NULL, 'CANCELLED', 'NORMAL', '2026-11-19 10:00:00');

INSERT INTO
    shipments(shipment_id, tracking_number, sender_name, recipient_name, destination_city, package_weight_kg, shipping_cost, shipped_date, shipped_time, expected_delivery_date, delivered_at, shipment_status, priority, created_at)
VALUES
    (106, 'TRK26000006', 'City Mart', 'Rahul Verma', 'Mumbai', 0.750, 150.75, '2026-11-14', '10:00:00', '2026-11-18', NULL, 'IN_TRANSIT', 'NORMAL', '2026-11-19 10:15:00');

UPDATE shipments
SET
    shipment_status = 'DELIVERED',
    delivered_at = '2026-11-14 16:30:00'
WHERE
    tracking_number = 'TRK26000001';

UPDATE shipments
SET
    shipment_status = 'IN_TRANSIT'
WHERE
    tracking_number = 'TRK26000003';

UPDATE shipments
SET
    shipping_cost = shipping_cost + 50.00
WHERE
    priority = 'EXPRESS';

UPDATE shipments
SET
    expected_delivery_date = '2026-11-18'
WHERE
    tracking_number = 'TRK26000004';

UPDATE shipments
SET
    shipped_time = '10:30:00'
WHERE
    tracking_number = 'TRK26000003';

UPDATE shipments
SET
    delivered_at = '2026-11-13 16:00:00'
WHERE
    tracking_number = 'TRK26000002';

SELECT
    shipment_id,
    tracking_number,
    sender_name,
    recipient_name,
    destination_city,
    package_weight_kg,
    shipping_cost,
    shipped_date,
    shipped_time,
    expected_delivery_date,
    delivered_at,
    shipment_status,
    priority,
    created_at
FROM
    shipments;
    
-- Table-5
CREATE TABLE subscriptions (
    subscription_id INT,
    subscription_code VARCHAR(16),
    subscriber_name VARCHAR(120),
    subscriber_email VARCHAR(120),
    plan_name VARCHAR(60),
    billing_cycle VARCHAR(20),
    amount DECIMAL(10,2),
    start_date DATE,
    end_date DATE,
    renewal_time TIME,
    last_payment_at DATETIME,
    auto_renew INT,
    subscription_status VARCHAR(20),
    created_at DATETIME
);

DESCRIBE subscriptions;

SHOW CREATE TABLE subscriptions;

INSERT INTO
    subscriptions(subscription_id, subscription_code, subscriber_name, subscriber_email, plan_name, billing_cycle, amount, start_date, end_date, renewal_time, last_payment_at, auto_renew, subscription_status, created_at)
VALUES
    (101, 'SUB260001', 'Aarav Nair', 'aarav.nair@gmail.com', 'Standard', 'MONTHLY', 499.00, '2026-11-01', '2026-11-30', '01:00:00', '2026-11-01 01:05:00', 1, 'ACTIVE', '2026-11-19 09:00:00'),
    (102, 'SUB260002', 'Diya Shah', 'diya.shah@gmail.com', 'Premium', 'YEARLY', 4999.50, '2026-01-15', '2027-01-14', '02:00:00', '2026-11-15 02:10:00', 1, 'ACTIVE', '2026-11-19 09:15:00');

INSERT INTO
    subscriptions(subscription_id, subscription_code, subscriber_name, subscriber_email, plan_name, billing_cycle, amount, start_date, end_date, renewal_time, last_payment_at, auto_renew, subscription_status, created_at)
VALUES
    (103, 'SUB260003', 'Kabir Rao', 'kabir.rao@gmail.com', 'Basic', 'MONTHLY', 199.00, '2026-11-10', '2026-12-09', '03:00:00', '2026-11-10 03:05:00', 1, 'ACTIVE', '2026-11-19 09:30:00');

INSERT INTO
    subscriptions(subscription_id, subscription_code, subscriber_name, subscriber_email, plan_name, billing_cycle, amount, start_date, end_date, renewal_time, last_payment_at, auto_renew, subscription_status, created_at)
VALUES
    (104, 'SUB260004', 'Meera Bose', 'meera.bose@gmail.com', 'Premium', 'QUARTERLY', 1399.75, '2026-10-01', '2026-12-31', '04:00:00', '2026-10-01 04:15:00', 0, 'PAUSED', '2026-11-19 09:45:00'),
    (105, 'SUB260005', 'Rohan Das', 'rohan.das@gmail.com', 'Standard', 'MONTHLY', 499.00, '2026-08-01', '2026-08-31', '01:30:00', '2026-08-01 01:35:00', 0, 'CANCELLED', '2026-11-19 10:00:00');

INSERT INTO
    subscriptions(subscription_id, subscription_code, subscriber_name, subscriber_email, plan_name, billing_cycle, amount, start_date, end_date, renewal_time, last_payment_at, auto_renew, subscription_status, created_at)
VALUES
    (106, 'SUB260006', 'Ananya Reddy', 'ananya.reddy@gmail.com', 'Basic', 'MONTHLY', 349.75, '2026-11-15', '2026-12-14', '05:00:00', '2026-11-15 05:10:00', 1, 'ACTIVE', '2026-11-19 10:15:00');

INSERT INTO
    subscriptions(subscription_id, subscription_code, subscriber_name, subscriber_email, plan_name, billing_cycle, amount, start_date, end_date, renewal_time, last_payment_at, auto_renew, subscription_status, created_at)
VALUES
    (107, 'SUB260007', 'Vikram Rao', 'vikram.rao@gmail.com', 'Premium', 'YEARLY', 5999.50, '2026-11-19', '2027-11-18', '05:30:00', '2026-11-19 05:35:00', 1, 'ACTIVE', '2026-11-19 10:30:00');

UPDATE subscriptions
SET
    plan_name = 'Premium',
    amount = 799.50
WHERE
    subscription_code = 'SUB260001';

UPDATE subscriptions
SET
    subscription_status = 'ACTIVE',
    auto_renew = 1
WHERE
    subscription_code = 'SUB260004';

UPDATE subscriptions
SET
    amount = ROUND(amount * 1.05, 2)
WHERE
    billing_cycle = 'MONTHLY' AND subscription_status = 'ACTIVE';

UPDATE subscriptions
SET
    subscription_status = 'CANCELLED',
    auto_renew = 0,
    end_date = '2026-11-19'
WHERE
    subscription_code = 'SUB260003';

UPDATE subscriptions
SET
    renewal_time = '02:30:00'
WHERE
    billing_cycle = 'YEARLY';

UPDATE subscriptions
SET
    last_payment_at = '2026-11-19 11:00:00'
WHERE
    subscription_code = 'SUB260002';

SELECT
    subscription_id,
    subscription_code,
    subscriber_name,
    subscriber_email,
    plan_name,
    billing_cycle,
    amount,
    start_date,
    end_date,
    renewal_time,
    last_payment_at,
    auto_renew,
    subscription_status,
    created_at
FROM
    subscriptions;

-- Table-6
CREATE TABLE events (
    event_id INT,
    event_code VARCHAR(15),
    event_name VARCHAR(150),
    venue VARCHAR(150),
    city VARCHAR(80),
    start_date DATE,
    end_date DATE,
    start_time TIME,
    end_time TIME,
    capacity INT,
    registration_fee DECIMAL(10,2),
    event_type VARCHAR(20),
    event_status VARCHAR(20),
    created_at DATETIME
);

DESCRIBE events;

SHOW CREATE TABLE events;

INSERT INTO
    events(event_id, event_code, event_name, venue, city, start_date, end_date, start_time, end_time, capacity, registration_fee, event_type, event_status, created_at)
VALUES
    (1, 'EVT-JAVA-01', 'Java Developer Meetup', 'Tech Hall', 'Bengaluru', '2026-12-10', '2026-12-10', '09:00:00', '17:00:00', 250, 500.00, 'OFFLINE', 'OPEN', '2026-11-19 09:00:00');

INSERT INTO
    events(event_id, event_code, event_name, venue, city, start_date, end_date, start_time, end_time, capacity, registration_fee, event_type, event_status, created_at)
VALUES
    (2, 'EVT-CLOUD-02', 'Cloud Fundamentals Webinar', 'Online Platform', 'Online', '2026-12-12', '2026-12-12', '10:00:00', '12:00:00', 1000, 0.00, 'ONLINE', 'OPEN', '2026-11-19 09:15:00'),
    (3, 'EVT-DATA-03', 'Data Engineering Summit', 'Convention Centre', 'Hyderabad', '2027-01-05', '2027-01-06', '09:30:00', '18:00:00', 600, 2500.50, 'HYBRID', 'PLANNED', '2026-11-19 09:30:00');

INSERT INTO
    events(event_id, event_code, event_name, venue, city, start_date, end_date, start_time, end_time, capacity, registration_fee, event_type, event_status, created_at)
VALUES
    (4, 'EVT-UI-04', 'UI Design Workshop', 'Creative Hub', 'Chennai', '2026-12-20', '2026-12-20', '14:00:00', '17:30:00', 80, 1200.75, 'OFFLINE', 'PLANNED', '2026-11-19 09:45:00');

INSERT INTO
    events(event_id, event_code, event_name, venue, city, start_date, end_date, start_time, end_time, capacity, registration_fee, event_type, event_status, created_at)
VALUES
    (5, 'EVT-PY-05', 'Python Bootcamp', 'Learning Centre', 'Pune', '2027-01-10', '2027-01-12', '09:00:00', '16:00:00', 100, 1800.00, 'OFFLINE', 'OPEN', '2026-11-19 10:00:00');

INSERT INTO
    events(event_id, event_code, event_name, venue, city, start_date, end_date, start_time, end_time, capacity, registration_fee, event_type, event_status, created_at)
VALUES
    (6, 'EVT-AI-06', 'AI Innovation Conference', 'Innovation Centre', 'Hyderabad', '2027-02-15', '2027-02-15', '09:00:00', '17:00:00', 300, 999.99, 'OFFLINE', 'PLANNED', '2026-11-19 10:15:00');

UPDATE events
SET
    capacity = 750
WHERE
    event_code = 'EVT-DATA-03';

UPDATE events
SET
    event_status = 'OPEN'
WHERE
    event_code = 'EVT-UI-04';

UPDATE events
SET
    registration_fee = ROUND(registration_fee * 1.10, 2)
WHERE
    event_type = 'OFFLINE' AND registration_fee > 0;

UPDATE events
SET
    start_date = DATE_ADD(start_date, INTERVAL 1 DAY),
    end_date = DATE_ADD(end_date, INTERVAL 1 DAY)
WHERE
    event_code = 'EVT-CLOUD-02';

UPDATE events
SET
    start_time = '10:00:00'
WHERE
    event_code = 'EVT-JAVA-01';

UPDATE events
SET
    created_at = '2026-11-19 15:00:00'
WHERE
    event_code = 'EVT-JAVA-01';

SELECT
    event_id,
    event_code,
    event_name,
    venue,
    city,
    start_date,
    end_date,
    start_time,
    end_time,
    capacity,
    registration_fee,
    event_type,
    event_status,
    created_at
FROM
    events;

-- Table-7
CREATE TABLE devices (
    device_id INT,
    asset_tag VARCHAR(20),
    serial_number VARCHAR(50),
    device_name VARCHAR(120),
    device_type VARCHAR(20),
    manufacturer VARCHAR(80),
    model VARCHAR(100),
    purchase_date DATE,
    purchase_price DECIMAL(12,2),
    warranty_expiry DATE,
    last_maintenance_at DATETIME,
    maintenance_cost DECIMAL(10,2),
    device_status VARCHAR(20),
    created_at DATETIME
);

DESCRIBE devices;

SHOW CREATE TABLE devices;

INSERT INTO
    devices(device_id, asset_tag, serial_number, device_name, device_type, manufacturer, model, purchase_date, purchase_price, warranty_expiry, last_maintenance_at, maintenance_cost, device_status, created_at)
VALUES
    (1, 'AST-LAP-001', 'SN-LAP-260001', 'Developer Laptop', 'LAPTOP', 'Lenovo', 'ThinkPad E14', '2026-01-15', 78000.50, '2029-01-14', '2026-10-10 10:30:00', 1500.00, 'ASSIGNED', '2026-11-19 09:00:00');

INSERT INTO
    devices(device_id, asset_tag, serial_number, device_name, device_type, manufacturer, model, purchase_date, purchase_price, warranty_expiry, last_maintenance_at, maintenance_cost, device_status, created_at)
VALUES
    (2, 'AST-DES-002', 'SN-DES-260002', 'Lab Desktop', 'DESKTOP', 'Dell', 'OptiPlex 7010', '2025-08-10', 62000.00, '2028-08-09', '2026-09-15 11:00:00', 900.50, 'AVAILABLE', '2026-11-19 09:15:00'),
    (3, 'AST-TAB-003', 'SN-TAB-260003', 'Demo Tablet', 'TABLET', 'Samsung', 'Galaxy Tab S9', '2026-03-05', 68000.75, '2028-03-04', '2026-10-20 12:00:00', 500.00, 'AVAILABLE', '2026-11-19 09:30:00');

INSERT INTO
    devices(device_id, asset_tag, serial_number, device_name, device_type, manufacturer, model, purchase_date, purchase_price, warranty_expiry, last_maintenance_at, maintenance_cost, device_status, created_at)
VALUES
    (4, 'AST-RTR-004', 'SN-RTR-260004', 'Office Router', 'ROUTER', 'Cisco', 'RV340', '2024-06-20', 28000.00, '2027-06-19', '2026-11-01 09:15:00', 2500.75, 'REPAIR', '2026-11-19 09:45:00'),
    (5, 'AST-PHN-005', 'SN-PHN-260005', 'Retired Phone', 'PHONE', 'Nokia', 'Test Model', '2020-01-10', 8000.00, '2021-01-09', '2025-12-10 14:00:00', 300.00, 'RETIRED', '2026-11-19 10:00:00');

INSERT INTO
    devices(device_id, asset_tag, serial_number, device_name, device_type, manufacturer, model, purchase_date, purchase_price, warranty_expiry, last_maintenance_at, maintenance_cost, device_status, created_at)
VALUES
    (6, 'AST-LAP-006', 'SN-LAP-260006', 'Office Laptop', 'LAPTOP', 'HP', 'EliteBook 840', '2026-05-10', 84500.75, '2029-05-09', '2026-10-25 10:00:00', 1200.00, 'AVAILABLE', '2026-11-19 10:15:00');

INSERT INTO
    devices(device_id, asset_tag, serial_number, device_name, device_type, manufacturer, model, purchase_date, purchase_price, warranty_expiry, last_maintenance_at, maintenance_cost, device_status, created_at)
VALUES
    (7, 'AST-DES-007', 'SN-DES-260007', 'Training Desktop', 'DESKTOP', 'Acer', 'Veriton X', '2026-06-15', 55000.00, '2029-06-14', '2026-11-05 11:30:00', 0.00, 'AVAILABLE', '2026-11-19 10:30:00');

UPDATE devices
SET
    device_status = 'ASSIGNED'
WHERE
    asset_tag = 'AST-DES-002';

UPDATE devices
SET
    device_status = 'AVAILABLE'
WHERE
    asset_tag = 'AST-RTR-004';

UPDATE devices
SET
    warranty_expiry = '2030-01-14'
WHERE
    asset_tag = 'AST-LAP-001';

UPDATE devices
SET
    purchase_price = ROUND(purchase_price * 1.03, 2)
WHERE
    device_type = 'TABLET';

UPDATE devices
SET
    last_maintenance_at = '2026-11-15 14:30:00'
WHERE
    asset_tag = 'AST-TAB-003';

UPDATE devices
SET
    maintenance_cost = 1750.50
WHERE
    asset_tag = 'AST-RTR-004';

SELECT
    device_id,
    asset_tag,
    serial_number,
    device_name,
    device_type,
    manufacturer,
    model,
    purchase_date,
    purchase_price,
    warranty_expiry,
    last_maintenance_at,
    maintenance_cost,
    device_status,
    created_at
FROM
    devices;

-- Table-8
CREATE TABLE restaurants (
    restaurant_id INT,
    restaurant_code VARCHAR(12),
    restaurant_name VARCHAR(120),
    cuisine_type VARCHAR(80),
    city VARCHAR(80),
    phone VARCHAR(15),
    seating_capacity INT,
    average_cost_for_two DECIMAL(10,2),
    rating DECIMAL(3,2),
    opening_time TIME,
    closing_time TIME,
    opened_date DATE,
    last_review_at DATETIME,
    opening_status VARCHAR(25)
);

DESCRIBE restaurants;

SHOW CREATE TABLE restaurants;

INSERT INTO
    restaurants(restaurant_id, restaurant_code, restaurant_name, cuisine_type, city, phone, seating_capacity, average_cost_for_two, rating, opening_time, closing_time, opened_date, last_review_at, opening_status)
VALUES
    (1, 'RES-BLR-001', 'Spice Courtyard', 'Indian', 'Bengaluru', '9876601001', 80, 1200.50, 4.40, '11:00:00', '23:00:00', '2018-06-15', '2026-11-10 12:30:00', 'OPEN');

INSERT INTO
    restaurants(restaurant_id, restaurant_code, restaurant_name, cuisine_type, city, phone, seating_capacity, average_cost_for_two, rating, opening_time, closing_time, opened_date, last_review_at, opening_status)
VALUES
    (2, 'RES-CHE-002', 'Green Banana Leaf', 'South Indian', 'Chennai', '9876601002', 60, 700.75, 4.60, '08:00:00', '22:00:00', '2020-02-10', '2026-11-12 14:00:00', 'OPEN'),
    (3, 'RES-MUM-003', 'Coastal Plate', 'Seafood', 'Mumbai', '9876601003', 100, 1800.00, 4.20, '12:00:00', '23:30:00', '2017-09-21', '2026-11-13 15:30:00', 'OPEN');

INSERT INTO
    restaurants(restaurant_id, restaurant_code, restaurant_name, cuisine_type, city, phone, seating_capacity, average_cost_for_two, rating, opening_time, closing_time, opened_date, last_review_at, opening_status)
VALUES
    (4, 'RES-HYD-004', 'Urban Bowl', 'Fusion', 'Hyderabad', '9876601004', 45, 950.50, 4.00, '10:00:00', '22:30:00', '2026-01-12', '2026-11-14 16:00:00', 'OPEN');

INSERT INTO
    restaurants(restaurant_id, restaurant_code, restaurant_name, cuisine_type, city, phone, seating_capacity, average_cost_for_two, rating, opening_time, closing_time, opened_date, last_review_at, opening_status)
VALUES
    (5, 'RES-PUN-005', 'The Coffee Table', 'Cafe', 'Pune', '9876601005', 35, 450.25, 4.30, '07:00:00', '21:00:00', '2022-05-01', '2026-11-15 17:00:00', 'OPEN');

INSERT INTO
    restaurants(restaurant_id, restaurant_code, restaurant_name, cuisine_type, city, phone, seating_capacity, average_cost_for_two, rating, opening_time, closing_time, opened_date, last_review_at, opening_status)
VALUES
    (6, 'RES-HYD-006', 'Royal Spice', 'North Indian', 'Hyderabad', '9876601006', 50, 850.75, 3.85, '09:00:00', '22:00:00', '2023-08-15', '2026-11-16 18:00:00', 'OPEN');

UPDATE restaurants
SET
    rating = 4.55
WHERE
    restaurant_code = 'RES-BLR-001';

UPDATE restaurants
SET
    average_cost_for_two = ROUND(average_cost_for_two * 1.10, 2)
WHERE
    city = 'Mumbai';

UPDATE restaurants
SET
    rating = 4.25
WHERE
    restaurant_code = 'RES-HYD-004';

UPDATE restaurants
SET
    opening_time = '10:00:00'
WHERE
    opening_status = 'OPEN';

UPDATE restaurants
SET
    last_review_at = '2026-11-19 15:00:00'
WHERE
    restaurant_code = 'RES-CHE-002';

UPDATE restaurants
SET
    seating_capacity = seating_capacity + 10
WHERE
    seating_capacity < 60;

SELECT
    restaurant_id,
    restaurant_code,
    restaurant_name,
    cuisine_type,
    city,
    phone,
    seating_capacity,
    average_cost_for_two,
    rating,
    opening_time,
    closing_time,
    opened_date,
    last_review_at,
    opening_status
FROM
    restaurants;

-- Table-9
CREATE TABLE insurance_policies (
    policy_id INT,
    policy_number VARCHAR(14),
    policyholder_name VARCHAR(120),
    policy_type VARCHAR(20),
    coverage_amount DECIMAL(14,2),
    premium_amount DECIMAL(10,2),
    start_date DATE,
    end_date DATE,
    payment_frequency VARCHAR(20),
    payment_time TIME,
    last_payment_at DATETIME,
    nominee_name VARCHAR(120),
    policy_status VARCHAR(20),
    created_at DATETIME
);

DESCRIBE insurance_policies;

SHOW CREATE TABLE insurance_policies;

INSERT INTO
    insurance_policies(policy_id, policy_number, policyholder_name, policy_type, coverage_amount, premium_amount, start_date, end_date, payment_frequency, payment_time, last_payment_at, nominee_name, policy_status, created_at)
VALUES
    (1, 'POL00000000001', 'Aditi Rao', 'HEALTH', 1000000.00, 18000.50, '2026-01-01', '2026-12-31', 'ANNUAL', '09:00:00', '2026-01-01 09:05:00', 'Rohan Rao', 'ACTIVE', '2026-11-19 09:00:00'),
    (2, 'POL00000000002', 'Dev Kapoor', 'VEHICLE', 800000.00, 22000.75, '2026-04-15', '2027-04-14', 'QUARTERLY', '10:00:00', '2026-10-15 10:15:00', NULL, 'ACTIVE', '2026-11-19 09:15:00');

INSERT INTO
    insurance_policies(policy_id, policy_number, policyholder_name, policy_type, coverage_amount, premium_amount, start_date, end_date, payment_frequency, payment_time, last_payment_at, nominee_name, policy_status, created_at)
VALUES
    (3, 'POL00000000003', 'Meera Nair', 'LIFE', 5000000.00, 36000.00, '2026-06-01', '2046-05-31', 'ANNUAL', '11:00:00', '2026-06-01 11:05:00', 'Arun Nair', 'ACTIVE', '2026-11-19 09:30:00');

INSERT INTO
    insurance_policies(policy_id, policy_number, policyholder_name, policy_type, coverage_amount, premium_amount, start_date, end_date, payment_frequency, payment_time, last_payment_at, nominee_name, policy_status, created_at)
VALUES
    (4, 'POL00000000004', 'Kabir Shah', 'TRAVEL', 500000.00, 4500.50, '2026-10-01', '2026-10-31', 'MONTHLY', '08:30:00', '2026-10-01 08:35:00', NULL, 'ACTIVE', '2026-11-19 09:45:00'),
    (5, 'POL00000000005', 'Sara Das', 'HOME', 2000000.00, 15000.25, '2025-01-01', '2025-12-31', 'ANNUAL', '12:00:00', '2025-01-01 12:05:00', NULL, 'CANCELLED', '2026-11-19 10:00:00');

INSERT INTO
    insurance_policies(policy_id, policy_number, policyholder_name, policy_type, coverage_amount, premium_amount, start_date, end_date, payment_frequency, payment_time, last_payment_at, nominee_name, policy_status, created_at)
VALUES
    (6, 'POL00000000006', 'Arjun Mehta', 'HEALTH', 1500000.00, 12500.75, '2026-11-01', '2027-10-31', 'MONTHLY', '13:00:00', '2026-11-01 13:05:00', 'Neha Mehta', 'ACTIVE', '2026-11-19 10:15:00');

INSERT INTO
    insurance_policies(policy_id, policy_number, policyholder_name, policy_type, coverage_amount, premium_amount, start_date, end_date, payment_frequency, payment_time, last_payment_at, nominee_name, policy_status, created_at)
VALUES
    (7, 'POL00000000007', 'Priya Menon', 'LIFE', 3000000.00, 27500.50, '2026-11-10', '2046-11-09', 'ANNUAL', '15:30:00', '2026-11-10 15:35:00', 'Rahul Menon', 'ACTIVE', '2026-11-19 10:30:00');

UPDATE insurance_policies
SET
    coverage_amount = 1250000.00
WHERE
    policy_number = 'POL00000000001';

UPDATE insurance_policies
SET
    nominee_name = 'Sara Kapoor'
WHERE
    policy_number = 'POL00000000002';

UPDATE insurance_policies
SET
    premium_amount = ROUND(premium_amount * 1.05, 2)
WHERE
    policy_type = 'VEHICLE' AND policy_status = 'ACTIVE';

UPDATE insurance_policies
SET
    payment_frequency = 'ANNUAL'
WHERE
    policy_number = 'POL00000000004';

UPDATE insurance_policies
SET
    last_payment_at = '2026-11-19 15:00:00'
WHERE
    policy_number = 'POL00000000003';

UPDATE insurance_policies
SET
    end_date = '2027-05-14'
WHERE
    policy_number = 'POL00000000002';

SELECT
    policy_id,
    policy_number,
    policyholder_name,
    policy_type,
    coverage_amount,
    premium_amount,
    start_date,
    end_date,
    payment_frequency,
    payment_time,
    last_payment_at,
    nominee_name,
    policy_status,
    created_at
FROM
    insurance_policies;

-- Table-10
CREATE TABLE job_postings (
    job_id INT,
    job_code VARCHAR(15),
    job_title VARCHAR(150),
    department VARCHAR(100),
    location VARCHAR(100),
    employment_type VARCHAR(20),
    minimum_salary DECIMAL(12,2),
    maximum_salary DECIMAL(12,2),
    vacancies INT,
    posted_date DATE,
    closing_date DATE,
    interview_start_time TIME,
    interview_end_time TIME,
    last_updated_at DATETIME,
    job_status VARCHAR(20)
);

DESCRIBE job_postings;

SHOW CREATE TABLE job_postings;

INSERT INTO
    job_postings(job_id, job_code, job_title, department, location, employment_type, minimum_salary, maximum_salary, vacancies, posted_date, closing_date, interview_start_time, interview_end_time, last_updated_at, job_status)
VALUES
    (1, 'JOB-JAVA-001', 'Java Developer', 'Engineering', 'Bengaluru', 'FULL_TIME', 700000.00, 1200000.00, 3, '2026-11-01', '2026-12-01', '10:00:00', '12:00:00', '2026-11-19 09:00:00', 'OPEN'),
    (2, 'JOB-QA-002', 'QA Automation Engineer', 'Quality Assurance', 'Hyderabad', 'CONTRACT', 600000.50, 900000.00, 2, '2026-11-02', '2026-11-25', '14:00:00', '16:00:00', '2026-11-19 09:15:00', 'OPEN');

INSERT INTO
    job_postings(job_id, job_code, job_title, department, location, employment_type, minimum_salary, maximum_salary, vacancies, posted_date, closing_date, interview_start_time, interview_end_time, last_updated_at, job_status)
VALUES
    (3, 'JOB-INT-003', 'Software Intern', 'Engineering', 'Chennai', 'INTERNSHIP', 180000.00, 240000.00, 5, '2026-11-03', '2026-11-20', '09:00:00', '11:00:00', '2026-11-19 09:30:00', 'OPEN');

INSERT INTO
    job_postings(job_id, job_code, job_title, department, location, employment_type, minimum_salary, maximum_salary, vacancies, posted_date, closing_date, interview_start_time, interview_end_time, last_updated_at, job_status)
VALUES
    (4, 'JOB-HR-004', 'HR Coordinator', 'Human Resources', 'Mumbai', 'PART_TIME', 300000.00, 450000.75, 1, '2026-11-04', '2026-11-28', '11:00:00', '13:00:00', '2026-11-19 09:45:00', 'DRAFT'),
    (5, 'JOB-OLD-005', 'Cancelled Test Role', 'Training', 'Pune', 'FULL_TIME', 250000.00, 350000.00, 1, '2026-10-01', '2026-10-15', '15:00:00', '17:00:00', '2026-11-19 10:00:00', 'CANCELLED');

INSERT INTO
    job_postings(job_id, job_code, job_title, department, location, employment_type, minimum_salary, maximum_salary, vacancies, posted_date, closing_date, interview_start_time, interview_end_time, last_updated_at, job_status)
VALUES
    (6, 'JOB-PY-006', 'Python Developer', 'Engineering', 'Hyderabad', 'FULL_TIME', 550000.75, 850000.50, 2, '2026-11-05', '2026-12-05', '09:30:00', '11:30:00', '2026-11-19 10:15:00', 'OPEN');

INSERT INTO
    job_postings(job_id, job_code, job_title, department, location, employment_type, minimum_salary, maximum_salary, vacancies, posted_date, closing_date, interview_start_time, interview_end_time, last_updated_at, job_status)
VALUES
    (7, 'JOB-DATA-007', 'Data Analyst', 'Analytics', 'Bengaluru', 'FULL_TIME', 450000.50, 750000.75, 3, '2026-11-06', '2026-12-10', '09:30:00', '11:30:00', '2026-11-19 10:30:00', 'OPEN');

UPDATE job_postings
SET
    maximum_salary = 1300000.00
WHERE
    job_code = 'JOB-JAVA-001';

UPDATE job_postings
SET
    vacancies = 4
WHERE
    job_code = 'JOB-QA-002';

UPDATE job_postings
SET
    job_status = 'OPEN'
WHERE
    job_code = 'JOB-HR-004';

UPDATE job_postings
SET
    minimum_salary = ROUND(minimum_salary * 1.08, 2),
    maximum_salary = ROUND(maximum_salary * 1.08, 2)
WHERE
    department = 'Engineering' AND job_status = 'OPEN';

UPDATE job_postings
SET
    closing_date = '2026-11-30'
WHERE
    job_code = 'JOB-INT-003';

UPDATE job_postings
SET
    interview_start_time = '14:00:00',
    interview_end_time = '16:00:00'
WHERE
    job_code = 'JOB-JAVA-001';

UPDATE job_postings
SET
    last_updated_at = '2026-11-19 15:00:00'
WHERE
    job_code = 'JOB-JAVA-001';

SELECT
    job_id,
    job_code,
    job_title,
    department,
    location,
    employment_type,
    minimum_salary,
    maximum_salary,
    vacancies,
    posted_date,
    closing_date,
    interview_start_time,
    interview_end_time,
    last_updated_at,
    job_status
FROM
    job_postings;