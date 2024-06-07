-- Receita por categoria de produto
SELECT Category, SUM(Amount) AS TotalRevenue
FROM Amazon_Sale_Report
GROUP BY Category
ORDER BY TotalRevenue DESC;

-- Produtos com estoque baixo
-- Este exemplo assume que há uma tabela Products com uma coluna Stock
SELECT ProductName, Stock
FROM Products
WHERE Stock < 10;
