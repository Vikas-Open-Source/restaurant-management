CREATE SCHEMA IF NOT EXISTS restaurant_management;

CREATE TYPE restaurant_management.PRIORITY AS ENUM('LOW','MEDIUM','HIGH');

CREATE TYPE restaurant_management.STATUS AS ENUM('RECEIVED','PAYMENT_COMPLETED','UNDER_PREPARATION', 'READY', 'DISPATCHED', 'DELIVERED');

CREATE TYPE restaurant_management.ITEM_TYPE AS ENUM('VEGAN','VEG','NON-VEG');

CREATE TABLE IF NOT EXISTS restaurant_management.users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    created_date TIMESTAMP NOT NULL,
    updated_date TIMESTAMP NOT NULL
);


CREATE TABLE IF NOT EXISTS restaurant_management.menu (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    type restaurant_management.ITEM_TYPE NOT NULL,
    created_date TIMESTAMP NOT NULL,
    updated_date TIMESTAMP NOT NULL
);


CREATE TABLE IF NOT EXISTS restaurant_management.orders (
    id SERIAL PRIMARY KEY,
    menu_item_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    status restaurant_management.STATUS NOT NULL,
    priority restaurant_management.PRIORITY NOT NULL,
    created_date TIMESTAMP NOT NULL,
    updated_date TIMESTAMP NOT NULL,
    CONSTRAINT menu_item_fk FOREIGN KEY(menu_item_id) REFERENCES restaurant_management.menu(id),
    CONSTRAINT user_fk FOREIGN KEY(user_id) REFERENCES restaurant_management.users(id)
);