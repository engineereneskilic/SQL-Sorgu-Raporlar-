select MovementDate as 'Tarih',ISNULL(sum(Debt),0) as  'TotalSumDebt', ISNULL(sum(Credit),0) as 'TotalSumCredit', (ISNULL(SUM(Debt),0) - ISNULL(SUM(Credit),0)) as 'TotalCostProfit'
from AccountMovements 
group by DAY(MovementDate),MovementDate

/* NOT: HOCAM Null deðerler lamda sorgularýnda 0 diye okunuyor uygulamamda sorun yok fakat sql sorgularýnda null ifadelerini 0' çeviriyorum */