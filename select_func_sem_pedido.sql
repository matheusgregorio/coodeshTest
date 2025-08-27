SELECT s.staff_id, s.first_name, s.last_name, s.email
FROM dbo.staffs AS s
LEFT JOIN dbo.orders AS o
  ON o.staff_id = s.staff_id
WHERE o.order_id IS NULL
ORDER BY s.staff_id;
