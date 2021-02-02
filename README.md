# UCSD SQL Challenge
This challenge is to use Data Engineering and Data Analysis to create, load, clean, and analyze a data set using Postgesql Database.

## Data assumptions
1. There can be multiple managers for each department
2. An employee can be part of multiple departments
3. Title names are unique
4. Department names are unique

# Load table order
Tables should be loaded in the following order to not run afowl of constraints

1. titles
2. departments
3. employees
4. salaries
5. dep_emp
6. dep_manager

# Files
* The [schema.sql](EmployeeSQL/schema.sql) will create the database tables primary and foreign keys, and other contsraints.
* The [query.sql](EmployeeSQL/query.sql) will create the database tables primary and foreign keys, and other contsraints.
* The [erd.txt](EmployeeSQL/erd.txt) will create the realtionship diagram inusing [Quick DBD](https://app.quickdatabasediagrams.com/). Some modification was done post export.
* The [bonus.ipynb](EmployeeSQL/bonus.ipynb) is the Jupyter Notebook for the bonus challenge. You will need to create a file called config.py with your username and password information for your database.