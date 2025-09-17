import random
import pandas as pd
from faker import Faker
import sqlalchemy

fake = Faker()
#DB_URI = "mysql+pymysql://root:password@localhost/food_delivery"
engine = sqlalchemy.create_engine(DB_URI)

# Customers
customers = []
cities = ["Delhi", "Mumbai", "Bangalore", "Hyderabad", "Chennai"]
for _ in range(5000):
    customers.append({
        "name": fake.name(),
        "city": random.choice(cities),
        "signup_date": fake.date_between(start_date="-3y", end_date="today")
    })
pd.DataFrame(customers).to_sql("Customers", engine, if_exists="append", index=False)

# Restaurants
restaurants = []
cuisines = ["Indian", "Chinese", "Italian", "Mexican", "Fast Food"]
for _ in range(200):
    restaurants.append({
        "name": fake.company() + " Foods",
        "cuisine": random.choice(cuisines),
        "city": random.choice(cities)
    })
df_restaurants = pd.DataFrame(restaurants)
df_restaurants.to_sql("Restaurants", engine, if_exists="append", index=False)

# Menu
menu = []
for rid in range(1, len(df_restaurants) + 1):
    for _ in range(random.randint(5, 15)):
        menu.append({
            "restaurant_id": rid,
            "item_name": fake.word().capitalize() + " Dish",
            "price": round(random.uniform(100, 800), 2)
        })
df_menu = pd.DataFrame(menu)
df_menu.to_sql("Menu", engine, if_exists="append", index=False)

# Orders + Order_Items
orders, order_items = [], []
for oid in range(20000):
    cust_id = random.randint(1, len(customers))
    rest_id = random.randint(1, len(df_restaurants))
    order_date = fake.date_between(start_date="-2y", end_date="today")
    num_items = random.randint(1, 5)
    total = 0
    for _ in range(num_items):
        menu_id = random.randint(1, len(df_menu))
        qty = random.randint(1, 3)
        price = df_menu.iloc[menu_id - 1]["price"]
        total += qty * price
        order_items.append({
            "order_id": oid + 1,
            "menu_id": menu_id,
            "quantity": qty,
            "unit_price": price
        })
    orders.append({
        "order_id": oid + 1,
        "customer_id": cust_id,
        "restaurant_id": rest_id,
        "order_date": order_date,
        "total_amount": round(total, 2)
    })

pd.DataFrame(orders).to_sql("Orders", engine, if_exists="append", index=False)
pd.DataFrame(order_items).to_sql("Order_Items", engine, if_exists="append", index=False)

print("Data generated successfully.")
