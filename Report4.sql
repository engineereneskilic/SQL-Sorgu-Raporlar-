select  top 4 MONTH(ProcessDate) as 'DateOfMonth',SUM(ISNULL(sm.Yield,0)) as 'Yield', SUM(TotalAmount) as 'TotalAmount',s.StockName from StockMovements as sm inner join Stock as  s on s.StockCode=sm.StockCode where  MONTH(DATEADD(MONTH, +3, GETDATE())) >= MONTH(sm.ProcessDate) group by MONTH(sm.ProcessDate),s.StockName ORDER BY TotalAmount DESC, DateOfMonth ASC


/* Gelecek 3 ay tahminen en �ok kazand�racak 2 �r�n kazand�raca�� para*/

/* Hocam burada distinct �al��t�ramad�m bununla beraber limit yada top da �al��mad�*/