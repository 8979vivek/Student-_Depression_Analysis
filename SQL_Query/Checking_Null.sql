
SELECT * FROM INFORMATION_SCHEMA.columns WHERE  table_name
like 'Depression+Student+Dataset'


SELECT Academic_Pressure,COUNT(*) FROM [dbo].[Depression+Student+Dataset]
GROUP BY Academic_Pressure


SELECT  Study_Satisfaction,COUNT(*) FROM [dbo].[Depression+Student+Dataset]
GROUP BY Study_Satisfaction

SELECT  Sleep_Duration,COUNT(*) FROM [dbo].[Depression+Student+Dataset]
GROUP BY Sleep_Duration

SELECT  Dietary_Habits,COUNT(*) FROM [dbo].[Depression+Student+Dataset]
GROUP BY Dietary_Habits

SELECT  Have_you_ever_had_suicidal_thoughts,COUNT(*) FROM [dbo].[Depression+Student+Dataset]
GROUP BY Have_you_ever_had_suicidal_thoughts

SELECT Study_Hours ,COUNT(*) FROM [dbo].[Depression+Student+Dataset]
GROUP BY Study_Hours


SELECT  Financial_Stress,COUNT(*) FROM [dbo].[Depression+Student+Dataset]
GROUP BY Financial_Stress

SELECT Family_History_of_Mental_Illness ,COUNT(*) FROM [dbo].[Depression+Student+Dataset]
GROUP BY Family_History_of_Mental_Illness

SELECT  Depression,COUNT(*) FROM [dbo].[Depression+Student+Dataset]
GROUP BY Depression

