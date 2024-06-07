-- Total de vendas por mês
SELECT DATE_TRUNC('month', Date) AS Month, SUM(Amount) AS TotalSales
FROM Amazon_Sale_Report
GROUP BY Month
ORDER BY Month;

-- Top 10 produtos mais vendidos
SELECT SKU, SUM(Qty) AS TotalQuantity
FROM Amazon_Sale_Report
GROUP BY SKU
ORDER BY TotalQuantity DESC
LIMIT 10;
