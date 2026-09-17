# SQL Fundamentals Drill

## Overview
This project is a focused practice exercise to build fluency in core SQL concepts using a small, custom-built SQLite database. It's the second project in a broader Data Engineering portfolio, meant to build SQL comfort before introducing full database-driven pipelines in later projects.

## Database
A small SQLite database (`practice.db`) with two related tables:
- **customers** — customer_id, name, city
- **orders** — order_id, customer_id, product, amount

The database is generated using `setup_database.py`, so it can be recreated from scratch at any time.

## What Was Practiced
- Basic `SELECT`, `WHERE`, `ORDER BY`
- `GROUP BY` with aggregate functions (`SUM`, `COUNT`, `AVG`, `MIN`, `MAX`) and `HAVING`
- `INNER JOIN` and `LEFT JOIN` across the customers and orders tables
- Subqueries, including comparison subqueries, `IN` with a subquery, and nested subqueries
- Window functions: `RANK()` (global and partitioned) and running totals with `SUM() OVER()`

All 18 queries, with explanatory comments, are saved in [`queries/practice_queries.sql`](queries/practice_queries.sql).

## Project Structure
```
de-02-sql-fundamentals/
├── data/
│ └── practice.db # SQLite database with sample data
├── queries/
│ └── practice_queries.sql # All practiced SQL queries, documented
├── setup_database.py # Script to generate the database and sample data
├── requirements.txt
└── README.md
```

## Tech Stack
- SQLite
- DB Browser for SQLite
- Python (for generating the sample database)

## Key Takeaways
This project built core SQL fluency — reading, writing, and reasoning through queries confidently — so that SQL syntax doesn't become a bottleneck in future projects that involve real databases and pipelines.

## How to Run
1. Clone this repository
2. Run `python setup_database.py` to generate `practice.db`
3. Open `practice.db` in DB Browser for SQLite
4. Run any query from `queries/practice_queries.sql` in the "Execute SQL" tab