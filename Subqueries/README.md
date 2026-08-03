# SQL Subqueries

## 📌 What is a Subquery?

A **subquery** is a query written inside another SQL query. It is enclosed within parentheses `()` and its result is used by the outer query.

Subqueries help solve complex problems by breaking them into smaller, easier-to-understand queries.

---

## 📚 Types of Subqueries

### 1. Single-Row Subquery

* Returns only one row.
* Used with operators like `=`, `>`, `<`, `>=`, `<=`.

**Example:**

```sql
SELECT name
FROM Employee
WHERE salary > (
    SELECT AVG(salary)
    FROM Employee
);
```

---

### 2. Multiple-Row Subquery

* Returns multiple rows.
* Used with `IN`, `ANY`, `ALL`, and `EXISTS`.

**Example:**

```sql
SELECT name
FROM Employee
WHERE department_id IN (
    SELECT department_id
    FROM Department
    WHERE location = 'Hyderabad'
);
```

---

### 3. Correlated Subquery

* Depends on the outer query.
* Executes once for every row processed by the outer query.

**Example:**

```sql
SELECT e1.name
FROM Employee e1
WHERE salary >
(
    SELECT AVG(salary)
    FROM Employee e2
    WHERE e1.department_id = e2.department_id
);
```

---

## 📌 Common Operators Used

| Operator     | Purpose                                      |
| ------------ | -------------------------------------------- |
| `IN`         | Matches any value returned by the subquery   |
| `NOT IN`     | Excludes values returned by the subquery     |
| `EXISTS`     | Checks whether the subquery returns any rows |
| `NOT EXISTS` | Checks whether the subquery returns no rows  |
| `ANY`        | Compares with any value returned             |
| `ALL`        | Compares with every value returned           |

---

## 🎯 Where Subqueries Can Be Used

* `SELECT`
* `FROM`
* `WHERE`
* `HAVING`
* `INSERT`
* `UPDATE`
* `DELETE`

---

## 💡 Advantages

* Makes complex queries easier to write.
* Improves readability by breaking problems into smaller parts.
* Eliminates the need for temporary tables in many cases.
* Useful for filtering, comparison, aggregation, and data analysis.

---

## ⚠️ Best Practices

* Use meaningful aliases for tables.
* Prefer `EXISTS` over `IN` when checking for the existence of rows in large datasets.
* Avoid unnecessary nested subqueries when a `JOIN` provides a simpler solution.
* Test the inner query separately before combining it with the outer query.
* Use indexes on frequently filtered columns to improve performance.

---

## 📝 Key Takeaways

* A subquery is a query inside another query.
* It can return a single value, multiple values, or be correlated with the outer query.
* Subqueries improve modularity and simplify complex SQL logic.
* Understanding when to use a subquery versus a `JOIN` is an important SQL skill.
