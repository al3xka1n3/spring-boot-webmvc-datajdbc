DROP TABLE bank.account;
DROP TABLE bank.customer;
DROP SCHEMA bank;

CREATE SCHEMA bank;
CREATE TABLE bank.customer (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR
);

CREATE TABLE bank.account (
    id SERIAL PRIMARY KEY,
    customer INT REFERENCES bank.customer(id),
    number INT,
    amount NUMERIC
);

INSERT INTO bank.customer(first_name, last_name) VALUES ('Jonny', 'Cage');
INSERT INTO bank.customer(first_name, last_name) VALUES ('Sonya', 'Blade');
INSERT INTO bank.customer(first_name, last_name) VALUES ('Cassie', 'Cage');

INSERT INTO bank.account(customer, number, amount) VALUES (1, 123456, 243.45);
INSERT INTO bank.account(customer, number, amount) VALUES (1, 123457, 135.10);
INSERT INTO bank.account(customer, number, amount) VALUES (2, 123458, 9887.43);
