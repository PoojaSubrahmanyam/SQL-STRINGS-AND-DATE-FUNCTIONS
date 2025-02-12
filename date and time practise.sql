/*Write an SQL query to find employees whose joining date is more than 5 years old from today.*/
select w.first_name from workers w where w.join_date< date_sub(current_date(),interval 5 year);
/*Write an SQL query to extract the first 3 characters of each employee's name.*/
select substr(first_name,1,3) from workers w;
/*Convert today’s date into the format: "Monday, 12-Feb-2025".*/
SELECT DATE_FORMAT(CURDATE(), '%W, %d-%b-%Y') AS formatted_date;
/*Write an SQL query to calculate the age of an employee given their date of birth.*/
select w.first_name,timestampdiff(year,w.dob,curdate())as age from workers w;
/*Write an SQL query to check if an employee’s name contains the letter "a".*/
select first_name,last_name 
from workers
where first_name like '%a%' or last_name like '%a%' ;
/*Write an SQL query to display the first letter of each employee's name in uppercase.*/
select upper(substr(first_name,1,1)) as first_letter from workers;
/*Write an SQL query to find employees who joined in the last 30 days.*/
SELECT first_name 
FROM workers
WHERE join_date > DATE_SUB(CURDATE(), INTERVAL 30 DAY);
/*Write an SQL query to display employee names as "Mr. John Doe" where the title is added based on gender.*/
SELECT CONCAT('Mr. ',w.first_name, ' ', w.last_name) AS full_name
FROM workers w
WHERE gender = 'male'
union all
select CONCAT('Ms. ',w.first_name, ' ', w.last_name) AS full_name
FROM workers w
WHERE gender = 'female' ;
/*Write an SQL query to replace all spaces in an address column with underscores (_).*/
SELECT address, REPLACE(address, ' ', '_') AS modified_address
FROM workers;
/* an SQL query to list employees in order of their joining month*/
SELECT first_name, last_name, join_date, MONTH(join_date) AS joining_month
FROM workers
ORDER BY MONTH(join_date);




