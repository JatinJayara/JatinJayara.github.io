-- SQL Project - Data Cleaning
-- dataset source - https://www.kaggle.com/datasets/swaptr/layoffs-2022

-- first thing we want to do is create a staging table. 
-- We want a table with the raw data in case something happens
drop table if exists layoffs_staging;
create table layoffs_staging like layoffs;
insert layoffs_staging
select*from layoffs;


-- now when we are data cleaning we usually follow a few steps
-- 1. check for duplicates and remove any
-- 2. standardize data and fix errors
-- 3. Look at null values and blank values
-- 4. remove any columns and rows that are not necessary - few ways


-- 1.removing duplicates
-- we can do this by using the windows function by the name row_number
-- create a new column and add those row numbers in.
-- the ones we want to delete hte rows where the row number is > 1 essentially
drop table if exists layoffs_staging2;
CREATE TABLE `layoffs_staging2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` int 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

insert layoffs_staging2 
select *, row_number() over(partition by company, location, industry,total_laid_off, 
percentage_laid_off, date,  stage, country, funds_raised_millions ) 
as row_num
from layoffs_staging;

delete from layoffs_staging2 
where row_num >= 2;


-- 2. standardize data 
-- we should set the blanks to nulls since those are typically 
-- easier to work with
update layoffs_staging2 
set industry = null 
where industry = '';

-- we can see that their are null industry values that can maybe populated 
-- write a query that if there is another row with the same company name,
-- it will update it to the non-null industry values
update layoffs_staging2 A
join layoffs_staging2 B
on A.company = B.company
set A.industry = B.industry
where A.industry is null
and B.industry is not null;


-- Let's also fix the date columns, we can use str to date to update this field
UPDATE layoffs_staging2
SET `date` = STR_TO_DATE(`date`, '%m/%d/%Y');

-- now we can convert the data type properly
ALTER TABLE layoffs_staging2
MODIFY COLUMN `date` DATE;


-- It seems the Crypto has multiple different variations. 
-- We need to standardize that - let's set all to Crypto
UPDATE layoffs_staging2
SET industry = 'Crypto'
WHERE industry IN ('Crypto Currency', 'CryptoCurrency');

-- we have some "United States" and some "United States." 
-- with a period at the end. Let's standardize this.
UPDATE layoffs_staging2
SET country = TRIM(TRAILING '.' FROM country);




-- 3.the null values in total_laid_off, percentage_laid_off, and 
-- funds_raised_millions all look normal.


-- 4.Delete Useless columns and rows we can't use or we dont require
DELETE FROM layoffs_staging2
WHERE total_laid_off IS NULL
AND percentage_laid_off IS NULL;

ALTER TABLE layoffs_staging2
DROP COLUMN row_num;
select* from layoffs_staging2


