-- This query sorts and filters data from the dataset bigquery-samples.wikipedia_benchmark.Wiki10B, 
-- which is a sample from the Wikipedia public dataset that contains 10 billion rows.
SELECT
  language,
  title,
  SUM(views) AS views
FROM
  `bigquery-samples.wikipedia_benchmark.Wiki100B`
WHERE
  title LIKE '%Google%'
GROUP BY
  language,
  title
ORDER BY
  views DESC;
