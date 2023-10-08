CREATE TABLE IF NOT EXISTS users (
                                     user_id INTEGER PRIMARY KEY,
                                     username VARCHAR(50) NOT NULL,
                                     email VARCHAR(100) NOT NULL,
                                     password VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS products (
                                        product_id INTEGER PRIMARY KEY,
                                        name VARCHAR(255) NOT NULL,
                                        description TEXT,
                                        price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE IF NOT EXISTS orders (
                                      order_id INTEGER PRIMARY KEY,
                                      user_id INTEGER NOT NULL,
                                      order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                      total_amount DECIMAL(10, 2) NOT NULL,
                                      FOREIGN KEY (user_id) REFERENCES users(user_id)
);
