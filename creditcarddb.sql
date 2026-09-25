-- create and use database
create database creditcdb;
use creditcdb;
-- 1. create creditcard_details table 
create table creditcard_details(
Client_Num	int,
Card_Category varchar(20),	
Annual_Fees	int,
Activation_30_Days int,
Customer_Acq_Cost	int,
Week_Start_Date	date,
Week_Num	varchar(20),
Qtr	varchar(20),
current_year year,
Credit_Limit decimal(10,2),	
Total_Revolving_Bal	int,
Total_Trans_Amt	int,
Total_Trans_Vol	int,
Avg_Utilization_Ratio decimal(10,3),
Use_Chip varchar(20),	
Exp_Type varchar(40),	
Interest_Earned	decimal(10,2),
Delinquent_Acc int
);
-- 2. view table data 
select * from creditcard_details;

-- 3. create customer_detaols table
create table customer_details(
Client_Num	int,
Customer_Age int,	
Gender varchar(20),
Dependent_Count int,	
Education_Level varchar(40),	
Marital_Status varchar(20),	
state_cd varchar(20),	
Zipcode int,	
Car_Owner varchar(10),
House_Owner varchar(10),	
Personal_loan varchar(10),	
contact varchar(20),	
Customer_Job varchar(40),	
Income	int,
Cust_Satisfaction_Score int
);

-- load credit card csv file  in sql 
-- and text to date conversion sql date fromat(yyyy-mm-dd)
load data infile
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/CreditCustomer/credit_card.csv' into table creditcard_details
fields terminated by ','
lines terminated by '\n'
ignore 1 rows
(Client_Num,Card_Category,Annual_Fees,Activation_30_Days,Customer_Acq_Cost,
@Week_Start_Date,Week_Num,Qtr,current_year,Credit_Limit,Total_Revolving_Bal,
Total_Trans_Amt,Total_Trans_Vol,Avg_Utilization_Ratio,Use_Chip,Exp_Type,
Interest_Earned,Delinquent_Acc) 
set Week_Start_Date=
CASE
  WHEN @Week_Start_Date REGEXP '^[0-9]{1,2}/[0-9]{1,2}/[0-9]{4}$' THEN str_to_date(@Week_Start_Date, '%d/%m/%Y')
  WHEN @Week_Start_Date REGEXP '^[0-9]{1,2}-[0-9]{1,2}-[0-9]{4}$' THEN str_to_date(@Week_Start_Date, '%d-%m-%Y')
else null
end;

-- load customer csv file  in sql
load data infile
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/CreditCustomer/customer.csv' into table customer_details
fields terminated by ','
lines terminated by '\n'
ignore 1 rows;
select * from customer_details;

truncate table creditcard_details;
select * from creditcard_details;
truncate table customer_details;


load data infile
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/CreditCustomer/cc_add.csv' into table creditcard_details
fields terminated by ','
lines terminated by '\n'
ignore 1 rows
(Client_Num,Card_Category,Annual_Fees,Activation_30_Days,Customer_Acq_Cost,
@Week_Start_Date,Week_Num,Qtr,current_year,Credit_Limit,Total_Revolving_Bal,
Total_Trans_Amt,Total_Trans_Vol,Avg_Utilization_Ratio,Use_Chip,Exp_Type,
Interest_Earned,Delinquent_Acc) 
set Week_Start_Date=
CASE
  WHEN @Week_Start_Date REGEXP '^[0-9]{1,2}-[0-9]{1,2}-[0-9]{4}$' THEN str_to_date(@Week_Start_Date, '%d-%m-%Y')
else null
end;
select * from creditcard_details;


load data infile
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/CreditCustomer/cust_add.csv' into table customer_details
fields terminated by ','
lines terminated by '\n'
ignore 1 rows;
select * from customer_details;
