# Sales-trend-Analysis-using-Aggregation-Task---6
Analyse  monthly revenue and order volume.

🔍 Project Overview

The project’s goal is to analyze sales trends based on data stored in a table (called employee here, though it actually contains sales/payment data rather than employee details).
The main focus is on aggregating, grouping, and summarizing sales data to identify trends — such as total sales by month, total sales per payment mode, etc.


---

🧱 Table Structure

The SQL script begins with creating a table:

drop table if exists employee;
create table employee (
    customer_id int,
    amount int,
    mode varchar(90),
    payment_date date
);

Explanation

customer_id → Unique identifier for each customer.

amount → Amount of payment or sales transaction.

mode → Payment mode (like 'Credit Card', 'UPI', 'Net Banking', 'Cash', etc.).

payment_date → Date on which the payment was made.


So, this table stores sales transaction records.


---

🧮 Core SQL Operations

1. Extract Month from Payment Date

select customer_id, payment_date, 
       DATE_PART('month', payment_date) as extract_month
from employee;

Explanation:

This extracts the month number (1–12) from the payment date.

It helps in grouping sales data by month later to observe monthly sales trends.


📊 Use Case:
To check how many sales occurred each month or how sales changed month to month.


---

2. Group by Payment Mode

select mode, sum(amount) as total
from employee
group by mode;

Explanation:

Groups transactions by mode (payment type).

Calculates total sales amount (sum(amount)) for each mode.


📊 Use Case:
To find out which payment method brings the most revenue.
Example: Total sales via UPI, Credit Card, Cash, etc.


---

3. Sum of Amount

select sum(amount) from employee;

Explanation:

Calculates the total sales amount across all transactions.

Gives an overall revenue figure.


📊 Use Case:
To determine total sales or total income in the dataset.


---

4. Count of Transactions

select count(amount) from employee;

Explanation:

Counts how many transactions (rows) exist in the dataset.


📊 Use Case:
To determine total number of sales or payments recorded.


---

5. Order by Amount

select * from employee order by amount asc;

Explanation:

Sorts all records based on amount, from smallest to largest.


📊 Use Case:
To find lowest and highest transaction values, or analyze customer spending patterns.


---

6. Limit Result (Top 5 Records)

select amount, mode from employee limit 5;

Explanation:

Displays only the first 5 rows of data (useful for previewing results).


📊 Use Case:
To quickly verify data structure and sample entries.
