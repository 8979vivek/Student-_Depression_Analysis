SELECT Age ,COUNT(*) [Count]  FROM [dbo].[Depression+Student+Dataset]
GROUP BY Age
ORDER BY Age DESC


-- Adding a new COLUMN in Table
ALTER TABLE [dbo].[Depression+Student+Dataset]
ADD Age_Group VARCHAR(max)

SELECT * FROM [dbo].[Depression+Student+Dataset]


-- UPDATE Table
UPDATE [dbo].[Depression+Student+Dataset]
SET Age_Group=
CASE 
	WHEN Age BETWEEN 18 AND 24 THEN 'A1'
	WHEN Age BETWEEN 25 AND 31 THEN 'A2'
	ELSE 'A3'
END



SELECT Age_Group, COUNT (* ) FROM [dbo].[Depression+Student+Dataset]
GROUP BY Age_Group

