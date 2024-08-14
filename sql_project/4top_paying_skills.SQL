/*
Question: What are the top skills based on salary?
-Look at the average salary associated with each skill for business analyst positions
-focus on roles with salaries,regardless of location
-why? it reveals how different skills impact salary levels for business analysts and helps identify
the most financially rewarding skills to aquire or improve
*/

SELECT 
    skills,
    ROUND(AVG(salary_year_avg),0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id=skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id=skills_dim.skill_id
WHERE
    job_title_short='Business Analyst' AND 
    salary_year_avg IS NOT NULL
    --job_work_from_home=TRUE
GROUP BY 
    skills 
ORDER BY     
    avg_salary DESC
LIMIT 25;

/*
Here are some trends and insights based on the top-paying skills for business analysts:

1. Advanced Data Analysis and Machine Learning
Skills: Numpy, Pytorch, TensorFlow, Scikit-learn
Trend: Skills related to advanced data analysis and machine learning command higher salaries. Proficiency in these tools and frameworks indicates a strong capability in handling complex data tasks and predictive modeling, which is highly valued.
2. Specialized Data Tools and Technologies
Skills: Hadoop, Snowflake, Looker, Elasticsearch, MongoDB
Trend: Familiarity with specialized data processing and analysis tools, including big data technologies and data visualization platforms, is lucrative. These tools are essential for managing large datasets and extracting actionable insights.
3. Emerging Technologies
Skills: Julia, Airflow, Phoenix
Trend: Emerging and specialized technologies often offer higher salaries due to their novelty and the specific expertise required. Julia, for instance, is appreciated for its performance in numerical computing, while Airflow and Phoenix serve unique roles in data workflows and web frameworks.
4. Core Programming and Development Skills
Skills: Ruby, C, Node.js, Electron
Trend: Traditional programming skills remain important and well-compensated, especially when applied to software development and application design. Ruby, C, and JavaScript (Node.js) are foundational in various tech stacks.
5. Visualization and Reporting Tools
Skills: Seaborn, Matlab, Matplotlib, Pandas
Trend: Visualization and reporting skills are crucial for interpreting and presenting data effectively. Proficiency in tools and libraries that aid in data visualization (like Seaborn and Matplotlib) and analysis (like Pandas) is highly valued.
6. Cloud and Big Data Technologies
Skills: Snowflake, Cassandra
Trend: Cloud-based and big data technologies are increasingly important as organizations scale and require more robust data solutions. Expertise in these areas reflects an ability to manage and analyze large volumes of data effectively.
Summary
High salaries often correlate with skills in advanced analytics, machine learning, and specialized technologies.
Emerging technologies and cutting-edge tools are increasingly in demand and command higher compensation.
Core programming skills and data visualization capabilities remain critical and well-compensated.

[
  {
    "skills": "chef",
    "avg_salary": "220000"
  },
  {
    "skills": "numpy",
    "avg_salary": "157500"
  },
  {
    "skills": "ruby",
    "avg_salary": "150000"
  },
  {
    "skills": "hadoop",
    "avg_salary": "139201"
  },
  {
    "skills": "julia",
    "avg_salary": "136100"
  },
  {
    "skills": "airflow",
    "avg_salary": "135410"
  },
  {
    "skills": "phoenix",
    "avg_salary": "135248"
  },
  {
    "skills": "electron",
    "avg_salary": "131000"
  },
  {
    "skills": "c",
    "avg_salary": "123329"
  },
  {
    "skills": "pytorch",
    "avg_salary": "120333"
  },
  {
    "skills": "tensorflow",
    "avg_salary": "120333"
  },
  {
    "skills": "seaborn",
    "avg_salary": "120000"
  },
  {
    "skills": "matlab",
    "avg_salary": "120000"
  },
  {
    "skills": "matplotlib",
    "avg_salary": "120000"
  },
  {
    "skills": "scikit-learn",
    "avg_salary": "120000"
  },
  {
    "skills": "nosql",
    "avg_salary": "119330"
  },
  {
    "skills": "mongodb",
    "avg_salary": "118667"
  },
  {
    "skills": "snowflake",
    "avg_salary": "112543"
  },
  {
    "skills": "looker",
    "avg_salary": "110581"
  },
  {
    "skills": "pandas",
    "avg_salary": "110558"
  },
  {
    "skills": "node.js",
    "avg_salary": "110000"
  },
  {
    "skills": "elasticsearch",
    "avg_salary": "110000"
  },
  {
    "skills": "mxnet",
    "avg_salary": "110000"
  },
  {
    "skills": "chainer",
    "avg_salary": "110000"
  },
  {
    "skills": "cassandra",
    "avg_salary": "108488"
  }
]

*/

