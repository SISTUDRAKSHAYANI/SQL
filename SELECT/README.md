# SELECT Statement

The `SELECT` statement is used to retrieve data from one or more columns in a database table.

## Syntax

```sql
SELECT column1, column2
FROM table_name;
```

To retrieve all columns:

```sql
SELECT *
FROM table_name;
```

---

# Basic Examples

### Select specific columns

```sql
SELECT product_id, product_name
FROM Products;
```

### Select all columns

```sql
SELECT *
FROM Products;
```

### Select unique values

```sql
SELECT DISTINCT country
FROM Customers;
```

---

# Common Clauses Used with SELECT

## WHERE

Filters rows based on a condition.

```sql
SELECT *
FROM Products
WHERE price > 100;
```

---

## ORDER BY

Sorts the result.

```sql
SELECT *
FROM Products
ORDER BY price ASC;
```

```sql
SELECT *
FROM Products
ORDER BY price DESC;
```

---

## LIMIT (MySQL)

Returns only a specified number of rows.

```sql
SELECT *
FROM Products
LIMIT 5;
```

---

## Aliases

Rename columns in the output.

```sql
SELECT product_name AS Name
FROM Products;
```

---

# Important Keywords

- SELECT
- DISTINCT
- FROM
- WHERE
- ORDER BY
- LIMIT
- AS

---

# Notes

- `SELECT` retrieves data from a table.
- `SELECT *` returns all columns.
- Use `DISTINCT` to remove duplicate values.
- Use `WHERE` to filter rows.
- Use `ORDER BY` to sort results.
- Use `LIMIT` to restrict the number of rows returned.
- Aliases (`AS`) improve readability.

---

# Time Complexity

Without indexes:

- Time Complexity: **O(n)** (The database scans all rows.)

With indexes:

- Time Complexity: Approximately **O(log n)** for indexed searches (depends on the database engine and query optimizer).

---

# Problems Solved

| Problem No. | Problem Name | Difficulty |
|-------------|--------------|------------|
| 1757 | Recyclable and Low Fat Products | Easy |
| ... | More problems coming soon... | |

---

Happy Learning! 🚀
