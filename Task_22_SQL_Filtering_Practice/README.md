# Task 22 — SQL Filtering Practice
**Track:** Data Analytics  
**Topic:** Filtering records using `WHERE`, `IN`, `BETWEEN`, and `LIKE`  
**Database:** MySQL (primary implementation)  
**Suggested dataset:** Northwind

## Objective
Practice common SQL filtering operators and document the expected output for each query.

## Tools used
- MySQL
- SQL script (`sql/task22_queries.sql`)

## Dataset setup
This project uses the classic Northwind sample schema. The queries target the standard Northwind tables:
- `customers`
- `products`
- `orders`
- `order_details`
- `employees`
- `suppliers`

Table and column names in Northwind installations can vary by version. If your version uses `CustomerID` instead of `customer_id`, adapt the identifiers to match your schema. The included SQL uses the commonly distributed MySQL Northwind naming convention with lowercase snake_case.

## Run the task
1. Install or open MySQL and create/import the Northwind sample database.
2. Open `sql/task22_queries.sql` in MySQL Workbench.
3. Select the Northwind database and run the queries individually.
4. Check each result set and save screenshots or export results if your internship portal requests evidence.

## Deliverables
- 12 filtering queries
- Expected result descriptions in `results/expected_results.md`
- This README

## Important
The expected results document describes what each query is intended to return; exact rows depend on the Northwind version and data imported. No database execution was performed as part of preparing this SQL practice pack.
