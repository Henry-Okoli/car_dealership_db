# Car Dealership Database Project

A relational database that track a car dealership's stock, customers, sales staff and sales, with SQL queries that answer everyday business questions.

## The problem

The dealership want to know what cars it has, who bought them, which sales rep made each sale and how much money was realised by each sales rep and in general. This project models tha in a MariaDB database and answers the question a sales manager would ask.

## What is in the database

| Tabel | What it holds |
|---|---|
| 'manufacturers' | The car makers, such as Toyota and Ford |
| 'models' | Model lines made by each manufacturer |
| 'vehicles' | Individual card in stock, identified by VIN |
| 'customers' | People eho buy or enquire about cars |
| 'salesreps' | Sales staff |
| 'sales' | Each completed sale, linking a vehicle, a customer and a rep |

## How the tables connect

A manfacturer has many models, and a model has many vehicles. Each sale points to one vehicle. one customer and one sales rep.

The VIN is the primary key of 'vehicles', because it is a real identifier that is unique to each car. A vehicle can only appear once in 'sales', so a car cannot be sole twice.

## Questions the queries answer

1. Which model bringd in the most revenue?
2. Which sales rep performs best?
3. How many vehicles are available, reserves or sold, by model?
4. Which vehicles sold below their listed price?
5. Which customer have bought more that once?
6. How do sales and revenue change month by month?
7. Which payment method do customers use most?

All queries are in 'sql/queries.sql'.

## How to run it

You need MariaDB installed. From the project folder:

```

mariadb -e "CREATE DATABASE car_dealership;"
mariadb car_dealership < sql/schema.sql
mariadb car_dealership < sql/sample_data.sql
mariadb car_dealership < sql/queries.sql
```

The sample data is made for this project purpose. No real people or details are used.

## What I learned

- Designing tables with primary keys and foreign keys 
- Writing joins across several tables
- Summaising data waith GROUP BY, COUNT, SUM AND AVG
- Filtering groups with HAVING
- Finding and fixing inconsistent data, such as a sold car still marked as availabe
- Working in Git with branches, commits and pull req

## Author

Henry