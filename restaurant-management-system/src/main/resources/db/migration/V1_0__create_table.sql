CREATE SCHEMA IF NOT EXISTS restaurant_management;

CREATE TABLE IF NOT EXISTS restaurant_management.menu (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    type VARCHAR(20) NOT NULL,
    created_date TIMESTAMP NOT NULL,
    updated_date TIMESTAMP NOT NULL
);


CREATE TABLE IF NOT EXISTS restaurant_management.orders (
    id SERIAL PRIMARY KEY,
    menu_item_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    status VARCHAR(20) NOT NULL,
    priority VARCHAR(20) NOT NULL,
    created_date TIMESTAMP NOT NULL,
    updated_date TIMESTAMP NOT NULL,
    CONSTRAINT menu_item_fk FOREIGN KEY(menu_item_id) REFERENCES restaurant_management.menu(id)
);