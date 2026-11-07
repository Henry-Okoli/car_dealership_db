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

--=======================================================
-- which rep sells the most, and how much does the average sale bring in as revenue?
--=======================================================

SELECT 
    sr.name AS sales_rep,
    COUNT(s.sale_id) AS cars_sold,
    SUM(s.sale_price) AS total_revenue,
    ROUND((AVG(s.sale_price)),2) AS avr_sale_price
FROM sales s
JOIN salesreps sr ON sr.rep_id = s. rep_id
GROUP BY sr.rep_id, sr.name
ORDER BY total_revenue DESC;


--========================================================
-- how many vehicles are available, reserved or sold, for each model
--========================================================

SELECT 
    m.model_name,
    v.status,
    COUNT(*) AS vehicle_count
FROM vehicles v
JOIN models m ON v.model_id = m.model_id
GROUP BY m.model_name, v.status
ORDER BY m.model_name, v.status;



--========================================================
--which vehicles sold for less than their listed price, and by how much?
--========================================================

SELECT
    v.vin,
    m.model_name,
    v.price AS listed_price,
    s.sale_price,
    (v.price - s.sale_price) AS discount_given

FROM sales s
JOIN vehicles v ON s.vin = v.vin 
JOIN models m ON v.model_id = m.model_id
WHERE s.sale_price < v.price
ORDER BY discount_given DESC;


--========================================================
-- which customers have bought more than once, and how much have they spent?
--========================================================


SELECT 
    c.name,
    COUNT(s.sale_id) AS purchases, 
    SUM(s.sale_price) AS total_spent
FROM sales s 
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY c.customer_id, c.name 
HAVING COUNT(s.sale_id) > 1
ORDER BY total_spent DESC;