# Advanced String Functions, Regular Expressions & Clauses

This section covers advanced SQL techniques used for **string manipulation, pattern matching, filtering, and conditional data processing**.

These concepts are useful when working with real-world datasets where values need to be cleaned, extracted, transformed, or filtered based on specific patterns.

---

## 1. Advanced String Functions

String functions are used to manipulate and analyze text values.

### Common Functions

| Function      | Purpose                         | Example                              |
| ------------- | ------------------------------- | ------------------------------------ |
| `CONCAT()`    | Joins strings                   | `CONCAT(first_name, ' ', last_name)` |
| `LENGTH()`    | Returns string length           | `LENGTH(name)`                       |
| `LOWER()`     | Converts to lowercase           | `LOWER(name)`                        |
| `UPPER()`     | Converts to uppercase           | `UPPER(name)`                        |
| `TRIM()`      | Removes leading/trailing spaces | `TRIM(name)`                         |
| `LTRIM()`     | Removes left-side spaces        | `LTRIM(name)`                        |
| `RTRIM()`     | Removes right-side spaces       | `RTRIM(name)`                        |
| `SUBSTRING()` | Extracts part of a string       | `SUBSTRING(name, 1, 3)`              |
| `LEFT()`      | Gets characters from the left   | `LEFT(name, 3)`                      |
| `RIGHT()`     | Gets characters from the right  | `RIGHT(name, 3)`                     |
| `REPLACE()`   | Replaces part of a string       | `REPLACE(name, 'a', 'x')`            |
| `REVERSE()`   | Reverses a string               | `REVERSE(name)`                      |
| `LOCATE()`    | Finds position of a substring   | `LOCATE('@', email)`                 |

### Example

```sql
SELECT 
    name,
    UPPER(name) AS uppercase_name,
    LENGTH(name) AS name_length,
    SUBSTRING(name, 1, 3) AS first_three_characters
FROM Employee;
```

---

# 2. Pattern Matching with `LIKE`

`LIKE` is used to search for a specific pattern in a string.

### Wildcards

* `%` → Matches **zero or more characters**
* `_` → Matches **exactly one character**

### Examples

```sql
-- Names starting with A
SELECT *
FROM Employee
WHERE name LIKE 'A%';
```

```sql
-- Names ending with n
SELECT *
FROM Employee
WHERE name LIKE '%n';
```

```sql
-- Names containing "an"
SELECT *
FROM Employee
WHERE name LIKE '%an%';
```

```sql
-- Names where the second character is 'a'
SELECT *
FROM Employee
WHERE name LIKE '_a%';
```

---

# 3. Regular Expressions (REGEXP)

Regular expressions provide more powerful pattern matching than `LIKE`.

In MySQL, `REGEXP` / `REGEXP_LIKE()` can be used to match patterns.

### Basic Patterns

| Pattern | Meaning                  |
| ------- | ------------------------ |
| `^`     | Starts with              |
| `$`     | Ends with                |
| `.`     | Any single character     |
| `[abc]` | Matches a, b, or c       |
| `[a-z]` | Any lowercase letter     |
| `[0-9]` | Any digit                |
| `+`     | One or more occurrences  |
| `*`     | Zero or more occurrences |
| `?`     | Zero or one occurrence   |

### Examples

```sql
-- Starts with A
SELECT *
FROM Employee
WHERE name REGEXP '^A';
```

```sql
-- Ends with n
SELECT *
FROM Employee
WHERE name REGEXP 'n$';
```

```sql
-- Contains a digit
SELECT *
FROM Employee
WHERE name REGEXP '[0-9]';
```

```sql
-- Contains only digits
SELECT *
FROM Employee
WHERE phone REGEXP '^[0-9]+$';
```

---

# 4. `CASE` Expression

`CASE` is used to implement conditional logic inside SQL queries.

### Syntax

```sql
CASE
    WHEN condition THEN result
    WHEN condition THEN result
    ELSE result
END
```

### Example

```sql
SELECT
    name,
    salary,
    CASE
        WHEN salary >= 100000 THEN 'High'
        WHEN salary >= 50000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_category
FROM Employee;
```

`CASE` is especially useful for **categorizing data** and creating derived columns.

---

# 5. `COALESCE()`

`COALESCE()` returns the first non-`NULL` value.

```sql
SELECT COALESCE(phone, 'Not Available') AS phone
FROM Employee;
```

If `phone` is `NULL`, the query returns `'Not Available'`.

It is useful for **handling missing values**.

---

# 6. `NULLIF()`

`NULLIF()` returns `NULL` when two values are equal.

```sql
SELECT NULLIF(score, 0)
FROM Student;
```

If `score = 0`, the result is `NULL`.

A common use is preventing **division-by-zero errors**:

```sql
SELECT sales / NULLIF(quantity, 0)
FROM Orders;
```

---

# 7. Important Clauses

### `DISTINCT`

Removes duplicate values.

```sql
SELECT DISTINCT department_id
FROM Employee;
```

---

### `LIMIT`

Restricts the number of rows returned.

```sql
SELECT *
FROM Employee
LIMIT 5;
```

---

### `OFFSET`

Skips a specified number of rows.

```sql
SELECT *
FROM Employee
LIMIT 5 OFFSET 10;
```

This is commonly used for **pagination**.

---

### `HAVING`

Filters groups after aggregation.

```sql
SELECT department_id, COUNT(*) AS employee_count
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 5;
```

### Important Difference

```text
WHERE  → filters rows before GROUP BY
HAVING → filters groups after GROUP BY
```

---

# 8. Logical SQL Query Order

Although SQL is written in a particular order, the database logically processes the clauses approximately like this:

```text
FROM
  ↓
JOIN
  ↓
WHERE
  ↓
GROUP BY
  ↓
HAVING
  ↓
SELECT
  ↓
DISTINCT
  ↓
ORDER BY
  ↓
LIMIT
```

Understanding this order helps explain why certain clauses cannot be used in certain places.

---

# Key Takeaways

* Use **string functions** to manipulate and transform text.
* Use `LIKE` for simple pattern matching.
* Use **REGEXP** when the pattern is more complex.
* Use `CASE` for conditional logic and categorization.
* Use `COALESCE()` to handle `NULL` values.
* Use `NULLIF()` when a value should become `NULL` under a condition.
* Use `WHERE` to filter individual rows.
* Use `HAVING` to filter aggregated groups.
* Use `DISTINCT` to remove duplicates.
* Use `LIMIT` and `OFFSET` for restricting and paginating results.
* Remember the **logical order of SQL execution** when constructing complex queries.

---

## Practice Focus

When solving SQL problems involving these topics, look for patterns such as:

```text
String manipulation
       ↓
LIKE / REGEXP
       ↓
Filtering
       ↓
CASE / conditional logic
       ↓
GROUP BY + HAVING
       ↓
ORDER BY + LIMIT
```

These concepts are particularly useful for solving **real-world data-cleaning and filtering problems** as well as intermediate/advanced SQL interview questions.
