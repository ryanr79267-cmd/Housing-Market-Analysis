# Housing-Market-Trends
This repository tracks housing market trends, over the past decade, to identify shift in price, liquidity, and availability throughout the US using MS SQL Server, Power BI, and SSRS Report Builder.

## Overview
This project aims to display housing trends across the United States, ranging from state to neighborhood, to allow investors to indicate price changes, market liquidity, and housing availability between the years 2012-2024. The data is made available by Redfin

## Data Source

- [Redfin Housing Market Tracker](https://www.redfin.com/news/data-center/downloads/)
- Time Period : 1/1/2012 - 5/1/2024
- Geography type : Neighborhood All

## Tools Used

- Microsoft SQL Server
- Power BI
- SSRS Report Builder

## Data Understanding

- `PERIOD_BEGIN` : The beginning start date of the 90 day period.
- `REGION` : The region in which the home is located.
- `CITY` : The city in which the home is located.
- `STATE` : The state in which the home is located.
- `PROPERTY_TYPE` : The type of property a home is classified as.
- `MEDIAN_SALE-PRICE` : The median final sale price of homes that closed during a given time period.
- `MEDIAN_SALE_PRICE_YOY` : The growth of the median sale price.
- `TOTAL_HOMES_SOLD` : The total sum of closed home sales during a given period. A home is counted based on the date the sale closed–not the date it went under contract.
- `TOTAL_HOMES_SOLD_YOY` : The growth of total homes sold.
- `TOTAL_NEW_LISTING` : The total sum of homes newly listed for sale during a given period. A home is counted when it appears as available for sale
- `NEW_LISTINGS_YOY` : The growth of total new listings.
- `TOTAL_HOMES_AVAILABLE` : The total sum of homes available for sale on the final day of a given period. This represents an end-of-period snapshot, differentiating it from “active listings,” which captures the total number of homes that were for sale at any point in the period. Homes on the market for more than one year are excluded.
- `INVENTORY_YOY` : The growth of total homes available.
- `MEDIAN_DOM` : For homes that went under contract during a given period, the median number of days they were listed for before going under contract. Homes on the market for more than one year are excluded.
- `MEDIAN_DOM_YOY` : The growth of median days on market.

## SQL Query
* Data preparation
  * Import raw data into SQL Server as neighborhood_market_tracker
  * Explore data to discover type and length
  * Create a new table as neighborhood_market_tracker_prod with appropriate types and lengths
  * Insert data while turning empty data into nulls in order to produce accurate results while averaging
* Stored Procedure
  * Create stored procedure [usp_CEN_HomesSoldByPropertyType_Show](SQL/usp_CEN_HomesSoldByPropertyType_Show.sql)
  * Create parameters for report type, date, state, and property type
  * 
## Power BI Dashboard
*Features
  * Interactive map visual that allows state, city, and neighborhood drill-throughs.
  * Median sale price line graphs per state.
  * Median days on market line graph per state.
  * New listings per property type bar chart.
  * Total homes sold card visual.
  * Average median sale price card visual.
  * Median sale price percent growth YOY card visual.
  * Homes sold percent growth YOY card visual.
  * New listings percent growth YOU card visual.
  * Date slicer for filtering between dates.
  * State slicer for filtering states.
  * City slicer for filtering cities.
  * Property type slicer for filtering property types.
## SSRS Report

## Previews

## Contact
**LinkedIn:** [Ryan Rodriguez](https://www.linkedin.com/in/ryan-r-275911360/)
**Email:** @ryanr79267@gmail.com

