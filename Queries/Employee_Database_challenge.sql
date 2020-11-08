Select Distinct e.emp_no,
		e.first_name,
		e.last_name,
		t.title,
		t.from_date,
		t.to_date
INTO Retirement_titles
from employees as e
Inner Join titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by emp_no

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title

INTO Unique_Titles
FROM retirement_titles as rt
ORDER BY rt.emp_no, to_date DESC;



select count(ut.emp_no),
		ut.title
INTO retiring_titles
from unique_titles as ut
group by ut.title
order by count(ut.title) DESC;

--------------------------------------

select Distinct ON (e.emp_no) e.emp_no, e.first_name,
		e.last_name, e.birth_date,
		de.from_date, de.to_date,
		t.title
INTO mentorship_eligibilty
from employees as e
INNER JOIN dept_employee as de
ON (e.emp_no = de.emp_no)
INNer JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' and '1965-12-31') AND
	(de.to_date = '9999-01-01')
Order by e.emp_no