# Marketing Campaign ROI Analysis 📊

An end-to-end data analytics project that analyzes marketing campaign performance across channels, campaigns, regions, customer segments, and time. The project uses Python/Pandas for data preparation and analysis and Power BI/DAX for interactive business reporting.

## 🎯 Project Objective

The objective is to transform campaign-level marketing data into actionable business insights by measuring:

- Revenue and advertising spend
- Conversions
- ROI and ROAS
- Channel performance
- Campaign performance
- Regional performance
- Customer-segment performance
- Monthly performance

## 📁 Dataset

The cleaned dataset contains **1,500 records and 17 columns**.

| Column | Description |
|---|---|
| `Campaign_Date` | Date of the campaign record |
| `Campaign_Name` | Marketing campaign type |
| `Channel` | Marketing channel |
| `Region` | Geographic region |
| `Customer_Segment` | Customer category |
| `Impressions` | Number of ad impressions |
| `Clicks` | Number of clicks |
| `Conversions` | Number of conversions |
| `Ad_Spend` | Advertising expenditure |
| `Revenue` | Revenue generated |
| `CTR` | Click-through rate |
| `Conversion_Rate` | Conversion rate |
| `CPC` | Cost per click |
| `Cost_Per_Conversion` | Cost per conversion |
| `ROI` | Return on investment (%) |
| `ROAS` | Return on ad spend |
| `Month` | Campaign month |

## 🛠️ Tools & Technologies

- **Python** — data analysis and preprocessing
- **Pandas** — data cleaning, transformation, aggregation
- **Power BI** — interactive dashboard and visualization
- **DAX** — KPI and calculated-measure development
- **SQL** — analytical querying / supporting analysis

## 📐 Key Metrics

### ROI

```text
ROI % = (Revenue - Ad Spend) / Ad Spend × 100
```

Power BI measure:

```DAX
ROI % =
DIVIDE(
    [Total Revenue] - [Total Ad Spend],
    [Total Ad Spend],
    0
) * 100
```

### ROAS

```text
ROAS = Revenue / Ad Spend
```

Power BI measure:

```DAX
ROAS =
DIVIDE(
    [Total Revenue],
    [Total Ad Spend],
    0
)
```

## 📊 Overall Results

| KPI | Result |
|---|---:|
| Total Revenue | 335.46M |
| Total Ad Spend | 34.92M |
| Total Conversions | 155,368 |
| Overall ROI | 860.76% |
| Overall ROAS | 9.61 |

## 🔍 Key Business Insights

1. **Google Ads generated the highest revenue** at approximately **77.91M**, with 37,027 conversions.
2. **Facebook Ads recorded the highest ROI among the six main channels**, at approximately **903.45%**.
3. **Retargeting was the highest-ROI campaign**, at approximately **908.15%**, and generated about **77.43M** in revenue.
4. **New Customers generated approximately 212.61M in revenue**, around **63.4% of total revenue** (excluding the small Unknown segment from the denominator interpretation).
5. **April had the highest monthly ROI**, at approximately **967.02%**.
6. **North generated the highest regional revenue** among the named regions, at approximately **88.34M**, while **East had the highest ROI** among the named regions at approximately **882.57%**.
7. The dataset contains **Unknown** categories for region and customer segment. These were retained as visible data-quality categories rather than being presented as normal business segments.

## 📈 Power BI Dashboard

The dashboard includes:

- Total Revenue KPI
- Total Ad Spend KPI
- Total Conversions KPI
- ROI % KPI
- ROAS KPI
- Revenue by Channel
- Revenue by Month
- Revenue by Region
- ROI % by Channel
- Revenue by Campaign
- Conversions by Channel
- Interactive slicers for Region, Customer Segment, Channel, and Campaign Name

Add your dashboard screenshot to `images/dashboard.png` and your Power BI file to `powerbi/Marketing_Campaign_ROI.pbix` before publishing.

## 🧠 Business Questions Answered

- Which channel generated the most revenue?
- Which channel delivered the highest ROI?
- Which campaign generated the strongest return?
- Which month performed best based on ROI?
- Which regions generated the most revenue and ROI?
- How much revenue came from new versus returning customers?
- How efficiently was advertising spend converted into revenue?

## 🚀 Project Workflow

```text
Raw Marketing Data
        ↓
Data Cleaning & Validation
        ↓
Exploratory Data Analysis
        ↓
KPI & Metric Calculation
        ↓
DAX Measures
        ↓
Power BI Dashboard
        ↓
Business Insights
```

## 📂 Repository Structure

```text
marketing-campaign-roi-analysis/
│
├── data/
│   └── marketing_campaign_roi_cleaned.csv
│
├── python/
│   └── marketing_campaign_roi_analysis.ipynb
│
├── sql/
│   └── marketing_campaign_roi_queries.sql
│
├── powerbi/
│   └── Marketing_Campaign_ROI.pbix
│
|__ images/
│   └── dashboard.png
|
├── README.md
└── .gitignore
```


## 💡 Key Learning Outcomes

- Cleaning and validating structured marketing data
- Working with categorical and numerical variables
- Aggregating data for business reporting
- Creating ROI and ROAS metrics
- Building interactive Power BI dashboards
- Using DAX for calculated measures
- Translating analytical results into business insights

## 👩‍💻 Author

**Sayali Patil**

Data Analytics | Python | SQL | Power BI | Excel

---

### Note

The ROI figures are calculated from the dataset's Revenue and Ad_Spend fields using the standard ROI formula above. High ROI percentages should therefore be interpreted in the context of the dataset's revenue-to-ad-spend relationship rather than altered simply to make the figures smaller.
