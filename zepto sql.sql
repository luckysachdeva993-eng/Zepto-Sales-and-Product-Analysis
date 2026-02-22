-- Table creation and schema setup 
create table zepto_data(
category VARCHAR(100),
name_of_product VARCHAR(120) NOT NULL,
mrp NUMERIC(10,2),
discount_percent NUMERIC(5,2),
available_quantity INTEGER,
discounted_selling_price NUMERIC(10,2),
weight_in_gms INTEGER,
out_of_stock BOOLEAN,
quantity INTEGER );

-- Data Exploration 
select count(*) from zepto_data;
select * from zepto_data limit 10;

--Null values 
select * from zepto_data  
where name_of_product is null
or 
category is null
or 
mrp is null
or 
available_quantity is null
or 
discounted_selling_price is null
or 
weight_in_gms is null
or
out_of_stock is null
or 
quantity is null;

-- different product categories present in dataset 
select distinct category from zepto_data
order by category;

-- instock and outstock products 
select out_of_stock, count(*)
from zepto_data 
group by out_of_stock;

-- check for product names present more than once in dataset 
select name_of_product, count(*) as number_of_products
from zepto_data
group by name_of_product
having count(*)>1
order by count(*) desc ;

--data cleaning 

--check for products where price might be zero 
select * from zepto_data 
where mrp = 0 or discounted_selling_price = 0  ;

delete from zepto_data 
where mrp = 0 or discounted_selling_price = 0  ;

--update paise to rupees 
update zepto_data
set mrp = mrp /100.0,
discounted_selling_price = discounted_selling_price/100.0;

select mrp, discounted_selling_price from zepto_data;

-- Business Insight Queries

-- Q1. Find the top 10 best-value products based on the discount percentage.
select name_of_product,mrp,discount_percent
from zepto_data 
order by discount_percent desc 
limit 10;

--Q2.What are the Products with High MRP but Out of Stock
select distinct name_of_product,mrp
from zepto_data
where mrp>300 and out_of_stock=true
order by mrp desc ;

--Q3.Calculate Estimated Revenue for each category
select category,
sum(discounted_selling_price * available_quantity)as total_revenue 
from zepto_data
group by category 
order by total_revenue desc ;

-- Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%.
select distinct  name_of_product, mrp, discount_percent 
from zepto_data
where mrp>500 and discount_percent <10
order by mrp desc, discount_percent desc;

-- Q5. Identify the top 5 categories offering the highest average discount percentage.
select category, 
round(avg(discount_percent)) as avg_discount
from zepto_data
group by category
order by avg_discount desc
limit 5;

-- Q6. Find the price per gram for products above 100g and sort by best value.
select distinct name_of_product, weight_in_gms, discounted_selling_price ,
round(discounted_selling_price/weight_in_gms,2) as price_per_gms 
from zepto_data
where weight_in_gms>=100
order by price_per_gms desc;

--Q7.Group the products into categories like Low, Medium, Bulk.
select distinct name_of_product, weight_in_gms,
case when weight_in_gms<1000 then 'LOW'
     when weight_in_gms < 5000 then 'MEDIUM'
	 else 'BULK'
	 end as weight_category
	 from zepto_data;
	 
--Q8.What is the Total Inventory Weight Per Category 
select category, 
sum(weight_in_gms*available_quantity) as total_weight 
from zepto_data
group by category
order by total_weight desc;









