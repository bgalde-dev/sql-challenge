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
* The [schema.sql](schema.sql) will create the database tables primary and foreign keys, and other contsraints.
* The [query.sql](query.sql) will create the database tables primary and foreign keys, and other contsraints.