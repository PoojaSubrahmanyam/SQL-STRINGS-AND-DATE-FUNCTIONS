# SQL Project: Date and String Functions

## 📌 Project Overview
This project showcases various **SQL Date and String functions** using an `employees` dataset. The queries demonstrate operations like extracting substrings, formatting dates, calculating age, and more.


## 📂 Dataset Schema
```SQL
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob DATE,
    join_date DATE,
    gender VARCHAR(10),
    department VARCHAR(50),
    address VARCHAR(100)
);
``` 

## 📊 Sample Data

``` SQL
INSERT INTO employees (emp_id, first_name, last_name, dob, join_date, gender, department, address)
VALUES
(101, 'John', 'Doe', '1990-06-15', '2018-07-20', 'Male', 'IT', '123 Park Lane'),
(102, 'Alice', 'Johnson', '1985-09-22', '2010-03-10', 'Female', 'HR', '45 Main Street'),
(103, 'Raj', 'Sharma', '1993-01-10', '2020-12-05', 'Male', 'Finance', '78 Oak Avenue'),
(104, 'Priya', 'Kapoor', '1998-11-05', '2023-02-15', 'Female', 'Marketing', '99 Elm Road');
```

## 📌 SQL Queries

### 1️⃣ Find employees who joined more than 5 years ago
```
SELECT first_name FROM employees WHERE join_date < DATE_SUB(CURDATE(), INTERVAL 5 YEAR);
```

### 2️⃣ Extract the first 3 characters of each employee's name
```
SELECT SUBSTR(first_name, 1, 3) FROM employees;
```

### 3️⃣ Convert today’s date into the format: "Monday, 12-Feb-2025"
```
SELECT DATE_FORMAT(CURDATE(), '%W, %d-%b-%Y') AS formatted_date;
```

### 4️⃣ Calculate the age of an employee given their date of birth
```
SELECT first_name, TIMESTAMPDIFF(YEAR, dob, CURDATE()) AS age FROM employees;
```

### 5️⃣ Check if an employee’s name contains the letter "a"
```
SELECT first_name, last_name FROM employees WHERE first_name LIKE '%a%' OR last_name LIKE '%a%';
```

### 6️⃣ Display the first letter of each employee's name in uppercase
```
SELECT UPPER(SUBSTR(first_name, 1, 1)) AS first_letter FROM employees;
```

### 7️⃣ Find employees who joined in the last 30 days
```
SELECT first_name FROM employees WHERE join_date > DATE_SUB(CURDATE(), INTERVAL 30 DAY);
```

### 8️⃣ Display employee names as "Mr./Ms." based on gender
```
SELECT CONCAT('Mr. ', first_name, ' ', last_name) AS full_name FROM employees WHERE gender = 'Male'
UNION ALL
SELECT CONCAT('Ms. ', first_name, ' ', last_name) AS full_name FROM employees WHERE gender = 'Female';
```

### 9️⃣ Replace all spaces in the address column with underscores
```
SELECT address, REPLACE(address, ' ', '_') AS modified_address FROM employees;
```

### List employees in order of their joining month
```
SELECT first_name, last_name, join_date, MONTH(join_date) AS joining_month FROM employees ORDER BY MONTH(join_date);
```

## 🛠️ How to Use This Project
1. Clone the repository and set up your SQL database.
2. Run the provided `CREATE TABLE` script.
3. Insert sample data into the `employees` table.
4. Execute each query to see the output and understand Date & String functions in SQL.


## 🚀 Skills Demonstrated
- Date functions: `DATE_SUB`, `CURDATE`, `DATE_FORMAT`, `TIMESTAMPDIFF`, `MONTH`
- String functions: `SUBSTR`, `UPPER`, `CONCAT`, `REPLACE`
- Pattern matching: `LIKE`, `IN`

## 📌 Conclusion
This project is a practical guide to mastering SQL **Date & String** functions using real-world employee data. By executing these queries, you will strengthen your SQL skills for data analysis and reporting.

### ⭐ Let's Connect!
If you found this project useful, feel free to 🌟 star the repository on GitHub!


