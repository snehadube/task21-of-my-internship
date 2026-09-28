# Basic SQL SELECT - Chinook Database

**Internship:** Veda Technology - Data Analytics Track
**Author:** Sneha Dubey
**Tools:** PostgreSQL (pgAdmin 4) - MySQL-compatible script also provided
**Dataset:** Chinook (digital music store: customers, invoices, tracks, employees)

## Objective
Build SQL fundamentals by writing simple `SELECT`, `WHERE` and `ORDER BY` queries.

## Deliverables
- 10 SQL queries -> `queries.sql`
- Query outputs -> `query_outputs.txt` (and screenshots in `screenshots/`)
- Project report -> `Basic_SQL_SELECT_Report.pdf`

## Files
| File | Purpose |
|------|---------|
| `chinook_postgres.sql` | Creates and fills the Chinook tables in PostgreSQL |
| `chinook_mysql.sql` | Same, for MySQL |
| `queries.sql` | The 10 practice queries |
| `query_outputs.txt` | Output of each query |
| `Basic_SQL_SELECT_Report.pdf` | Project report |

## Queries at a glance
| # | Concept | Rows returned |
|---|---------|---------------|
| Q1 | Select specific columns | 59 |
| Q2 | Unique values with DISTINCT + ORDER BY | 24 |
| Q3 | Simple WHERE filter | 5 |
| Q4 | WHERE with IN + multi-column ORDER BY | 17 |
| Q5 | IS NOT NULL | 10 |
| Q6 | Pattern search with LIKE | 114 |
| Q7 | WHERE + ORDER BY DESC + LIMIT | 10 |
| Q8 | BETWEEN + ORDER BY | 53 |
| Q9 | Multiple conditions with AND (date range) | 18 |
| Q10 | WHERE + LIKE + ORDER BY on dates | 4 |

## How to run (PostgreSQL)
1. Open pgAdmin 4 and create a database named `chinook`.
2. Right-click `chinook` -> **Query Tool** -> open `chinook_postgres.sql` -> press **F5**.
3. Open `queries.sql` in the Query Tool and run one query at a time (select the query, press **F5**).

## How to run (MySQL)
1. Open MySQL Workbench, run `CREATE DATABASE chinook; USE chinook;`
2. File -> Open SQL Script -> `chinook_mysql.sql` -> click the lightning bolt.
3. Run the queries from `queries.sql`.

## Key learnings
- `SELECT` chooses columns; `DISTINCT` removes duplicates.
- `WHERE` filters rows using `=`, `IN`, `BETWEEN`, `LIKE`, `IS NOT NULL`, `AND`.
- `ORDER BY` sorts results (`ASC`/`DESC`, multiple columns); `LIMIT` keeps the top rows.
