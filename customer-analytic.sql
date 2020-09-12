#Customers Transactions per Year

#DQLab Store wants to know the number of customers who transact every year from 2009 to 2012.

SELECT YEAR(order_date) as years, COUNT(DISTINCT customer) as number_of_customer
FROM dqlab_sales_store
WHERE order_status = 'Order Finished'
GROUP BY YEAR(order_date);

#Output
+-------+--------------------+
| years | number_of_customer |
+-------+--------------------+
|  2009 |                585 |
|  2010 |                593 |
|  2011 |                581 |
|  2012 |                594 |
+-------+--------------------+ 
