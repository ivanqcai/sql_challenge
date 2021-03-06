
--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.EMP_NO,e.LAST_NAME,e.FIRST_NAME,e.SEX, s.SALARY 
FROM EMPLOYEES E JOIN SALARIES S ON E.EMP_NO=S.EMP_NO ;

---List first name, last name, and hire date for employees who were hired in 1986.
SELECT FIRST_NAME,LAST_NAME, HIRE_DATE 
FROM EMPLOYEES where HIRE_DATE like '%1986';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT M.DEPT_NO, D.DEPT_NAME, M.EMP_NO, E.LAST_NAME, E.FIRST_NAME 
FROM DEPT_MANAGER M JOIN DEPARTMENTS D ON M.DEPT_NO=D.DEPT_NO 
JOIN EMPLOYEES E ON M.EMP_NO=E.EMP_NO;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT DEPT.DEPT_NAME,D.EMP_NO,E.LAST_NAME,E.FIRST_NAME 
FROM DEPT_EMP D JOIN EMPLOYEES E ON D.EMP_NO=E.EMP_NO 
JOIN DEPARTMENTS DEPT ON D.DEPT_NO=DEPT.DEPT_NO
ORDER BY DEPT.DEPT_NAME;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT FIRST_NAME,LAST_NAME,SEX 
FROM EMPLOYEES 
WHERE FIRST_NAME='Hercules' AND LAST_NAME LIKE 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT DEPT.DEPT_NAME,E.EMP_NO,E.LAST_NAME,E.FIRST_NAME 
FROM EMPLOYEES E JOIN DEPT_EMP DE ON E.EMP_NO=DE.EMP_NO 
JOIN DEPARTMENTS DEPT ON DE.DEPT_NO=DEPT.DEPT_NO 
WHERE DEPT.DEPT_NAME='Sales'
ORDER BY DEPT.DEPT_NAME;

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT DEPT.DEPT_NAME,E.EMP_NO,E.LAST_NAME,E.FIRST_NAME 
FROM EMPLOYEES E JOIN DEPT_EMP DE ON E.EMP_NO=DE.EMP_NO JOIN DEPARTMENTS DEPT ON DE.DEPT_NO=DEPT.DEPT_NO 
WHERE (DEPT.DEPT_NAME='Sales' OR DEPT.DEPT_NAME='Development')
;

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name,COUNT(*)
FROM EMPLOYEES
GROUP BY last_name
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC;
