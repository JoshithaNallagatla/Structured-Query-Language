CREATE DATABASE cdg_hyd_jfs_058;

USE cdg_hyd_jfs_058;


CREATE TABLE customers (
    customer_id INT NOT NULL AUTO_INCREMENT,
    customer_code VARCHAR(12) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(120) NOT NULL,
    phone VARCHAR(15),
    date_of_birth DATE,
    city VARCHAR(80) NOT NULL,
    state VARCHAR(80) NOT NULL,
    postal_code VARCHAR(12) NOT NULL,
    customer_type VARCHAR(15) NOT NULL DEFAULT 'REGULAR',
    credit_limit DECIMAL(12, 2) NOT NULL DEFAULT 0.00,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    registered_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `pk_customers_customer_id` PRIMARY KEY (customer_id),
    CONSTRAINT `uq_customer_code` UNIQUE (customer_code),
    CONSTRAINT `uq_email` UNIQUE (email),
    CONSTRAINT `uq_phone` UNIQUE (phone),
    CONSTRAINT `chk_creidt_limit_non_negative` CHECK (credit_limit >= 0.00)

);

SELECT * FROM customers;
INSERT INTO customers (customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code) 
VALUES ('CST123', 'Nallagatla', 'Joshitha', 'joshitha@gmail.com', 6300848467, '2004-08-28', 'Proddutur', 'Andhra Pradesh', '516411');
INSERT INTO customers (customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code) 
VALUES ('CST456', 'Nallagatla', 'Poojitha', 'poojitha@gmail.com', 9856694333, '2006-08-22', 'Hyderabad', 'Telangana', '578773');
