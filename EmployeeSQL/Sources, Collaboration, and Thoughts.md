### Sources
- What is the standard date format to be uploaded into SQL
  - We currently have a MM/DD/YYYY format for two fields in the Data/employees.csv file
  - This has the potential to cause issues in some importing processes for SQL so we should do what we can to conver to YYYY-MM-DD
    - Source: w3schools [page](https://www.w3schools.com/sql/sql_dates.asp#:~:text=SQL%20Date%20Data%20Types&text=DATE%20%2D%20format%20YYYY%2DMM%2D,YEAR%20%2D%20format%20YYYY%20or%20YY) on "SQL Working With Dates"

### Collaborations
- LIST ANY COLLABORATIONS HERE

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
    - placeholder
  - Pc
    - placeholder
- 1986 Hire Dates
  - WiBA
    - placeholder
  - Pc
    - placeholder
- Employee Department Info
  - WiBA
    - placeholder
  - Pc
    - placeholder
- Hercules B
  - WiBA
    - placeholder
  - Pc
    - placeholder
- Sales Dept. Employees
  - WiBA
    - placeholder
  - Pc
    - placeholder
- Sales and Development Dept. Employees
  - WiBA
    - placeholder
  - Pc
    - placeholder
- Top Count of Employee Last names
  - WiBA
    - placeholder
  - Pc
    - placeholder