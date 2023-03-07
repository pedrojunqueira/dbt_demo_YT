SELECT  [SalesOrderID]
		, sum(LineTotal) as TtlLine
FROM {{ ref('fact_sales') }}
group by [SalesOrderID]
having sum(LineTotal) < 0