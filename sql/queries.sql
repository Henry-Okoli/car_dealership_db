-- =====================================================
-- which model brings in the most revenue, and how many units did it sell?
-- ======================================================


SELECT 
    m.model_name, 
    ma.name AS manufacturer,
    COUNT(s.sale_id) AS units_sold,
    SUM(s.sale_price) AS Total_revenue
FROM sales s 
JOIN vehicles v ON s.vin = v.vin
JOIN models m ON v.model_id = m.model_id
JOIN manufacturers ma ON m.manufacturer_id = ma.manufacturer_id
GROUP BY m.model_id, m.model_name, ma.name
ORDER BY Total_revenue DESC;



