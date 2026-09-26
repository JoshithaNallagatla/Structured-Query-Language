use cdg_hyd_jfs_058;

CREATE TABLE students (
    student_id INT NOT NULL AUTO_INCREMENT ,
    admission_number VARCHAR(15) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(120) NOT NULL,
    phone VARCHAR(15),
    date_of_birth DATE NOT NULL,
    program_name VARCHAR(50) NOT NULL,
    admission_date DATE NOT NULL,
    cgpa DECIMAL(4, 2) NOT NULL,
    student_status VARCHAR(15) NOT NULL DEFAULT 'ACTIVE',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `pk_student_id` PRIMARY KEY(student_id),
    CONSTRAINT `uq_admission_number` UNIQUE (admission_number),
    CONSTRAINT `uq_email` UNIQUE (email),
    CONSTRAINT `chk_cgpa` CHECK (cgpa BETWEEN 0.0 AND 10.0)
);
DROP TABLE students;
SELECT * FROM students;


INSERT INTO students (admission_number, first_name, last_name, email, phone, date_of_birth, program_name, admission_date, cgpa)
 VALUES ('STU26C001', 'Ananya', 'Rao', 'ananyarao@gmail.com', '9876501001', '2007-04-18', 'BSc Computer Science', '2026-07-10', 8.40);

INSERT INTO students (admission_number, first_name, last_name, email, date_of_birth, program_name, admission_date, cgpa) 
VALUES ('STU26C002', 'Vivaan', 'Sharma', 'vivaan.sharma@example.test', '2006-12-09', 'BCom', '2026-07-01', 7.75);

INSERT INTO students (admission_number, first_name, last_name, email, phone, date_of_birth, program_name, admission_date, cgpa) 
VALUES ('STU26C003', 'Diya', 'Nair', 'diya.nair@example.test', '9876501003', '2007-02-25', 'BA Economics', '2026-07-02', 9.10);

INSERT INTO students (admission_number, first_name, last_name, email, phone, date_of_birth, program_name, admission_date, cgpa, student_status) 
VALUES ('STU25C004', 'Kabir', 'Singh', 'kabir.singh@example.test', '9876501004', '2006-08-14', 'BSc Mathematics', '2025-07-01', 6.85, 'SUSPENDED');

INSERT INTO students (admission_number, first_name, last_name, email, phone, date_of_birth, program_name, admission_date, cgpa, student_status) 
VALUES ('STU25C005', 'Tara', 'Bose', 'tara.bose@example.test', '9876501005', '2005-09-30', 'BA History', '2024-07-01', 5.90, 'DROPPED');

 
UPDATE students SET cgpa = 8.65 WHERE  admission_number = 'STU26C001';

UPDATE students SET cgpa = LEAST(cgpa + 0.20, 10.00)
WHERE student_status = 'ACTIVE' AND program_name = 'BSc Computer Science';

UPDATE students SET student_status = 'Active' WHERE admission_number = 'STU25C004';

UPDATE students SET program_name = 'BCom Finance' WHERE program_name = 'BCom';

UPDATE students SET email = 'vivaan.sharma@example.test' WHERE admission_number = 'STU26C003';

SELECT * FROM students WHERE student_status = 'DROPPED';


DELETE FROM student WHERE student_status = 'DROPPED';

INSERT INTO students (admission_number, first_name, last_name, email, phone, date_of_birth, program_name, admission_date, cgpa)
VAlUES ('STU-TEMP-001','Temporary','Student','temporary.student@example.test','9876501099','2006-05-15','BSc Computer Science','2026-09-24',7.50);

DELETE FROM students WHERE admission_number = 'STU-TEMP-001';

