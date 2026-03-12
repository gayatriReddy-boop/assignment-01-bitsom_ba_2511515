## Anomaly Analysis

### Insert Anomaly
In the current dataset, a new product cannot be added unless an order is placed for it.  
For example, if the company wants to add a new product such as **P009 Tablet**, there is no place to store it unless a new order row is created with an order_id and customer details.

Example columns involved:
product_id, product_name, category, unit_price

### Update Anomaly
Customer information appears repeatedly in many rows. If a customer changes their email or city, every row must be updated.

Example:
Customer **C002 – Priya Sharma** appears in many rows with:
customer_email = priya@gmail.com  
customer_city = Delhi

If Priya changes her email, every row containing her information must be updated. Missing one row causes inconsistent data.

Columns involved:
customer_name, customer_email, customer_city

### Delete Anomaly
If an order is deleted, product or customer information may also be lost.

Example:
If the only order containing **P008 Webcam** is deleted, information about that product would disappear from the dataset.

Columns involved:
product_id, product_name, category
