SELECT  [SalesOrderID]
		, sum(LineTotal) as TtlLine
FROM [dbt_pjunqueira].[fact_sales]
group by [SalesOrderID]
having sum(LineTotal) < 0