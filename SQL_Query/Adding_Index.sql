SELECT * FROM [dbo].[Depression+Student+Dataset]

-- Adding Index Column 
SELECT * FROM [dbo].[Depression+Student+Dataset]


ALTER TABLE [dbo].[Depression+Student+Dataset] 
ADD Index_Column int IDENTITY(1,1)


UPDATE [dbo].[Depression+Student+Dataset]
SET Depression = 'No' WHERE Depression=0

UPDATE [dbo].[Depression+Student+Dataset]
SET Depression = 'Yes' WHERE Depression='1'

ALTER TABLE  [dbo].[Depression+Student+Dataset]
ALTER COLUMN Depression VARCHAR (max)



--SELECT Depression, COUNT(*) FROM  [dbo].[Depression+Student+Dataset]
--GROUP BY Depression
