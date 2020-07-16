# SpiringBootJSP

This is a personal project I created to learn and get familiar with the Spring MVC framework. The project is a simple Employee Management System that allows the user to 
add an employee, remove an employee, and look up all the employees from the database. This EMS uses RESTful API for HTTP requests such as POST, GET, and DELETE. Java was used for the 
Back-end development and HTML/CSS/Bootstrap was used for the front-end development. The data being used is created, read, and deleted by using a repository within the project
that extends the CRUD operations. It is then displayed to the user using Java Servlet Page (JSP).

# How To Use
Download the project from here and import the project into Eclipse or SpringToolSuite. If you are using Ecplise, make sure to have SpringBoot installed on it so you can run
the project as a Spring App. Once you have it running, go to your local host and you should be able to see the index page with a simple messages and a navigation bar on the top.

# Functionalities
- Add New Employee: allows you to enter the name, id number and department in which this person works at. Once you enter, simply press the submit button and the data will
be inputted into the database and will be displayed to the All Employee page.
- Remove Employee: this feature allows the user to delete a single employee from the database using their names and id.
- View All Employees: This page gathers every employee from the database and displays it as a table.
There is also an additional feature that allows the user to look up an employee based on their ID number. This feature is not on the navigation bar since it has to 
be done in the URL. The URL would look like this, http://localhost:8080/employeeDetail/{id}
