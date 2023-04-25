SELECT author, title
FROM book
WHERE 2 <= amount AND amount <= 14
ORDER BY author DESC, title;