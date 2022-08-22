# Lab_SQL_Basics_Selection_Aggregation.

use bank;
select * from bank.client;

#1 Get the id values of the first 5 clients from district_id with a value equals to 1.

SELECT client_id
FROM client
WHERE district_id=1
LIMIT 5;

#2 In the client table, get an id value of the last client where the district_id equals to 72.
SELECT client_id FROM bank.client
WHERE district_id=72
ORDER by client_id desc 
limit 1;

#3 Get the 3 lowest amounts in the loan table 4980,5148,7656

SELECT amount FROM bank.loan
ORDER BY amount ASC  
LIMIT 3;

#4 What are the possible values for status, ordered alphabetically in ascending order in the loan table? A B C D

SELECT DISTINCT status
FROM bank.loan;

#5 What is the loan_id of the highest payment received in the loan table? 6415

SELECT loan_id FROM bank.loan
ORDER BY payments desc  
LIMIT 1;

#6 What is the loan amount of the lowest 5 account_ids in the loan table? Show the account_id and the corresponding amount

SELECT loan.account_id,loan.amount
FROM bank.loan
ORDER BY account_id asc  
LIMIT 5;

#7 What are the top 5 account_ids with the lowest loan amount that have a loan duration of 60 in the loan table?

SELECT loan.account_id
FROM bank.loan
WHERE (loan.duration = 60) 
ORDER BY amount asc  
LIMIT 5;

#8 What are the unique values of k_symbol in the order table?

SELECT DISTINCT k_symbol
FROM bank.order;

#9 In the order table, what are theorder_ids  of the client with the account_id 34?

SELECT order_id
FROM bank.order
WHERE (account_id = 34); 

#10 In the order table, which account_ids were responsible for orders between order_id 29540 and order_id 29560 (inclusive)?

SELECT distinct account_id
FROM bank.order
WHERE order_id > 29540 AND order_id <= 29560;

#11 In the order table, what are the individual amounts that were sent to (account_to) id 30067122?

SELECT distinct amount
FROM bank.order
WHERE account_to = 30067122;

#12 In the trans table, show the trans_id, date, type and amount of the 10 first transactions from account_id 793 in chronological order, from newest to oldest.

SELECT trans_id,date,type,amount
FROM bank.trans
WHERE account_id = 793
ORDER BY date desc  
LIMIT 10;

