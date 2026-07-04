USE AdventureWorksDW2025;
GO

SELECT type_desc, 
       count(*) AS CNT
FROM sys.objects
GROUP BY type_desc
ORDER BY 2 DESC;