-- Problem: Invalid Tweets
-- Platform: LeetCode
-- Difficulty: Easy
-- Topic: SELECT
-- Time Complexity: O(n) (without indexes)
-- Space Complexity: O(1)

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;
