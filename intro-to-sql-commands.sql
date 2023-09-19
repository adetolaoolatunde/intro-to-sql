create database sample_db;

use sample_db;
create table customers (SN int, 
						name text, 
                        age int, 
                        state text);
                        
insert into customers values (1, 'John Wick', 45, 'Ogun');
select * from customers;