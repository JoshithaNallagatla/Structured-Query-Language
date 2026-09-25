CREATE DATABASE cdg_hyd_jfs_058;

USE cdg_hyd_jfs_058;

CREATE TABLE hotel_rooms(
    room_id INT NOT NULL AUTO_INCREMENT,
    room_number VARCHAR(10) NOT NULL,
    room_type VARCHAR(20) NOT NULL,
    floor_number SMALLINT NOT NULL,
    bed_count TINYINT NOT NULL,
    max_occupancy TINYINT NOT NULL,
    price_per_night DECIMAL(10, 2) NOT NULL,
    availability_status VARCHAR(20) NOT NULL DEFAULT 'AVAILABLE',
    has_air_conditioning BOOLEAN NOT NULL DEFAULT TRUE,
    smoking_allowed BOOLEAN NOT NULL DEFAULT FALSE,
    notes VARCHAR(255),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `pq_hotel_rooms_room_id` PRIMARY KEY (room_id),
    CONSTRAINT `uq_room_number` UNIQUE (room_number),
    CONSTRAINT `chk_bed_count` CHECK (bed_count > 0),
    CONSTRAINT `chk_max_ocupancy` CHECK (max_occupancy > 0),
    CONSTRAINT `chk_night_price` CHECK (price_per_night > 0)

);

INSERT INTO hotel_rooms (room_number, room_type, floor_number, bed_count, max_occupancy, price_per_night)
VALUES ('101', 'DOUBLE', 2, 2, 2, 100.00);

INSERT INTO hotel_rooms (room_number, room_type, floor_number, bed_count, max_occupancy, price_per_night)
VALUES ('212', 'SINGLE', 1, 1, 1, 75.00);

SELECT * FROM hotel_rooms;
