<h3>SQL - Employee Database </h3>
<hr>

Design tables to import multiple <a href="/EmployeeSQL/data">CSVs</a> into SQL Database and perform Data Engineering and Data Analysis.

<p>Upon inspecting the CSVs, the following ERD for all tables was sketched out: </p>
<img width="80%" src="/EmployeeSQL/Employee_DB ERD.png">

<p>The following was then performed:</p>
<ul>
  <li>Set primary key and composite key accordingly</li>
  <li><a href="/EmployeeSQL/Table_Schema.sql">Created tables</a> in correct order to handle foreign keys</li>
  <li>Imported CSV into corresponding SQL table</li>
  <li>Perform <a href="/EmployeeSQL/Queries_Schema.sql">multiple queries</a> - employee details, employees hired in 1986, managers, departments and etc.. </li>
  <li>Imported the SQL DB into <a href="/EmployeeSQL/Bonus.ipynb">Pandas</a></li>
  <li>Created Histogram to visualize the most common salary range for employees</li>
  <img width="80%" src="/EmployeeSQL/common_salary_ranges.png">
  <p>Most Common Salary</p>
  <img width="80%" src="/EmployeeSQL/average_salary_tite.png">
  <p>Average Salary per Title</p>
</ul>



