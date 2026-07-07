# Student Depression Data Analysis
### Project Overview:

The Student Depression Data Analysis project investigates the relationship between student mental health and various lifestyle, academic, and socio-economic factors. Using a data-driven approach, this project identifies risk factors that correlate with student depression, providing actionable insights for educational institutions to design better mental health support systems.


### Tech Stack


**Database Engine**: SQL ( MS SQL Server) for data extraction, cleaning, and aggregation.

**Visualization Platform**: Tableau Desktop for building interactive executive dashboards.

## Dataset Features
The analysis evaluates a dataset containing demographic, academic, and behavioral variables:


**Age**: The chronological age of the student.

**Sleep Duration**: Average hours of sleep per night (categorical or continuous).

**Study Hours**: Number of hours spent studying daily.Financial Stress: A self-reported metric indicating financial hardship levels.

**Academic Pressure**: A metric representing the perceived stress from schoolwork and exams.

**Depression Status** (Target): Indicates whether the student is experiencing depression (Binary: 0 = No, 1 = Yes).

## Key Steps

**1. Database Setup**:

- Created a SQL database named "Student_Dipression" to host the dataset.
- Analyze Dataset for preprocessing and find usefull insights.

**2.Data Cleaning**:

- Standardized gender labels(Female to 'F',Male to 'M')

   ```sql
  
  UPDATE [dbo].[Depression+Student+Dataset]
  SET Gender = 'F'WHERE Gender = 'Female'

  UPDATE [dbo].[Depression+Student+Dataset]
  SET Gender = 'M'WHERE Gender = 'male'
  ```
- Converted numerical depression  indicators (0,1) into meaningfull labels (No, Yes).

  ```sql
  
  UPDATE [dbo].[Depression+Student+Dataset]
  SET Depression = 'No' WHERE Depression=0
  
  UPDATE [dbo].[Depression+Student+Dataset]
  SET Depression = 'Yes' WHERE Depression='1'

  ```
- Identified and handled null or empty values

**3.Feature Engineering**:
- Added a index Column for unique record identification.

   ```sql
    
  ALTER TABLE [dbo].[Depression+Student+Dataset] 
  ADD Index_Column int IDENTITY(1,1)

  ```

- Created an Age Group Column:
    - 18-24: A1
    - 25-30: A2
    - Above 30: A3

  ```sql
    UPDATE [dbo].[Depression+Student+Dataset]
  SET Age_Group=
  CASE 
  	WHEN Age BETWEEN 18 AND 24 THEN 'A1'
  	WHEN Age BETWEEN 25 AND 31 THEN 'A2'
  	ELSE 'A3'
  END

  ```

**4.Data Visualization**
- Designed dashboard in Tableau to visualize Academic Pressure,Sleep Duration,Study hours,Study Satisfaction, Financial Stress.


### Tool & Technologies

- **SQL**: Data Preprocessing ,cleaning and analysis.
- **Tableau**: Data Visualization and Dashboard creation.


### Resuls & Insights

- Identified key factors impacting student depression ,such as academic pressure, sleep duration and financial stress.

### Future Scope

#### 1. Machine Learning Integration

- **Predictive Modeling**:  Integrate Python (Scikit-Learn) to build predictive models (e.g., Logistic Regression, Random Forests) that calculate a student's probability of depression.
- **Early Warning System**: Deploy a machine learning pipeline that flags "at-risk" students automatically based on drops in sleep duration or spikes in study hours.

#### 2. Dataset Expansion & Feature Growth
- **Academic Performance Data**: Source and merge student GPA, assignment submission rates, and attendance records to see the direct toll of depression on academic success.
- **Social & Campus Metrics**: Incorporate external variables such as participation in extracurricular activities, social media usage, and distance from home.



