# Pewlett Hackard Employee Database Project

## Overview

The Employee Database Project is designed to manage and analyze employee information, including their personal details, job titles, salaries, and departmental affiliations. This project utilizes PostgreSQL for database management, providing a structured and efficient way to store and retrieve employee-related data.

## Table of Contents

- [Overview](#overview)
- [Database Schema](#database-schema)
- [Data](#data)
- [Queries](#queries)
- [Setup](#setup)
- [Usage](#usage)

---

## Database Schema

The database schema includes several key tables that organize various aspects of employee and departmental information:

- **Departments**: Contains department numbers and names.
- **Employees**: Stores personal and job-related data, including employee numbers, titles, birth dates, names, gender, and hire dates.
- **Salaries**: Records employee salaries.
- **Titles**: Lists job titles and their corresponding IDs.
- **Dept_Emp**: Links employees to their respective departments.
- **Dept_Manager**: Identifies managers for each department.

Each table has specific fields and relationships:
- **Departments**: `dept_no` (Primary Key), `dept_name`
- **Employees**: `emp_no` (Primary Key), `emp_title_id` (Foreign Key), `birth_date`, `first_name`, `last_name`, `sex`, `hire_date`
- **Salaries**: `emp_no` (Primary Key, Foreign Key), `salary`
- **Titles**: `title_id` (Primary Key), `title`
- **Dept_Emp**: `emp_no` (Foreign Key), `dept_no` (Foreign Key), Composite Primary Key (`emp_no`, `dept_no`)
- **Dept_Manager**: `dept_no` (Foreign Key), `emp_no` (Foreign Key), Composite Primary Key (`dept_no`, `emp_no`)

These tables and their fields form the backbone of the database, ensuring efficient storage and retrieval of employee and department data.

## Data

The data for this project includes CSV files containing information about departments, employees, salaries, titles, and relationships between employees and departments. These files are imported into the PostgreSQL database using the `COPY` command.

## Queries

This project utilizes a variety of SQL queries to explore and analyze the employee data:

- **Employee Details**: List employee number, last name, first name, sex, and salary of each employee.

![description](https://github.com/pixare7/Pewlett_Hackard_Project/blob/main/EmployeeSQL/query_results/image1.png)

- **Hire Date in 1986**: List first name, last name, and hire date of employees hired in 1986.

![description](https://github.com/pixare7/Pewlett_Hackard_Project/blob/main/EmployeeSQL/query_results/image2.png)

- **Department Managers**: List the manager of each department along with their department number, department name, employee number, last name, and first name.

![description](https://github.com/pixare7/Pewlett_Hackard_Project/blob/main/EmployeeSQL/query_results/image3.png)

- **Employee Department Assignment**: List the department number for each employee along with their employee number, last name, first name, and department name.

![description](https://github.com/pixare7/Pewlett_Hackard_Project/blob/main/EmployeeSQL/query_results/image4.png)

- **Employees Named Hercules B**: List first name, last name, and sex of employees named Hercules whose last name begins with 'B'.

![description](https://github.com/pixare7/Pewlett_Hackard_Project/blob/main/EmployeeSQL/query_results/image5.png)

- **Sales Department Employees**: List employee number, last name, and first name of each employee in the Sales department.

![description](https://github.com/pixare7/Pewlett_Hackard_Project/blob/main/EmployeeSQL/query_results/image6.png)

- **Sales and Development Departments**: List employee number, last name, first name, and department name for employees in the Sales and Development departments.

![description](https://github.com/pixare7/Pewlett_Hackard_Project/blob/main/EmployeeSQL/query_results/image7.png).

- **Last Name Frequency**: List the frequency counts of all employee last names in descending order.

![description](https://github.com/pixare7/Pewlett_Hackard_Project/blob/main/EmployeeSQL/query_results/image8.png)

These queries provide comprehensive insights into various aspects of the employee dataset, such as personal details, departmental affiliations, managerial assignments, and name frequency. Screenshots of the query results are embedded below for visual reference.

### Conclusions

The analysis of the employee database has provided valuable insights into the organizational structure and personnel data. By querying the database, we identified key aspects such as employee distribution across departments, managerial assignments, hiring trends, and common last names. These findings highlight the importance of structured data management and the utility of SQL in extracting meaningful information from complex datasets.

### Summary

This project demonstrates the effective use of PostgreSQL to manage and analyze employee data. It covers the creation of a relational database schema, the import of data from CSV files, and the execution of various SQL queries to explore the dataset. The queries answered questions about employee details, departmental affiliations, management structure, and hiring patterns. The results provide a comprehensive overview of the company's workforce, showcasing the potential of relational databases in data analytics.

## Setup

1. **Database Setup**:
   - Install PostgreSQL.
   - Create a database.
   - Execute the schema SQL file to create the necessary tables.

2. **Data Import**:
   - Import data from CSV files into the tables using the `COPY` command.

## Usage

To interact with the database, use SQL queries to retrieve and analyze data. This can be done through the PostgreSQL command-line tool or any compatible GUI tool like pgAdmin.
