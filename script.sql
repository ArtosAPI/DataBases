use electronics_store;
-- 1 select products.name as product, categories.name as category from products, categories where products.category_id = categories.category_id; 
-- 2 select orders.*, customers.first_name as customer from orders, customers where customers.customer_id = customers.customer_id;
-- 3 select orders.order_id, customers.first_name from orders join customers on orders.customer_id = customers.customer_id where customers.email = "john.doe@example.com";
-- 4 select categories.name as Category_name, products.name as Product_name from categories join products on categories.category_id = products.category_id;
-- 5 select order_items.order_item_id, products.name from order_items join products on order_items.product_id = products.product_id;
-- 6 select order_items.quantity, order_items.price, products.name from order_items join products on order_items.product_id = products.product_id;
-- 7 select customers.first_name, orders.total from customers join orders on customers.customer_id = orders.customer_id;
-- 8 select order_items.quantity, products.name from order_items join products on order_items.product_id = products.product_id where order_items.quantity > 1;
-- 9 select orders.order_date, customers.first_name as customer from orders join customers on customers.customer_id = customers.customer_id where order_date like "2024-08%";
-- 10 select categories.name, orders.total, products.name as Product_name from categories join products on categories.category_id = products.category_id join order_items on order_items.product_id = products.product_id join orders on orders.order_id = order_items.order_id;
-- 11 select customers.first_name, orders.status from customers join orders on customers.customer_id = orders.customer_id where orders.status = "Shipped";
-- 12 select products.name, order_items.price from products join order_items on products.product_id = order_items.product_id;
-- 13 select products.name, orders.order_id, order_items.order_item_id from products join order_items on products.product_id = order_items.product_id join orders on order_items.order_id = orders.order_id;
-- 14 select categories.name, orders.total from products join categories on products.category_id = categories.category_id join order_items on order_items.product_id = products.product_id join orders on order_items.order_id = orders.order_id;
-- 15 select customers.first_name, orders.total from customers join orders on customers.customer_id = orders.customer_id where orders.total > 1000;
-- 16 select products.name, categories.name from products join categories on products.category_id = categories.category_id order by products.price;
-- 17 select orders.order_id, order_items.quantity, order_items.price from orders join order_items on orders.order_id = order_items.order_id;
-- 18 select orders.order_id, customers.* from orders join customers on orders.customer_id = customers.customer_id order by orders.order_date;
-- 19 SELECT orders.order_id, products.name, customers.first_name FROM orders JOIN order_items ON orders.order_id = order_items.order_id JOIN products ON products.product_id = order_items.product_id JOIN customers ON orders.customer_id = customers.customer_id WHERE customers.email = 'jane.smith@example.com';
-- 20 
select categories.name, orders.total from products join categories on products.category_id = categories.category_id join order_items on order_items.product_id = products.product_id join orders on order_items.order_id = orders.order_id;
-- 21 select * from orders where status = 'Delivered';
-- 22 select * from products order by price;
-- 23 select * from order_items order by price > 500;
-- 24 select * from customers where first_name like 'S%';
-- 25 select * from products where quantity > 10;
-- 26 select * from orders where total = '2399.99';
-- 27 select * from products where created_at > '2024-08-01';
-- 28 select * from orders where status = 'Processing' and total < '1000';
-- 29 select * from customers where first_name = '';
-- 30 select * from products where name like '%TV%';
 