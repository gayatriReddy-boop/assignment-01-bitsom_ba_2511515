-- Customers Table
CREATE TABLE customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_email VARCHAR(100) NOT NULL,
    customer_city VARCHAR(50) NOT NULL
);

-- Products Table
CREATE TABLE products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    unit_price DECIMAL(10,2) NOT NULL
);

-- Sales Representatives
CREATE TABLE sales_reps (
    sales_rep_id VARCHAR(10) PRIMARY KEY,
    sales_rep_name VARCHAR(100) NOT NULL,
    sales_rep_email VARCHAR(100),
    office_address TEXT
);

-- Orders Table
CREATE TABLE orders (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10),
    sales_rep_id VARCHAR(10),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (sales_rep_id) REFERENCES sales_reps(sales_rep_id)
);

-- Order Items Table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Sample data inserts (5 rows)

INSERT INTO customers VALUES
('C001','Rohan Mehta','rohan@gmail.com','Mumbai'),
('C002','Priya Sharma','priya@gmail.com','Delhi'),
('C003','Amit Verma','amit@gmail.com','Bangalore'),
('C004','Sneha Iyer','sneha@gmail.com','Chennai'),
('C005','Vikram Singh','vikram@gmail.com','Mumbai');

INSERT INTO products VALUES
('P001','Laptop','Electronics',55000),
('P002','Mouse','Electronics',800),
('P003','Desk Chair','Furniture',8500),
('P004','Notebook','Stationery',120),
('P005','Headphones','Electronics',3200);

INSERT INTO sales_reps VALUES
('SR01','Deepak Joshi','deepak@corp.com','Mumbai HQ, Nariman Point'),
('SR02','Anita Desai','anita@corp.com','Delhi Office, Connaught Place'),
('SR03','Ravi Kumar','ravi@corp.com','South Zone, MG Road');

INSERT INTO orders VALUES
('ORD1027','C002','SR02','2023-11-02'),
('ORD1114','C001','SR01','2023-08-06'),
('ORD1153','C006','SR01','2023-02-14'),
('ORD1002','C002','SR02','2023-01-17'),
('ORD1118','C006','SR02','2023-11-10');

INSERT INTO order_items VALUES
(1,'ORD1027','P004',4),
(2,'ORD1114','P007',2),
(3,'ORD1153','P007',3),
(4,'ORD1002','P005',1),
(5,'ORD1118','P007',5);
