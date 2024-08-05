select CurrentName,SUM(ISNULL(Debt,0)) AS 'TotalDebt',SUM(ISNULL(Credit,0)) as 'TotalCredit' from AccountMovements as am inner join CurrentCards as c on  c.CurrentCode=am.CurrentCode where MONTH(DATEADD(MONTH,0,am.MovementDate)) = MONTH(DATEADD(MONTH,+1,GETDATE())) group by am.CurrentCode,CurrentName ORDER BY TotalCredit DESC

/* GELECEK AY CARÝ KARTLARA GÖRE GELÝR-GÝDER*/