create database if not exists world_layoffs;
use world_layoffs;
drop database if exists world_layoffs;

CREATE TABLE layoffs (
    company VARCHAR(55),
    location VARCHAR(55),
    industry VARCHAR(55),
    total_laid_off INT NULL,
    percentage_laid_off DECIMAL(5,2) NULL,
    l_date DATE,
    stage VARCHAR(55),
    country VARCHAR(55),
    funds_raised_millions DECIMAL(15,2) NULL
);
drop table layoffs;

show variables like'local_infile';
set global local_infile = 1;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/layoffs.csv'
INTO TABLE layoffs
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(company, location, industry, total_laid_off, percentage_laid_off, l_date, stage, country, funds_raised_millions);

select count(*) from layoffs;
select * from layoffs;
