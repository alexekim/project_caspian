CREATE DATABASE caspian;
\c caspian
CREATE TABLE accounts (id SERIAL PRIMARY KEY, email VARCHAR(255), password_hash VARCHAR(255));
CREATE TABLE personals (id SERIAL PRIMARY KEY, name VARCHAR(255), birthdate VARCHAR(255), gender VARCHAR(255), height INTEGER, weight INTEGER, blood_type VARCHAR(255));
CREATE TABLE contacts (id SERIAL PRIMARY KEY, phone VARCHAR(255), address VARCHAR(255), city VARCHAR(255), state VARCHAR(255), zip_code VARCHAR(255), country VARCHAR(255), ice_name VARCHAR(255), ice_relation VARCHAR(255), ice_phone INTEGER);
CREATE TABLE medicals (id SERIAL PRIMARY KEY, allergies VARCHAR(255), diseases VARCHAR(255), medication_dosage VARCHAR(255), smoking VARCHAR(255), alcohol VARCHAR(255), implants VARCHAR(255), organ_donor VARCHAR(255));
CREATE TABLE camp_locations (id SERIAL PRIMARY KEY, park_name VARCHAR(255), site_number INTEGER, vehicle_make VARCHAR(255), vehicle_model VARCHAR(255), vehicle_year INTEGER, vehicle_color VARCHAR(255), vehicle_plate VARCHAR(255));
