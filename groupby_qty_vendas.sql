SELECT st.store_id,
       st.store_name,
       b.brand_name,
       SUM(oi.quantity) AS units_sold
FROM dbo.orders      AS o
JOIN dbo.order_items AS oi ON oi.order_id   = o.order_id
JOIN dbo.products    AS p  ON p.product_id  = oi.product_id
JOIN dbo.brands      AS b  ON b.brand_id    = p.brand_id
JOIN dbo.stores      AS st ON st.store_id   = o.store_id
GROUP BY st.store_id, st.store_name, b.brand_name
ORDER BY st.store_name, b.brand_name;
