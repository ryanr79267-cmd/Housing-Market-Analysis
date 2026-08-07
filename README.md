# Housing-Market-Trends
This repository tracks housing market trends, over the past decade, to identify shift in price, liquidity, and availability throughout the US using MS SQL Server, Power BI, and SSRS Report Builder.

## Overview
This project aims to display housing trends across the United States, ranging from state to neighborhood, to allow investors to indicate price changes, market liquidity, and housing availability between the years 2012-2024. The data is made available by Redfin, but must be cleaned and prepared for consumption in SQL before 

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

## Methodology

### 1. Data Preparation
- Import raw data into SQL Server as neighborhood_market_tracker
- Explore data to discover type and length
- Create a new table as neighborhood_market_tracker_prod with appropriate types and lengths
- Insert data while turning empty data into nulls in order to produce accurate results while averaging

### 2. Insights & Analysis

### 3. Reporting

## Key Findings

## Power BI Dashboard

## SSRS Report

## Previews

## Contact
**LinkedIn:** [Ryan](https://www.linkedin.com/in/ryan-r-275911360/)

