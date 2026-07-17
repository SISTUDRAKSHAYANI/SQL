# Basic Joins

This folder contains SQL JOIN problems that helped me understand how different types of joins work and when to use them.

## Concepts Covered

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- Finding unmatched records
- Handling NULL values
- GROUP BY with JOIN
- Counting records after JOIN

## Problems Solved

| # | Problem | Concept Learned |
|---|---------|-----------------|
| 1 | Replace Employee ID With The Unique Identifier | LEFT JOIN to preserve all employees even if no unique ID exists. |
| 2 | Product Sales Analysis I | INNER JOIN to combine matching rows from multiple tables. |
| 3 | Customer Who Visited but Did Not Make Any Transactions | LEFT JOIN + NULL check to find unmatched records. |
| 4 | Rising Temperature | Self Join to compare rows from the same table. |

## Key Takeaways

- Use **INNER JOIN** when only matching records are required.
- Use **LEFT JOIN** when all rows from the left table must be included.
- Use **RIGHT JOIN** when all rows from the right table must be included.
- Use **IS NULL** after a LEFT JOIN to find missing matches.
- Apply **GROUP BY** after JOIN when aggregation is required.

---
Learning SQL one query at a time.
