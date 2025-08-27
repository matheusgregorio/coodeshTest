SELECT c.customer_id, c.first_name, c.last_name, c.email
FROM dbo.customers AS c
LEFT JOIN dbo.orders AS o
  ON o.customer_id = c.customer_id
WHERE o.order_id IS NULL
ORDER BY c.customer_id;
