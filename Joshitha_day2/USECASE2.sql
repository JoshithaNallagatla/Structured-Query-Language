CREATE DATABASE cdg_hyd_jfs_058;

USE cdg_hyd_jfs_058;

CREATE TABLE products (
    product_id INT NOT NULL AUTO_INCREMENT,
    sku VARCHAR(20) NOT NULL,
    product_name VARCHAR(150) NOT NULL,
    category VARCHAR(80) NOT NULL,
    brand VARCHAR(80),
    unit_price DECIMAL(12, 2) NOT NULL,
    quantity_in_stock INT NOT NULL DEFAULT 0,
    reorder_level INT UNSIGNED NOT NULL DEFAULT 5,
    manufacture_date DATE,
    expiry_date DATE,
    product_status VARCHAR(15) NOT NULL DEFAULT 'ACTIVE',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT `pk_products_product_id` PRIMARY KEY (product_id),
    CONSTRAINT `uq_sku` UNIQUE (sku),
    CHECK (unit_price > 0),
    CHECK (quantity_in_stock >= 0),
    CHECK (reorder_level >= 0),
    CHECK (manufacture_date IS NULL OR expiry_date IS NULL OR expiry_date >= manufacture_date)
);
SELECT * FROM products;
INSERT INTO products (sku, product_name, category, brand, unit_price, quantity_in_stock, reorder_level, manufacture_date, expiry_date)
VALUES ('SKU5', 'Paracetamol 500mg', 'Medicine', 'ABC', 25.50, 100, 10, '2026-01-10', '2028-01-10');

INSERT INTO products (sku, product_name, category, brand, unit_price, quantity_in_stock, reorder_level, manufacture_date, expiry_date) 
VALUES ('SKU6', 'Laptop', 'Electronics', 'LENOVO', 98999, 57, 1, '2026-04-17', NULL);





