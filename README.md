## Restaurant Management
A simple app that can be used to seamlessly manage your Menu, Inventory, and Orders at every stage.

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Technology Choices](#technology-choices)
- [Installation](#installation)
- [Usage](#usage)
- [Configuration](#configuration)
- [Contributing](#contributing)
- [License](#license)

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Technology Choices](#technology-choices)
- [Installation](#installation)
- [Usage](#usage)
- [Configuration](#configuration)
- [Contributing](#contributing)
- [License](#license)

## Introduction

The Restaurant Management App is a comprehensive solution designed for restaurants of all sizes to effectively manage their menu, inventory, and orders. The app ensures smooth operations and enhances productivity by providing a unified platform to handle various aspects of restaurant management.

## Features
- Manage and update menu items effortlessly
- Track inventory levels and get alerts for low stock
- Handle orders from multiple stages (e.g., new, in progress, completed)
- Generate reports for sales and inventory

## Technology Choices

### Java 21
Java 21 is chosen for its modern features, performance improvements, and long-term support, making it a robust choice for building scalable and reliable applications.

### Spring Framework 3.x.x
The Spring Framework 3.x.x is selected for its powerful ecosystem, ease of use, and comprehensive support for building enterprise-grade applications. It provides essential features like dependency injection, transaction management, and more.

### PostgreSQL 16
PostgreSQL is a powerful, open-source object-relational database system known for its reliability, feature robustness, and performance. It is used to manage the app's data.

### Gradle 8.x

## Installation

To use this application, you need to have Java 21 and Gradle installed on your system.

1. Clone the repository:
    ```sh
    git clone https://github.com/Vikas-Open-Source/restaurant-management.git
    cd restaurant-management
    ```

2. Build the project using Maven:
    ```sh
    ./gradlew clean install
    ```

3. Configure your database connection in `application.properties`:
    ```properties
    spring.datasource.url=jdbc:postgresql://localhost:5432/your_db
    spring.datasource.username=your_username
    spring.datasource.password=your_password
    spring.jpa.hibernate.ddl-auto=update
    ```

4. Run the application:
    ```sh
    mvn spring-boot:run
    ```

## Usage

1. Access the application via your web browser at `http://localhost:8080`.
2. Use the provided web interface to manage your menu, inventory, and orders.
3. Customize the application to fit your restaurant's specific needs.

## Configuration

Ensure that your PostgreSQL database is up and running. Update the database configurations in the `application.properties` file to match your setup.

## Contributing

We welcome contributions to enhance this application. Please fork the repository and submit a pull request for review. Follow the coding standards and include relevant tests for your changes.
