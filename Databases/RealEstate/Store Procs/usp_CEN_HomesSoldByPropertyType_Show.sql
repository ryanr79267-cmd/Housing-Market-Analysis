USE [RealEstate]
GO

/****** Object:  StoredProcedure [dbo].[usp_CEN_HomesSoldByPropertyType_Show]    Script Date: 8/31/2026 7:14:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER PROC [dbo].[usp_CEN_HomesSoldByPropertyType_Show]
@report_type varchar(20) = 'SUMMARY',
@period_begin_year int = null,
@period_begin_month int = null,
@state varchar(30) = null,
@type_of_property varchar(50) = null
AS
	set nocount on
	drop table if exists #t1
	SELECT 
	 PERIOD_BEGIN
	,REGION
	,CITY
	,STATE
	,PROPERTY_TYPE
	,MEDIAN_SALE_PRICE
	,MEDIAN_SALE_PRICE_YOY
	,SUM(HOMES_SOLD) AS TOTAL_HOMES_SOLD
	,HOMES_SOLD_YOY
	,SUM(NEW_LISTINGS) AS TOTAL_NEW_LISTING
	,NEW_LISTINGS_YOY
	,SUM(INVENTORY) AS TOTAL_HOMES_AVAILABLE
	,INVENTORY_YOY
	,MEDIAN_DOM
	,MEDIAN_DOM_YOY
	into #t1
	FROM [dbo].[neighborhood_market_tracker_prod] (nolock)
	Where (year(period_begin) = case when @period_begin_year is null then year(period_begin) else @period_begin_year end)
		 AND (PROPERTY_TYPE = case when @type_of_property is null then PROPERTY_TYPE else @type_of_property end)
	GROUP BY PERIOD_BEGIN
		,STATE
		,CITY
		,PROPERTY_TYPE
		,REGION
		,MEDIAN_SALE_PRICE
	,MEDIAN_SALE_PRICE_YOY
	,HOMES_SOLD_YOY
	,NEW_LISTINGS_YOY
	,INVENTORY_YOY
	,MEDIAN_DOM
	,MEDIAN_DOM_YOY
	ORDER BY PERIOD_BEGIN desc
		,STATE
		,CITY
		,REGION
	
	if @report_type = 'summary'
	begin
		select Period_year,[STATE],TotalHomesSold=sum(total_homes_sold)
		,SUM(isnull([All Residential],0))[All Residential],sum(isnull([Condo/Co-op],0))[Condo/Co-op],sum(isnull([Multi-Family (2-4 Unit)],0))[Multi-Family (2-4 Unit)]
		,sum(isnull([Single Family Residential],0))[Single Family Residential],sum(isnull([Townhouse],0))[Townhouse]
		from
			(select period_year= Year(Period_Begin),[STATE],property_type,total_homes_sold=SUM(Total_HOMES_SOLD),total_homes_sold_pvt=SUM(Total_HOMES_SOLD) 
			from #t1 
			group by Year(Period_Begin),[STATE],property_type
		)src
		pivot(
			SUM(total_homes_sold_pvt)
			for property_type in ([All Residential],[Condo/Co-op],[Multi-Family (2-4 Unit)],[Single Family Residential],[Townhouse])
		)p
	group by Period_year,[STATE]
	order by period_year, [STATE]
	end
	else if @report_type = 'detail'
	begin
		select * from #t1
		WHERE STATE = case when @state IS NOT NULL then @state else STATE END 
				AND (month(period_begin) = case when @period_begin_month is null then month(period_begin) else @period_begin_month end)
		ORDER BY PERIOD_BEGIN,CITY,region
	end


GO

