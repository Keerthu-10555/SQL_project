/*
Question: What are the top-paying Data Analyst jobs?
- Identify the top 10 highest paying Data Analyst roles that are available remotely(Included company names).
- Focuses on job postings with specified salaries (remove nulls).
- Why? Highlight the top paying opportunities for Data Analysis, offering insights into optimal skills for data analysis.
*/ 

SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10;

/*
Here's the breakdown of the top 10 Data Analyst Jobs in 2023:
- Wide Salary Range: Top 10 for data analysis spans from $184,000 to $650,000, idicating significant salary potential.
- Diverse Employers: Companies like SmartAsset, Meta, and AT&T are among those offering high salaries, showing a broad interest across different industries.
- Job Title Variety: There is a high variety in job titles, from Data Analyst to Director of Analytics, reflecting varied roles and splecializations within data analytics.
*/ 