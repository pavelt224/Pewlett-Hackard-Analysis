-- Queries_PH-EmplyeeDB>sql

--- CREATE VIEW retirement_titles AS
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t
	ON(e.emp_no = t.emp_no)
-- filter by birth day
WHERE (e.birth_date BETWEEN ('1951-01-01') AND ('1955-12-31'))
ORDER BY e.emp_no;

-- Starter Code
-- Use Dictinct with Orderby to remove duplicate rows
-- get employee number, first and last name, and title
-- from retirement_titles
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles AS rt
ORDER BY rt.emp_no, rt.to_date DESC;

-- creating retiring_titles
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY Count DESC; 


-- End of Deliverable 1

-- Start of Deliverable 2

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

--INTO nameyourtable
--FROM _______
--ORDER BY _____, _____ DESC;
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
    ti.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
	ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
    ON (e.emp_no = ti.emp_no)
-- filter on to_date to get current employees ('999-01-01')
WHERE de.to_date = '9999-01-01'
AND e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY e.emp_no;
