import os
import pandas as pd
from dotenv import load_dotenv
from sqlalchemy import create_engine
from sqlalchemy.engine import URL

load_dotenv()  # Load environment variables from .env file

url = URL.create(
    "mysql+pymysql",
    username=os.getenv("DB_USER"),
    password=os.getenv("DB_PASSWORD"),
    host=os.getenv("DB_HOST"),
    port=int(os.getenv("DB_PORT")),
    database=os.getenv("DB_NAME"),
)
engine = create_engine(url)

query = """
SELECT 
    m.model_name, 
    ma.name AS manufacturer,
    COUNT(s.sale_id) AS units_sold,
    SUM(s.sale_price) AS Total_revenue
FROM sales s 
JOIN vehicles v ON s.vin = v.vin
JOIN models m ON v.model_id = m.model_id
JOIN manufacturers ma ON m.manufacturer_id = ma.manufacturer_id
GROUP BY m.model_id, m.model_name, ma.name
ORDER BY Total_revenue DESC
"""

df = pd.read_sql(query, engine)
print(df)

df.to_csv("reports/revenue_per_model.csv", index=False)

