# 🔹 Sorting and Grouping in SQL

## 📖 Overview

Sorting and Grouping are essential SQL operations used to organize and summarize data.

* **Sorting (`ORDER BY`)** arranges query results in ascending or descending order.
* **Grouping (`GROUP BY`)** combines rows with the same values into summary groups, often used with aggregate functions.

---

## 📚 Concepts Covered

### 🔹 ORDER BY

Used to sort the result set.

**Syntax**

```sql
SELECT column_name
FROM table_name
ORDER BY column_name ASC;
```

* `ASC` → Ascending order (default)
* `DESC` → Descending order

Example:

```sql
SELECT name, salary
FROM Employee
ORDER BY salary DESC;
```

---

### 🔹 GROUP BY

Used to group rows that have the same values.

**Syntax**

```sql
SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name;
```

Example:

```sql
SELECT department, COUNT(*)
FROM Employee
GROUP BY department;
```

---

### 🔹 Aggregate Functions

Common functions used with `GROUP BY`:

* `COUNT()`
* `SUM()`
* `AVG()`
* `MIN()`
* `MAX()`

Example:

```sql
SELECT department,
       AVG(salary)
FROM Employee
GROUP BY department;
```

---

### 🔹 HAVING

Filters grouped results after aggregation.

Example:

```sql
SELECT department,
       COUNT(*)
FROM Employee
GROUP BY department
HAVING COUNT(*) > 5;
```

Difference:

* `WHERE` → Filters rows before grouping.
* `HAVING` → Filters groups after grouping.

---

## 💡 Key Points

* `ORDER BY` is usually written at the end of the query.
* Multiple columns can be used in `ORDER BY`.
* Every non-aggregated column in the `SELECT` clause must appear in the `GROUP BY` clause.
* `WHERE` is executed before `GROUP BY`.
* `HAVING` is executed after `GROUP BY`.
* Aggregate functions cannot be used in the `WHERE` clause.

---

## 📝 Problems Solved

* Sort data in ascending and descending order.
* Group records using `GROUP BY`.
* Apply aggregate functions.
* Filter grouped data using `HAVING`.
* Combine `GROUP BY` with `JOIN`.
* Solve SQL interview and LeetCode problems involving aggregation.

---

## 🎯 Learning Outcome

After completing this section, I can:

* Sort query results efficiently.
* Summarize data using aggregate functions.
* Group records correctly.
* Understand the execution order of SQL queries.
* Write optimized queries involving `GROUP BY`, `HAVING`, and `ORDER BY`.
