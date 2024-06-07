-- Exploração de dados na tabela Amazon_Sale_Report
SELECT * FROM Amazon_Sale_Report LIMIT 10;

-- Verificar duplicatas
SELECT OrderID, COUNT(*) 
FROM Amazon_Sale_Report 
GROUP BY OrderID 
HAVING COUNT(*) > 1;

-- Verificar valores nulos
SELECT COUNT(*) AS Null_Values
FROM Amazon_Sale_Report
WHERE OrderID IS NULL;

-- Estatísticas Descritivas
SELECT 
    AVG(Amount) AS Average_Amount,
    SUM(Amount) AS Total_Amount,
    MIN(Amount) AS Minimum_Amount,
    MAX(Amount) AS Maximum_Amount
FROM Amazon_Sale_Report;
