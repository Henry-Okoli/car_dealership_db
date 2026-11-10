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

df = pd.read_sql("SELECT COUNT(*) AS vehicles FROM vehicles", engine)

print(df)



#print("Database Host:", os.getenv("DB_HOST"))
#print("Database Port:", os.getenv("DB_PORT"))
#print("Database User:", os.getenv("DB_USER"))