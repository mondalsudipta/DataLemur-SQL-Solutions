SELECT 
  p1.page_id 
FROM 
  pages AS p1 
  LEFT JOIN page_likes as p2 ON p1.page_id = p2.page_id 
WHERE 
  p2.page_id is NULL;
