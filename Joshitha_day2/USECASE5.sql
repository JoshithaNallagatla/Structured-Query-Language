CREATE DATABASE cdg_hyd_jfs_058;

USE cdg_hyd_jfs_058;

CREATE TABLE patients (
    patient_id INT NOT NULL AUTO_INCREMENT ,
    patient_number VARCHAR(15) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    biological_sex VARCHAR(20) NOT NULL,
    blood_group ENUM ('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'),
    phone VARCHAR(15) NOT NULL,
    email VARCHAR(120),
    emergency_contact_name VARCHAR(100) NOT NULL,
    emergency_contact_phone VARCHAR(15) NOT NULL,
    allergies TEXT,
    patient_status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE',
    registered_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `pk_patients_patient_id` PRIMARY KEY (patient_id),
    CONSTRAINT `uq_patient_number` UNIQUE (patient_number)
);

INSERT INTO patients (patient_number, first_name, last_name, date_of_birth, biological_sex, blood_group, phone, emergency_contact_name, emergency_contact_phone) 
VALUES ('PN123', 'Annapureddy', 'Sita', '1990-01-01', 'Female', 'O+', '6306786432', 'Annapureddy Sita', '555-0198');

SELECT * FROM patients;