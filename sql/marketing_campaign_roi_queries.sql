CREATE DATABASE marketing_roi;
USE marketing_roi;
SELECT DATABASE();

SELECT *
FROM marketing_campaigns
LIMIT 5;

SELECT SUM(Revenue) AS Total_Revenue
FROM marketing_campaigns;

SELECT SUM(Ad_Spend) AS Total_Ad_Spend
FROM marketing_campaigns;

SELECT SUM(Conversions) AS Total_Conversions
FROM marketing_campaigns;

SELECT
    Channel,
    SUM(Revenue) AS Total_Revenue
FROM marketing_campaigns
GROUP BY Channel
ORDER BY Total_Revenue DESC;

SELECT
    Channel,
    SUM(Revenue) AS Total_Revenue,
    SUM(Ad_Spend) AS Total_Ad_Spend,
    ROUND(
        ((SUM(Revenue) - SUM(Ad_Spend))
        / SUM(Ad_Spend)) * 100,
        2
    ) AS ROI_Percentage
FROM marketing_campaigns
GROUP BY Channel
ORDER BY ROI_Percentage DESC;

SELECT
    Channel,
    SUM(Clicks) AS Total_Clicks,
    SUM(Conversions) AS Total_Conversions,
    ROUND(
        (SUM(Conversions) / SUM(Clicks)) * 100,
        2
    ) AS Conversion_Rate_Percentage
FROM marketing_campaigns
GROUP BY Channel
ORDER BY Conversion_Rate_Percentage DESC;

SELECT
    Region,
    SUM(Revenue) AS Total_Revenue,
    SUM(Ad_Spend) AS Total_Ad_Spend,
    SUM(Conversions) AS Total_Conversions,
    ROUND(
        ((SUM(Revenue) - SUM(Ad_Spend))
        / SUM(Ad_Spend)) * 100,
        2
    ) AS ROI_Percentage
FROM marketing_campaigns
GROUP BY Region
ORDER BY ROI_Percentage DESC;

SELECT
    Campaign_Name,
    SUM(Revenue) AS Total_Revenue,
    SUM(Ad_Spend) AS Total_Ad_Spend,
    SUM(Conversions) AS Total_Conversions,
    ROUND(
        ((SUM(Revenue) - SUM(Ad_Spend))
        / SUM(Ad_Spend)) * 100,
        2
    ) AS ROI_Percentage
FROM marketing_campaigns
GROUP BY Campaign_Name
ORDER BY ROI_Percentage DESC;

SELECT
    Month,
    SUM(Revenue) AS Total_Revenue,
    SUM(Ad_Spend) AS Total_Ad_Spend,
    SUM(Conversions) AS Total_Conversions,
    ROUND(
        ((SUM(Revenue) - SUM(Ad_Spend))
        / SUM(Ad_Spend)) * 100,
        2
    ) AS ROI_Percentage
FROM marketing_campaigns
GROUP BY Month
ORDER BY Month;

SELECT
    Campaign_Name,
    Channel,
    SUM(Ad_Spend) AS Total_Ad_Spend,
    SUM(Revenue) AS Total_Revenue,
    ROUND(
        ((SUM(Revenue) - SUM(Ad_Spend))
        / SUM(Ad_Spend)) * 100,
        2
    ) AS ROI_Percentage
FROM marketing_campaigns
GROUP BY Campaign_Name, Channel
HAVING SUM(Ad_Spend) > 100000
   AND (
       ((SUM(Revenue) - SUM(Ad_Spend))
       / SUM(Ad_Spend)) * 100
   ) < 100
ORDER BY ROI_Percentage ASC;

SELECT
    Channel,
    ROUND(SUM(Revenue), 2) AS Total_Revenue,
    ROUND(SUM(Ad_Spend), 2) AS Total_Ad_Spend,
    ROUND(
        SUM(Revenue) / SUM(Ad_Spend),
        2
    ) AS ROAS
FROM marketing_campaigns
GROUP BY Channel
ORDER BY ROAS DESC;


SELECT
    Customer_Segment,
    SUM(Revenue) AS Total_Revenue,
    SUM(Ad_Spend) AS Total_Ad_Spend,
    SUM(Conversions) AS Total_Conversions,
    ROUND(
        ((SUM(Revenue) - SUM(Ad_Spend))
        / SUM(Ad_Spend)) * 100,
        2
    ) AS ROI_Percentage,
    ROUND(
        (SUM(Conversions) / SUM(Clicks)) * 100,
        2
    ) AS Conversion_Rate_Percentage
FROM marketing_campaigns
GROUP BY Customer_Segment
ORDER BY ROI_Percentage DESC;