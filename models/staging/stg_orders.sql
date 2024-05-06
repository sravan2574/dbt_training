select o.orderid ,p.productid,c.customerid,o.ordersellingprice-o.ordercostprice as orderprofit 
from {{ ref('raw_orders') }} as o 
left join {{ ref('raw_customer') }} as c
on c.customerid=o.customerid
left join 
{{ ref('raw_products') }} as p
on p.productid=o.productid

