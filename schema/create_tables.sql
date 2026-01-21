-- Users table
CREATE TABLE users (
    user_id VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(150),
    gender VARCHAR(20),
    city VARCHAR(50),
    signup_date DATE
);

-- Products table
CREATE TABLE products (
    product_id VARCHAR(20) PRIMARY KEY,
    product_name VARCHAR(200),
    category VARCHAR(100),
    brand VARCHAR(100),
    price NUMERIC(10,2),
    rating NUMERIC(3,2)
);

-- Orders table
CREATE TABLE orders (
    order_id VARCHAR(20) PRIMARY KEY,
    user_id VARCHAR(20),
    order_date DATE,
    order_status VARCHAR(50),
    total_amount NUMERIC(10,2),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Order Items table
CREATE TABLE order_items (
    order_item_id VARCHAR(20) PRIMARY KEY,
    order_id VARCHAR(20),
    product_id VARCHAR(20),
    user_id VARCHAR(20),
    quantity INT,
    item_price NUMERIC(10,2),
    item_total NUMERIC(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Events table
CREATE TABLE events (
    event_id INT PRIMARY KEY,
    user_id INT,
    product_id INT,
    event_type VARCHAR(50),
    event_timestamp TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Reviews table
CREATE TABLE reviews (
    review_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    user_id INT,
    rating NUMERIC(3,2),
    review_text TEXT,
    review_date DATE,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
