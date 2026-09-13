import sqlite3

# Connect to (or create) a database file
conn = sqlite3.connect('data/practice.db')
cursor = conn.cursor()

# Create customers table
cursor.execute('''
CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    name TEXT,
    city TEXT
)
''')

# Create orders table
cursor.execute('''
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    product TEXT,
    amount REAL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
)
''')

# Insert sample customers
customers = [
    (1, 'Amit', 'Delhi'),
    (2, 'Priya', 'Mumbai'),
    (3, 'Rahul', 'Bangalore'),
    (4, 'Sneha', 'Chennai')
]
cursor.executemany('INSERT INTO customers VALUES (?,?,?)', customers)

# Insert sample orders
orders = [
    (1, 1, 'Laptop', 55000),
    (2, 1, 'Mouse', 500),
    (3, 2, 'Keyboard', 1200),
    (4, 3, 'Monitor', 8000),
    (5, 4, 'Laptop', 60000),
    (6, 2, 'Laptop', 58000)
]
cursor.executemany('INSERT INTO orders VALUES (?,?,?,?)', orders)

conn.commit()
conn.close()

print("Database created successfully!")