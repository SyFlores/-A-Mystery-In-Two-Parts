# sql-challenge

### Data
Data is largely unaltered and unedited. The only edit to the data that has been made to the **Data/employees.csv** file to convert the birth_date and hire_date fields from **MM/DD/YYYY** format to the standard **YYYY-MM-YY** date format.

---

## Employee Database: A Mystery in Two Parts
We are tasked with modeling, engineering and analyzing "Pewlett Hackard" employee data from the 1980s and 1990s. This will primarily be performed in SQL databases.

### Data Modeling
After inspecting the CSV files locating in the **Data** folder, we will sketch out an ERD of those tables.
- This will be performed in the [QuickDBD](https://www.quickdatabasediagrams.com/)
    - The **Employee ERM Schema.txt** file will contain the script that can be run on QuickDBD to generate the ERD
Additionally, an image of the ERM will be contained within the **QuickDBD-Employee ERM.png** file

### Data Engineering
Within the ERM, we will create a table schema for each of the six CSV files. We will do the following:
- Specify data types, primary keys, foreign keys, and other constraints.
    - All primary keys will be checked for uniqueness, otherwise we will have to create a composite key.
    - In order to handle the assignment of foreign keys appropriately, we will create them in the following order:
        - departments
        - titles
        - employees
        - dept_emp
        - dept_manager
        - salaries
- Import each CSV file in it's own corresponding SQL table in the order that the tables were created, accounting for headers to avoid errors

### Data Analysis
Following the creation of a complete database, we will perform the following analysis:
1. List the following details of each employee:
    - Employee number, last name, first name, sex, and salary
2. List first name, last name, and hire date for employees who were hired in 1986
3. List the manager of each department with the following information:
    - Department number, department name, the manager's employee number, last name, first name
4. List the department of each employee with the following information:
    - Employee number, last name, first name, and department name.
5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
6. List all employees in the Sales department, including their employee number, last name, first name, and department name
7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name
8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name
