# Write your MySQL query statement below
select distinct p.product_id,p.product_name from Product p
join Sales s on
p.product_id = s.product_id
where p.product_id not in 
(select product_id from Sales where sale_date not between '2019-01-01' and '2019-03-31')
