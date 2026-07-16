-- Problem: Find Customer Referee
-- Platform: LeetCode
-- Difficulty: Easy
-- Topic: SELECT
-- Time Complexity: O(n) (without indexes)
-- Space Complexity: O(1)

SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;
