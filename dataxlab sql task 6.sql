drop table if exists employee;
create table employee (
      customer_id int,
	  amount int,
	  mode varchar(90),
	  payment_date DATE );
	  
	   select*from employee;
			
--Extract month from payment_date.
select customer_id ,payment_date,
     DATE_PART('month',payment_date) as extract_month
	 from employee;

--group by year /month.
select mode , sum(amount) as total
from employee group by mode;




-- Sum of Amount 
select sum (amount) from employee;
-- count of amount 
select count(amount) from employee;
-- use order by for sorting 
select * from employee order by amount  asc;
-- limit result for specific time periiod 
select amount , mode from employee limit 5;


