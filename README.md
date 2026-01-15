# SQL Aggregate Functions, GROUP BY & HAVING Exercises

## Overview
This repository contains a collection of SQL queries designed to practice and demonstrate the use of **aggregate functions**, **GROUP BY**, and the **HAVING clause** on a relational database representing a car dealership system.

The exercises focus on analyzing customers, sales, inventory, services, and salesperson performance using real-world–style data.

---

## Database Context
The queries assume the existence of the following tables:

- **Customers** – customer information
- **Cars** – car inventory details (brand, model, color, stock)
- **Sales** – records of car sales, prices, dates, and salespersons
- **Salespersons** – salesperson information
- **ServiceRecords** – vehicle service history and costs

---

## Part 1: Basic Aggregate Functions
These queries demonstrate the use of core SQL aggregate functions:

- `COUNT()` – total number of customers
- `AVG()` – average sale price
- `MAX()` – highest sale price
- `SUM()` – total inventory count
- `MIN()` / `MAX()` – earliest and latest sale dates

**Key concepts practiced:**
- Summarizing large datasets
- Extracting meaningful metrics
- Understanding overall business performance

---

## Part 2: GROUP BY Exercises
This section focuses on grouping data to perform aggregated analysis across categories such as brands, models, and salespersons.

Examples include:
- Counting distinct car models per brand
- Total sales per salesperson
- Average sale price per car model
- Average service cost per service type
- Car counts grouped by brand and color

**Key concepts practiced:**
- Using `GROUP BY` with multiple columns
- Combining aggregate functions with joins
- Analyzing performance across different dimensions

---

## Part 3: HAVING Clause Exercises
These queries apply filters **after aggregation** using the `HAVING` clause.

Examples include:
- Brands with more than a certain number of models
- Car models sold more than a given number of times
- Salespersons exceeding a sales price threshold
- High-activity sales months
- Service types with high average costs

**Key concepts practiced:**
- Difference between `WHERE` and `HAVING`
- Filtering aggregated results
- Identifying high-performing or high-impact categories

---

## SQL Features Used
- Aggregate functions: `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`
- `GROUP BY` and `HAVING`
- `JOIN` operations
- Date formatting (`TO_CHAR`)
- Aliasing for readability

---

## Learning Outcomes
By completing these exercises, you will be able to:
- Perform meaningful data analysis using SQL
- Write readable and well-structured aggregation queries
- Analyze business data such as sales trends, inventory levels, and service costs
- Apply SQL concepts commonly used in real-world databases

---

## Usage
These queries can be executed in any SQL-compliant database system (e.g., PostgreSQL, MySQL with minor syntax adjustments).

Simply ensure the required tables and columns exist before running the queries.

---

## Author
Created as part of SQL practice and learning exercises focused on database analysis and reporting.
