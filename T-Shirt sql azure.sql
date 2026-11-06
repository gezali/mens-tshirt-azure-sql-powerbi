SELECT TOP (1000) * FROM [dbo].[Men_Tshirt]
-- Preprocessing the data 
-- Cleaning the Original_Price Column 
select top 10 * from Men_Tshirt
update Men_Tshirt
set Original_Price = TRIM(REPLACE(cast(Original_Price as varchar(max)),'?','')) 
where Original_Price like '%?%'

-- Cleaning the Sale_Price Column 
UPDATE Men_Tshirt
set Sale_Price = TRIM(Replace(cast(Sale_Price as VARCHAR(max)),'?',''))
where Sale_Price LIKE '%?%'


