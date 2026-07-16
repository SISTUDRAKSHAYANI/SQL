-- Problem: Big Countries
-- Platform: LeetCode
-- Difficulty: Easy
-- Topic: SELECT
-- Time Complexity: O(n) (without indexes)
-- Space Complexity: O(1)

SELECT name,
       population,
       area
FROM World
WHERE area >= 3000000
   OR population >= 25000000;
