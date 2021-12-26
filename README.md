# Pewlett-Hackard-Analysis
SQL Learning
## Querying a Relational Employee Database with PostgreSQL and PGAdmin

### Overview of the analysis:

The Human Resources Department at Pewlett Hackard assigned this assignment because the company needed assistance in preparing for the upcoming "pupolation aging," a period in which a record number of baby boomers across the country will begin to retire. The purpose of this initiative is to reduce the negative consequences of losing significant human capital, and not just any human capital, but human capital with seniority and expertise. Pewlett Hackard could face unprecedented vacancies across the board if a significant number of senior positions are lost. This could result in significantly lower production productivity and, even worse, incrementally higher costs of recruiting and training retiree replacements.

I was particularly instructed to query the newly constructed PostgresSQL database, EmployeeDB, to get the following information to aid in the preparation for the time in which experienced employees will start retiring:

Deliverable #1
1 The number of existing employees who are eligible for retirement and will be leaving their jobs soon.

2 The personnel approaching retirement include:
 - In terms of future vacancies, which titles or responsibilities should we be most concerned about?
 - How many vacancies will there be for each position that is eliminated?



retiring_titles.csv : Employees retiring by job title

<img width="187" alt="retiring_titles" src="https://user-images.githubusercontent.com/93852380/147399988-527f56ba-5b7a-4e56-ace4-3c1cf780b78b.png">

Deliverable 2

Because there will be a large number of employees departing shortly, it is critical to assess the effectiveness of PH's attempts to mitigate the negative effects of mass retirement. I've been entrusted with offering insight on the program's viability while PH considers the efficacy of an internal mentorship program.

The following data was queried into a new data table to look for these

1 What employees are eligible for the mentorship program if the following criteria are met:
* Employees that were born in 1965 and are still working for the company?

2 What is the most recent title of these employees (to date = '9999-01-01')

3 How long have these employees been in this position (from date)?

Mentorship_eligiblity.csv : The Employees Eligible for the Mentorship Program

<img width="547" alt="mentorship_eligiblity" src="https://user-images.githubusercontent.com/93852380/147400455-67058d7d-68b3-4b22-a23a-c09f59c27c90.png">

## Results
We can provide high-level insights to Pewlett-HR Hackard's department based on the queries we run:

1 There are 29,414 Senior Engineers and 28,254 Senior Staff that are set to retire in the near future. This translates to 64 percent of senior staff (50,000 positions) retiring.

2 Expertise, seasoned professionalism, and company/industry knowledge cannot easily be duplicated, making this 64 percent even more disastrous.

3 Pewlett-Hackard is about to lose two managers. Given that there are only nine departments, each with one current manager:

4 A total of 1,549 employees are eligible for the mentorship program. This is merely 1.7 percent of the total number of employees who are about to retire.



