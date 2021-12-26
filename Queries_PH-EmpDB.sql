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