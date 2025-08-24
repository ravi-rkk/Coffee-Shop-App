-- Create the database
CREATE DATABASE coffe;
USE coffe;

-- NOTE: The 'admin' and 'users' tables are REMOVED.
-- Django's built-in auth_user table will handle this securely.
-- You will create users and admins through the Django admin panel or API.

CREATE TABLE products (
    ProductId INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    ImageURL VARCHAR(255),
    AddedBy INT,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE cart (
    CartId INT AUTO_INCREMENT PRIMARY KEY,
     UserId INT NOT NULL,
    ProductId INT NOT NULL,
    Quantity INT NOT NULL,
    FOREIGN KEY (ProductId) REFERENCES products(ProductId) ON DELETE CASCADE
);

CREATE TABLE orders (
    OrderId INT AUTO_INCREMENT PRIMARY KEY,
    UserId INT NOT NULL,
    TotalAmount DECIMAL(10, 2) NOT NULL,
    Status VARCHAR(50) DEFAULT 'Pending',
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE order_items (
    OrderItemId INT AUTO_INCREMENT PRIMARY KEY,
    OrderId INT NOT NULL,
    ProductId INT NOT NULL,
    Quantity INT NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
  
    FOREIGN KEY (OrderId) REFERENCES orders(OrderId) ON DELETE CASCADE,
   
    FOREIGN KEY (ProductId) REFERENCES products(ProductId) ON DELETE CASCADE
);

INSERT INTO products (ProductName, Price, ImageURL, AddedBy) VALUES
('Cappuccino', 3.50, 'cappuccino.jpg', 1), -- Added by the first admin you create in Django
('Espresso', 2.00, 'espresso.jpg', 1),
('Latte', 4.00, 'latte.jpg', 1),
('Mocha', 4.50, 'mocha.jpg', 1);