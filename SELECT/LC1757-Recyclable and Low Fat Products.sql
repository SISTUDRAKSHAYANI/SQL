-- Problem: Recyclable and Low Fat Products
-- Platform: LeetCode
-- Difficulty: Easy
-- Topic: SELECT
-- Time Complexity: O(n) (without indexes)
-- Space Complexity: O(1)

SELECT product_id
FROM Products
WHERE low_fats = 'Y'
  AND recyclable = 'Y';
