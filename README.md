# Housing-Market-Trends
Built to demonstrate an end to end analytics workflow from raw market data preparation to stakeholder ready reporting this project tracks pricing, inventory, liquidity, and geographic market performance throughout the US using MS SQL Server, Power BI, and SSRS Report Builder.
## Previews
### Power BI dashboard filtered on Florida and all residential property types between the date of 1/1/24 - 12/31/24.
<img width="1951" height="1095" alt="image" src="https://github.com/user-attachments/assets/d97a6eb2-a326-483f-9da2-6e827742f19b" />

### Map summary of houses sold in 2024 for all residential property types.
<img width="1645" height="961" alt="image" src="https://github.com/user-attachments/assets/8a196622-a207-4c4e-b31e-7eccaf009cde" />

### Detailed report of all residential housing data in Florida for June 2024.
<img width="1563" height="1020" alt="image" src="https://github.com/user-attachments/assets/66d1a01d-28f5-4bdd-926c-1aed878b565c" />


## Overview
Housing markets change quickly. Buyers, sellers, investors, and business leaders need a reliable way to monitor market conditions and identify changes before they become obvious. This project aims to display housing trends across the United States, ranging from state to city to neighborhood, allowing investors to indicate price changes, market liquidity, and housing performance between the years 2012-2024.

## Data Source

- [Redfin Housing Market Tracker](https://www.redfin.com/news/data-center/downloads/)
- Time Period : 1/1/2012 - 5/1/2024
- Geography type : Neighborhood All

## Tools Used

- Microsoft SQL Server for data cleaning, transformation, modeling, stored procedures, and KPI calculations
- Power BI for interactive dashboards, geographic analysis, drill through reporting
- SSRS Report Builder for paginated reports for print-ready, parameter driven market summaries

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
  * Import raw data into SQL Server as neighborhood_market_tracker.
  * Explore data to discover type and length.
  * Create a new table as neighborhood_market_tracker_prod with appropriate types and lengths.
  * Insert data while turning empty data into nulls in order to produce accurate results while averaging.
* Stored Procedure Techniques
  * Parameter creation for data filtering.
  * Temporary table for query optimization.
  * Aggregation by date, property type, and state.
  * If statement for a summarized or detailed query depending on need.
  * Pivot table for a clean summarized set.
  * Case when statements to account for null parameters.
## Power BI Dashboard
* Features
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
* Key Insights
  * California has the highest median sale price.
  * Hawaii has the highest median days on market.
  * All residential has the highest new listings.
## SSRS Report
### Summary Report
* Parameters
  * `period_begin_year`
  * `type_of_property`
  * `report_type`
* Features
  * Map displaying total homes sold throughout the U.S.
  * Parameterized map selection based on year and property type.
  * Tooltip shows detailed property types sold.
  * Map hyperlinks to a detailed report based on state clicked.
### Detailed Report
 * Parameters
   * `period_begin_year`
   * `period_begin_month`
   * `state`
   * `property_type`
   * `report_type`
 * Features
   * Parameterized report with month selection.
   * Highlighted YOY values in red to represent decay.
   * Median sale price per region, property type, and date.
   * The amount of homes sold per region, property type, and date.
   * The amount of homes available per region, property type, and date.
   * The amount of new listings available per region, property type, and date.
## Contact
- **LinkedIn:** [Ryan Rodriguez](https://www.linkedin.com/in/ryan-r-275911360/) 
- **Email:** ryanr79267@gmail.com

