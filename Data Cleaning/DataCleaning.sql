select QuantityPerUnit,
CASE WHEN UnitsOnOrder > 50 and UnitsInStock < 20 THEN 'Restock Now' 
	 WHEN UnitsOnOrder between 30 and 50 and UnitsInStock < 20 THEN 'Restock Next Week'
	 WHEN UnitsOnOrder between 30 and 50 and UnitsInStock < 50 THEN 'Restock Next Month'
	 When UnitsOnOrder < 30 and UnitsInStock < 50 THEN 'Restock in 6 months'
	 ELSE 'Ask Manager'
End as WhenToRestock
from Products;

WITH blank_fax as(select CustomerID, ContactName, City, Region,
ISNULL(Fax, 'No Fax') as Fax
from customers
)
Select * from blank_fax
Where fax = 'No Fax';

WITH blank_region as(
Select CustomerID, ContactName, City,
ISNULL(Region, 'No Region') as Region
from customers)

Select *
from blank_region