select  TOP 3 StockName as 'StockName',IncomingAmount as 'IncominAmount',StockMainUnitType as 'StockMainUnitType',TotalAmount as 'TotalAmount'  from StockMovements as sm 
INNER JOIN Stock AS s ON s.StockCode=sm.StockCode 
where   MONTH(DATEADD(MONTH,0,ProcessDate)) = MONTH(DATEADD(MONTH,0,GETDATE())) 
ORDER BY sm.IncomingAmount DESC


/* bu ay hangi üründen kaç tane alýnmýþ toplam ne kadar tutmuþ */