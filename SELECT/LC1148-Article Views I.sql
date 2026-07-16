-- Problem: Article Views I
-- Platform: LeetCode
-- Difficulty: Easy
-- Topic: SELECT
-- Time Complexity: O(n) (without indexes)
-- Space Complexity: O(1)

SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id asc;
