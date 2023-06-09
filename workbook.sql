-- Task 3 -----------------------------------

SHOW DATABASES;

CREATE DATABASE temp_database;

DROP DATABASE temp_database;

CREATE DATABASE world_peace;
DROP TABLE merchandise_item;
-- Task 4 -----------------------------------

USE world_peace;


-- CREATE TABLE temp_table (
-- item_id CHAR(10),
-- description VARCHAR(50),
-- unit_price int
-- );
-- DROP TABLE temp_table;


CREATE TABLE merchandise_item(
	merchandise_item_id CHAR(10),
    description VARCHAR(50),
    unit_price int
    );
-- Task 5 -----------------------------------
-- CREATE TABLE customer(
-- 	customer_id CHAR(10) PRIMARY KEY,
-- 	customer_name VARCHAR(50)
--     );
--     
--     
-- INSERT INTO customer
-- SET customer_id = "C000000001",
-- customer_name = "Harrison Kong";

-- INSERT INTO customer
-- SET customer_id = "C000000002",
-- customer_name = "John Doe";


-- INSERT INTO merchandise_item
-- SET
-- merchandise_item_id = "BAMBOOBOOK",
-- description = "Bamboo Notebook",
-- unit_price = 200;

-- INSERT INTO merchandise_item
-- SET
-- merchandise_item_id = "BAMBOOBOOK",
-- description = "Dragon Painting",
-- unit_price = 300;

-- UPDATE merchandise_item
-- SET merchandise_item_id ="DragonPTNG"
-- WHERE unit_price = 300;


-- ALTER TABLE merchandise_item
-- ADD CONSTRAINT
-- merchandise_item_pk
-- PRIMARY KEY(merchandize_item_id);

-- Task 6 -----------------------------------
-- CREATE INDEX description_idx on merchandise_item(description);

-- DROP INDEX description_idx on merchandise_item;

-- CREATE UNIQUE INDEX description_idx 
-- ON merchandise_item(description);

-- INSERT INTO
-- merchandise_item
-- SET merchandise_item_id='THORSTATUE',
-- description='Thor Statue',
-- unit_price=2500;

-- Task 7 -----------------------------------


-- CREATE TABLE customer_order(
-- customer_order_id CHAR(10) PRIMARY KEY,
-- customer_id CHAR(10),
-- FOREIGN KEY (customer_id)
-- REFERENCES customer(customer_id)
-- );


-- INSERT INTO 
-- customer_order
-- SET customer_order_id='0123456789',
-- customer_id='C123456789';

CREATE TABLE customer_order_line_item(
	customer_order_id CHAR(10),
    customer_id CHAR(10),
    merchandise_item_id CHAR(10),
    quantity int,
    PRIMARY KEY (customer_order_id, merchandise_item_id),
    FOREIGN KEY(customer_order_id) REFERENCES customer_order(customer_order_id)
    );
    
ALTER TABLE customer_order_line_item
ADD CONSTRAINT item_fk
FOREIGN KEY(merchandise_item_id)
REFERENCES merchandise_item(merchandise_item_id);


    
    




