### Sources
- What is the standard date format to be uploaded into SQL
  - We currently have a MM/DD/YYYY format for two fields in the Data/employees.csv file
  - This has the potential to cause issues in some importing processes for SQL so we should do what we can to conver to YYYY-MM-DD
    - Source: w3schools [page](https://www.w3schools.com/sql/sql_dates.asp#:~:text=SQL%20Date%20Data%20Types&text=DATE%20%2D%20format%20YYYY%2DMM%2D,YEAR%20%2D%20format%20YYYY%20or%20YY) on "SQL Working With Dates"
 - How do you assign a foreign key in PostgreSQL?
  - Tried assigning it the traditional way but that didn't work
  - Look like it has to be assigned as a part of a CONSTRAINT
    - Source: PostgreSQL Tutorial page on [PostgreSQL Foreign Key](https://www.postgresqltutorial.com/postgresql-foreign-key/)

### Collaborations
- No collaborations.

### Thoughts
What is Being Asked? Pseudocode.

- Data Engineering
  - WiBA
    - What order are we loading the tables in?
  - Pc
    - Start from the table that will have no dependencies and add in other tables and specify their foreign keys. There are three groups of tables to load in in this order:
        1. **departments** and **titles** are to be loaded in first with no priority over one another
        2. **employees** are to be loaded in next as it is dependent on the **titles** table being created
        3. **dept_manager**, **dept_emp**, and **salaries** are to be loaded in last as they are both dependent on the **employees** and **departments**
- Employee Info
  - WiBA
    - Listing generic employee info
  - Pc
    - Join employees with salaries on emp_no
- 1986 Hire Dates
  - WiBA
    - List employees that were hired in 1986
  - Pc
    - Use the YEAR function to extract the year from the Date datatype employees.hire_date
    - Since we're using postgres, we'll have to use the EXTRACT function as that is the required syntax
- Employee Department Info
  - WiBA
    - List department info for each employee
  - Pc
    - Join employees with dept_emp on emp_no and join departments with dept_emp on dept_no
- Hercules B
  - WiBA
    - List employee info for employees with the first name 'Hercules' and a last name that starts with the letter 'B'
  - Pc
    - In the WHERE, set a basic text string match for first_name on 'Hercules' and using LIKE with a wildcard, we can check all last_name that start with 'B'
- Sales Dept. Employees
  - WiBA
    - List employee information for the sales department
  - Pc
    - Join employees with dept_emp on emp_no and join departments with dept_emp on dept_no
    - Set the WHERE to do a text-string match on 'Sales' for the departments.dept_name
- Sales and Development Dept. Employees
  - WiBA
    - List employee information for both the sales and development department
  - Pc
    - Join employees with dept_emp on emp_no and join departments with dept_emp on dept_no
    - Set the WHERE to do a text-string match on 'Sales' for the departments.dept_name
    - With an OR, set another condition to do a text-string match on 'Development' for the departments.dept_name
- Top Count of Employee Last names
  - WiBA
    - Get the count of employees by last name and order it in descending order by count
  - Pc
    - Use the COUNT function to get the count for last_name and alias it for further use
    - Do a GROUP BY on last_name to get the count next each last name
    - Do an ORDER BY on the alias for COUNT(employees.last_name) specifying DESC for descending