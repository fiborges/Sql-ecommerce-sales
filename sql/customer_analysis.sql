-- Total de vendas por país
SELECT ship_country, SUM(Amount) AS TotalSales
FROM Amazon_Sale_Report
GROUP BY ship_country
ORDER BY TotalSales DESC;

-- Top 5 cidades por vendas
SELECT ship_city, SUM(Amount) AS TotalSales
FROM Amazon_Sale_Report
GROUP BY ship_city
ORDER BY TotalSales DESC
LIMIT 5;
