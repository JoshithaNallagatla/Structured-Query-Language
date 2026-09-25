CREATE DATABASE cdg_hyd_jfs_058;

USE cdg_hyd_jfs_058;

CREATE TABLE bank_accounts (
    account_id INT NOT NULL AUTO_INCREMENT,
    account_number CHAR(12) NOT NULL,
    account_holder_name VARCHAR(120) NOT NULL,
    account_type VARCHAR(20) NOT NULL,
    balance DECIMAL(15, 2) NOT NULL,
    currency_code CHAR(3) NOT NULL DEFAULT 'INR',
    branch_name VARCHAR(100) NOT NULL,
    opened_date DATE NOT NULL,
    interest_rate DECIMAL(5, 2) NOT NULL DEFAULT 0.00,
    overdraft_limit DECIMAL(12, 2) NOT NULL DEFAULT 0.00,
    account_status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `uq_account_number` UNIQUE (account_number),
    CONSTRAINT `pk_bank_accounts_account_id` PRIMARY KEY(account_id),
    CONSTRAINT `chk_balance_non_negative` CHECK (balance >= 0),
    CONSTRAINT `chk_overdraft_non_negative` CHECK (overdraft_limit >= 0),
    CONSTRAINT `chk_intrest_rate_range` CHECK (interest_rate BETWEEN 0.00 AND 100.00)

);

INSERT INTO bank_accounts (account_number, account_holder_name, account_type, balance, branch_name, opened_date, interest_rate)
VALUES ('100000000123', 'Anitha', 'SAVINGS', 6000.50, 'Proddutur', '2026-01-15', 3.50);

INSERT INTO bank_accounts (account_number, account_holder_name, account_type, balance, branch_name, opened_date, overdraft_limit)
VALUES ('100000000456', 'Ramesh Reddy', 'CURRENT', 1100.00, 'Ameerpet', '2026-03-22', 500.00);

SELECT * FROM bank_accounts;