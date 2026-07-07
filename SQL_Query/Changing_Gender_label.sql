SELECT Gender,count (*) FROM [dbo].[Depression+Student+Dataset]
GROUP BY Gender;

-- Changing Gender in short form 
UPDATE [dbo].[Depression+Student+Dataset]
SET Gender = 'F'WHERE Gender = 'Female'

UPDATE [dbo].[Depression+Student+Dataset]
SET Gender = 'M'WHERE Gender = 'male'

-- Checking NULL values in Gender COLUMN

SELECT * FROM [dbo].[Depression+Student+Dataset] 
WHERE Gender= 'NULL'
