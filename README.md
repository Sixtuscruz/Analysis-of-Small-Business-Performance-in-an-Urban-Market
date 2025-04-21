# Analysis of Small Business Performance in an Urban Market

## Project Overview

### Objective

This project evaluates the performance and challenges of small businesses in a Nigerian urban market (e.g., Lagos, Kano, and Port Harcourt). This study will assess revenue trends, expenses, customer demographics, and business challenges, providing insights to support small business growth.

## Data Collection 

### Methodology 
- In this project analysis, we used Kobo Toolbox to design and distribute surveys to small business owners.
- Dataset Size: A total number of 166 survey samples were collected from business owners in Nigeria; 41 in Lagos, 47 from Kano, and 78 from Port Harcourt.
- Business Types: Manufacturing(59), Retail(64), Services(43).
- Collected structured data on key business factors, including:

### Data Storage

- Store responses in SQL database for structured querying.
- Export data to Excel from MySQl for Preliminary analysis.

## Data Cleaning & Processing

- Excel: Remove duplicates, handle missing values, and normalize data.

  - [See Excel Data analysis here](https://github.com/user-attachments/files/19836300/Analysis_of_Small_Business_Performance_in_an_Urban_Market_-_all_versions_-_False_-_2025-03-27-23-07-13.xlsx)

- SQL: Create tables and queries to filter, aggregate, and sort data.
- Data Transformation: Convert categorical responses into numerical values where needed for better analysis.

## Data Analysis

### Tools used

- SQL: Query and filter data for trends and correlations.
- Excel: Perform calculations, pivot tables, and summary statistics.
- Datawrapper: Create dynamic visualizations for business performance insights.

### Explanatory Data Analysis(EDA)

EDA inludes exploring business performances questions, such as;

- What type of business do you operate?
- Where has this business been operating in the last decade?
- What is your avarage monthly revenue?
- What are your avarage monthly expenses?
- What are your top 3 expenses?
- What are the biggest challenges your business faces?
- What is the age group of your typical customers?
- What is the gender distribution of your customers?
- How often do your customers make purchases?
- What is the occupation of your customers?
  - [Download/view questionnaire here](https://ee.kobotoolbox.org/x/p8U5mTxr)

#### Querying Dataset on MySQL

Here are some of the interesting codes/features i worked with:
```sql

Database set up:
CREATE DATABASE business_datab;

Table set up codes:

CREATE TABLE business_data (
    Id FLOAT,
    Business_Type VARCHAR(50),
    Business_Location VARCHAR(50),
    Revenue_Midpoint FLOAT,
    Expenses_Midpoint FLOAT,
    Rent INT,
    Salaries INT,
    Inventory INT,
    Marketing INT,
    Power_Supply INT,
    Others INT,
    Power_Supply_Issues INT,
    Access_to_Credit INT,
    High_Taxes INT,
    High_Rent_Costs INT,
    Competition INT,
    Profit FLOAT,
    Profit_Margin FLOAT,
    Growth_Rate FLOAT
);


Growth Rate codes:

SELECT 
    id,
    business_type,
    business_location,
    revenue_midpoint AS current_revenue,
    ((revenue_midpoint - expenses_midpoint) * 1.0 / expenses_midpoint) * 100 AS growth_rate
FROM business_data
WHERE expenses_midpoint IS NOT NULL;


Profit margin codes:

SELECT 
    Id,
    Business_Type,
    Business_Location,
    Revenue_Midpoint,
    Profit,
    Profit_Margin AS Provided_Profit_Margin,
    CASE 
        WHEN Revenue_Midpoint = 0 THEN NULL 
        ELSE ROUND(CAST(Profit AS FLOAT) / Revenue_Midpoint, 2) 
    END AS Calculated_Profit_Margin
FROM business_data;


Avarage KPIs by business Type codes:

SELECT 
    Business_Type,
    AVG(Profit_Margin) AS Avg_Profit_Margin,
    AVG(Growth_Rate) AS Avg_Growth_Rate,
    AVG(Revenue_Midpoint) AS Avg_Revenue,
    AVG(Expenses_Midpoint) AS Avg_Expenses
FROM business_data
GROUP BY Business_Type;

Common_challenges by frequency codes: 

SELECT 
    SUM(Power_Supply_Issues) AS Power_Supply_Issues_Count,
    SUM(Access_to_Credit) AS Access_to_Credit_Count,
    SUM(High_Taxes) AS High_Taxes_Count,
    SUM(High_Rent_Costs) AS High_Rent_Costs_Count,
    SUM(Competition) AS Competition_Count,
    (SUM(Power_Supply_Issues) * 100.0 / COUNT(*)) AS Power_Supply_Issues_Pct,
    (SUM(Access_to_Credit) * 100.0 / COUNT(*)) AS Access_to_Credit_Pct,
    (SUM(High_Taxes) * 100.0 / COUNT(*)) AS High_Taxes_Pct,
    (SUM(High_Rent_Costs) * 100.0 / COUNT(*)) AS High_Rent_Costs_Pct,
    (SUM(Competition) * 100.0 / COUNT(*)) AS Competition_Pct
FROM business_data;

common challenges by business location codes:

SELECT 
    Business_Location,
    ROUND(SUM(Power_Supply_Issues) * 100.0 / COUNT(*), 0) AS Power_Percentage,
    ROUND(SUM(High_Rent_Costs) * 100.0 / COUNT(*), 0) AS Rent_Percentage,
    ROUND(SUM(Competition) * 100.0 / COUNT(*), 0) AS Competition_Percentage,
    ROUND(SUM(Access_to_Credit) * 100.0 / COUNT(*), 0) AS Credit_Percentage
FROM 
    business_data
GROUP BY 
    Business_Location
ORDER BY 
    Business_Location;


Business performance metrics codes:

SELECT 
    Business_Type,
    ROUND(AVG(Revenue_Midpoint), 2) AS Avg_Revenue,
    MIN(Revenue_Midpoint) AS Min_Revenue,
    MAX(Revenue_Midpoint) AS Max_Revenue,
    SUM(Revenue_Midpoint) AS Total_Revenue,
    ROUND(AVG(Expenses_Midpoint), 2) AS Avg_Expenses,
    ROUND(AVG(Rent) * 100, 2) AS Percent_Rent,
    ROUND(AVG(Salaries) * 100, 2) AS Percent_Salaries,
    ROUND(AVG(Inventory) * 100, 2) AS Percent_Inventory,
    ROUND(AVG(Marketing) * 100, 2) AS Percent_Marketing,
    ROUND(AVG(Power_Supply) * 100, 2) AS Percent_Power_Supply,
    ROUND(AVG(Others) * 100, 2) AS Percent_Others,
    ROUND(AVG(Power_Supply_Issues) * 100, 2) AS Percent_Power_Supply_Issues,
    ROUND(AVG(Access_to_Credit) * 100, 2) AS Percent_Access_to_Credit,
    ROUND(AVG(High_Taxes) * 100, 2) AS Percent_High_Taxes,
    ROUND(AVG(High_Rent_Costs) * 100, 2) AS Percent_High_Rent_Costs,
    ROUND(AVG(Competition) * 100, 2) AS Percent_Competition,
    COUNT(*) AS Business_Count
FROM business_data
GROUP BY Business_Type
ORDER BY Business_Type;
```

### Key Performance Indicators (KPIs)

#### 1. Profit Margin
Profit margin = (Revenue - Expenses) / Revenue. Since revenue and expenses are given in ranges, I’ll use midpoints for calculations:
- Revenue ranges: <100k (50k), 100k-500k (300k), 500k-1M (750k), >1M (1.5M assumed).
- Expense ranges: <50k (30k), 50k-300k (175k), 300k-700k (500k), >700k (1.50k assumed).

*Sample Calculation:*
- Business 1 (Retail, Lagos): Revenue = 300k, Expenses = 500k → Profit = 300k - 500k = -200k, Margin = -66.7% (loss).
- Business 4 (Manufacturing, Lagos): Revenue = 1.5M, Expenses = 175k → Profit = 1.325M, Margin = 88.3%.

Findings: 
*Profit margin by business type*
- Manufacturing (31.9%).
- Retail (27.7%).
- Services (18.94%).

![profit margin by business type](https://github.com/user-attachments/assets/a50796c2-4cb1-44be-b6ef-712a840ea9eb)

*Profit margin by business location*
- Kano (23.13%).
- Lagos (19.89%).
- Port Harcourt (35.52%).


![profit margin by business location](https://github.com/user-attachments/assets/7f91d6ec-e172-411b-849c-b14247007fc2)


#### 2. Expense Distribution
- *Expense Breakdown:*
  - <50k: 52 (31%).
  - 50k-300k: 48 (29%).
  - 300k-700k: 29 (17%).
  - >700k: 37 (22%).
- *Top Expenses (Frequency):*
  - Rent: 111 (66%).
  - Salaries: 112 (67%).
  - Marketing: 108 (65%).
  - Power Supply: 124 (74%).
  - Inventory: 33 (19%).
  - Others: 12 (7%, e.g., food, feeding, shortage of workers).

#### 3. Common Challenges
- *Challenge Frequency:*
  - Power Supply Issues: 139 (83%) – most pervasive.
  - High Rent Costs: 63 (37%).
  - Competition: 55 (33%).
  - Access to Credit: 35 (21%).
  - High Taxes: 33 (19%).
     - [See interactive dashboard here](https://datawrapper.dwcdn.net/51Ghv/1/)

![51Ghv--common-challenges-by-frequency-](https://github.com/user-attachments/assets/dd33ac58-0dfe-47e0-ad1a-1723a9a3f933)

- *By Location:*
  - Lagos: Power (93%), Rent (46%), Competition (20%), Access to credit (17%).
  - Kano: Power (83%), Competition (36%), Rent (38%), Access to credit (17%).
  - Port Harcourt: Power (79%), Rent (33%), Competition (38%), Access to Credit (26%).
 
    - [See interactive dashboard here](https://datawrapper.dwcdn.net/48GFE/2/)
 
    ![48GFE-common-challenges-by-location-nbsp-](https://github.com/user-attachments/assets/ade9be3c-481c-4a97-a776-6d2630d772d4)

 #### 4. Growth Rate by business location
- *Breakdown:*
  - Lagos: 41 (1,926,500,000).
  - Kano: 47 (2,490,500,000).
  - Port Harcourt: 78 (3,977,000,000).

![Growth rate by business location](https://github.com/user-attachments/assets/e589d2c6-7b46-4be9-9dc3-a18fa5fe67ee)

  
### Analysis by Business Type and Location
- *Retail:*
  - Revenue: Often <500k (54%), struggles with profitability.
  - Challenges: Power (91%), Rent (41%).
  - Customers: Younger (18-35, 70%), daily purchases (67%).
- *Manufacturing:*
  - Revenue: High (>1M, 55%), better margins.
  - Challenges: Power (91%), Rent (31%).
  - Customers: Older (36-50, 47%), occasional/weekly purchases.
- *Services:*
  - Revenue: Mixed (500k-1M, 35%), moderate margins.
  - Challenges: Power (86%), Rent (28%).
  - Customers: Balanced age, daily purchases (58%).

    -![growth rate by business type](https://github.com/user-attachments/assets/fe2002af-cb35-4907-ac69-0764aa862e96)


- *Lagos:*
  - High revenue (41% >1M), manufacturing-driven.
  - Power and rent dominate challenges.
- *Kano:*
  - Polarized revenue, strong student customer base.
  - Power and competition key issues.
- *Port Harcourt:*
  - Mixed performance, more credit access issues.

## Findings
- *Average Profit Margin by Type:*
  - Retail: ~10% (many low-revenue businesses report losses).
  - Manufacturing: ~40% (higher revenue, moderate expenses).
  - Services: ~25% (balanced revenue and expenses).
- *By Location:*
  - Lagos: ~30% (driven by high-revenue manufacturing).
  - Kano: ~20% (mixed performance).
  - Port Harcourt: ~15% (more losses in retail).

### Data Visualization

- Here, i'm going to use Datawrapper for visualization to create an interactive dashboard.
- This visualization will use a clustered column to visualize business performance metrics, such as revenue trends, expense breakdowns, and challenge distributions.
   - [download interactive dashboard here](https://datawrapper.dwcdn.net/5Rx2L/2)

  ![5Rx2L-business-performance-metrics](https://github.com/user-attachments/assets/c8269a6b-354a-4ad0-8e2c-32a6fefb7bc5)

### Insights and Recommendations

1. *Infrastructure (Power Supply):*
   - 90% of businesses face power issues, especially manufacturing (high revenue potential). Recommendation: Government or private investment in reliable power solutions (e.g., solar subsidies).
2. *Cost Management (Rent):*
   - Rent is a top expense (82%) and challenge (33%). Recommendation: Shared workspaces or rent subsidies for small businesses.
3. *Access to Funding:*
   - 20% struggle with credit, notably in Port Harcourt. Recommendation: Microfinance programs targeting retail and services.
4. *Market Competition:*
   - 28% face competition, especially in Kano. Recommendation: Business training on differentiation (e.g., niche marketing).
5. *Customer Targeting:*
   - Retail thrives on daily purchases from younger customers (18-35). Recommendation: Digital marketing to boost visibility.

### Outcome
This analysis highlights that while manufacturing in Lagos shows strong performance, retail and services in all cities face profitability challenges due to power and rent costs. Addressing infrastructure and funding gaps could unlock growth, particularly for retail and services catering to daily customer needs.













