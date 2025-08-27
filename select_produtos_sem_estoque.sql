SELECT p.product_id, p.product_name
FROM dbo.products AS p
LEFT JOIN dbo.stocks AS s
  ON s.product_id = p.product_id
 AND s.quantity > 0
WHERE s.product_id IS NULL
ORDER BY p.product_id;
