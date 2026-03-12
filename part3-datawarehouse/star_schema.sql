-- Dimension Table: Date
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    month INT,
    year INT
);

-- Dimension Table: Store
CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    store_city VARCHAR(50)
);

-- Dimension Table: Product
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- Fact Table
CREATE TABLE fact_sales (
    sales_id INT PRIMARY KEY,
    date_id INT,
    store_id INT,
    product_id INT,
    units_sold INT,
    unit_price DECIMAL(10,2),
    total_sales DECIMAL(12,2),

    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);


-- Insert cleaned sample dimension data

INSERT INTO dim_date VALUES
(1,'2023-01-15',1,2023),
(2,'2023-02-20',2,2023),
(3,'2023-03-10',3,2023),
(4,'2023-04-05',4,2023),
(5,'2023-05-18',5,2023);

INSERT INTO dim_store VALUES
(1,'Chennai Anna','Chennai'),
(2,'Delhi South','Delhi'),
(3,'Bangalore MG','Bangalore'),
(4,'Mumbai Central','Mumbai'),
(5,'Pune FC Road','Pune');

INSERT INTO dim_product VALUES
(1,'Phone','Electronics'),
(2,'Laptop','Electronics'),
(3,'Jeans','Clothing'),
(4,'Rice 5kg','Grocery'),
(5,'Smartwatch','Electronics');

-- Insert fact table data (cleaned)

INSERT INTO fact_sales VALUES
(1,1,1,1,10,48703.39,487033.90),
(2,2,2,2,5,42343.15,211715.75),
(3,3,3,3,8,2317.47,18539.76),
(4,4,4,4,12,52195.05,626340.60),
(5,5,5,5,6,58851.01,353106.06),
(6,1,2,1,7,48703.39,340923.73),
(7,2,3,2,4,42343.15,169372.60),
(8,3,4,3,9,2317.47,20857.23),
(9,4,5,4,3,52195.05,156585.15),
(10,5,1,5,11,58851.01,647361.11);
