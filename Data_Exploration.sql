Select *
From ProjectPortfolio..CovidDeaths
order by 3,4

--Select *
--From ProjectPortfolio..CovidVaccinations
--order by 3,4

--Let's select the data that we are going to use here
Select Location, date, total_cases, new_cases, total_deaths, population
From ProjectPortfolio..CovidDeaths
Order by 1,2

--Calculating the total cases vs total death percentage on country basis
-- Below 3rd line is requesting the data for individual country. If removed then it will show for all country
Select Location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as Death_Percentage
From ProjectPortfolio..CovidDeaths
--Where Location like '%India%'
Order by 1,2



--Calculating the total cases found percentage from total_cases Vs Population
Select Location, date, total_cases, population, (total_cases/population)*100 as Cases_Found
From ProjectPortfolio..CovidDeaths
Where Location like '%India%'
Order by 1,2
