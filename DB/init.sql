CREATE TABLE IF NOT EXISTS products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  category VARCHAR(50),
  price NUMERIC(10,2)
);

INSERT INTO products (name, category, price) VALUES
  ('Laptop Pro 15', 'Electronics', 1299.99),
  ('Wireless Mouse', 'Electronics', 29.99),
  ('Coffee Mug', 'Kitchen', 12.50),
  ('Notebook Set', 'Stationery', 8.99),
  ('Standing Desk', 'Furniture', 349.00),
  ('USB Hub 7-Port', 'Electronics', 39.99),
  ('Water Bottle', 'Sports', 24.99),
  ('Headphones', 'Electronics', 89.99)
ON CONFLICT (id) DO NOTHING;