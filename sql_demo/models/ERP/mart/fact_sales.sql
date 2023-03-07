select 
	  h.[SalesOrderID]
      ,[OrderDate]
      ,[DueDate]
      ,[ShipDate]
      ,[Status]
      ,[OnlineOrderFlag]
      ,[SalesOrderNumber]
      ,[PurchaseOrderNumber]
      ,[AccountNumber]
      ,[CustomerID]
	  ,[OrderQty]
      ,[ProductID]
      ,[UnitPrice]
      ,[UnitPriceDiscount]
      ,[LineTotal]
      ,h.[ModifiedDate]
from {{ref( 'stg_sales_header')}} h
join {{ref( 'stg_sales_detail')}} d
	on d.SalesOrderID = h.SalesOrderID