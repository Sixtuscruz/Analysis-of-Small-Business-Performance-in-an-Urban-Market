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
- Export data to Excel for Preliminary analysis.

## Data Cleaning & Processing

- Excel: Remove duplicates, handle missing values, and normalize data.
- SQL: Create tables and queries to filter, aggregate, and sort data.
- Data Transformation: Convert categorical responses into numerical values where needed for better analysis.

## Data Analysis

### Tools used

- SQL: Query and filter data for trends and correlations.
- Excel: Perform calculations, pivot tables, and summary statistics.
- Datawrapper: Create dynamic visualizations for business performance insights.

### Key Performance Indicators (KPIs)
#### 1. Profit Margin
Profit margin = (Revenue - Expenses) / Revenue. Since revenue and expenses are given in ranges, I’ll use midpoints for calculations:
- Revenue ranges: <100k (50k), 100k-500k (300k), 500k-1M (750k), >1M (1.5M assumed).
- Expense ranges: <50k (30k), 50k-300k (175k), 300k-700k (500k), >700k (1.50k assumed).

*Sample Calculation:*
- Business 1 (Retail, Lagos): Revenue = 300k, Expenses = 500k → Profit = 300k - 500k = -200k, Margin = -66.7% (loss).
- Business 4 (Manufacturing, Lagos): Revenue = 1.5M, Expenses = 175k → Profit = 1.325M, Margin = 88.3%.

*Findings:*
- *Average Profit Margin by Type:*
  - Retail: ~10% (many low-revenue businesses report losses).
  - Manufacturing: ~40% (higher revenue, moderate expenses).
  - Services: ~25% (balanced revenue and expenses).
- *By Location:*
  - Lagos: ~30% (driven by high-revenue manufacturing).
  - Kano: ~20% (mixed performance).
  - Port Harcourt: ~15% (more losses in retail).

#### 2. Revenue Distribution
- *Revenue Breakdown:*
  - <100k: 25 businesses (15%).
  - 100k-500k: 41 (25%).
  - 500k-1M: 38 (23%).
  - >1M: 62 (37%).
- *By Location:*
  - Lagos: 41% >1M (highest revenue concentration).
  - Kano: 34% >1M, 24% <100k (polarized).
  - Port Harcourt: 35% >1M, 19% <100k.

#### 3. Expense Distribution
- *Expense Breakdown:*
  - <50k: 47 (28%).
  - 50k-300k: 47 (28%).
  - 300k-700k: 35 (21%).
  - >700k: 37 (22%).
- *Top Expenses (Frequency):*
  - Rent: 137 (82%).
  - Salaries: 102 (61%).
  - Marketing: 92 (55%).
  - Power Supply: 88 (53%).
  - Inventory: 34 (20%).
  - Others: 11 (7%, e.g., food, feeding, shortage of workers).

### Step 3: Common Challenges
- *Challenge Frequency:*
  - Power Supply Issues: 149 (90%) – most pervasive.
  - High Rent Costs: 54 (33%).
  - Competition: 47 (28%).
  - Access to Credit: 34 (20%).
  - High Taxes: 31 (19%).
- *By Location:*
  - Lagos: Power (91%), Rent (35%), Competition (19%).
  - Kano: Power (87%), Competition (34%), Rent (29%).
  - Port Harcourt: Power (90%), Rent (32%), Access to Credit (24%).

### Step 4: Customer Demographics
- *Age Groups:*
  - 18-25: 47 (28%).
  - 26-35: 62 (37%).
  - 36-50: 47 (28%).
  - 51+: 10 (6%).
- *Gender:*
  - Balanced: 121 (73%).
  - Mostly Male: 28 (17%).
  - Mostly Female: 17 (10%).
- *Purchase Frequency:*
  - Daily: 92 (55%).
  - Weekly: 35 (21%).
  - Occasionally: 31 (19%).
  - Monthly: 8 (5%).
- *Occupation:*
  - Self-Employed: 62 (37%).
  - Salaried Worker: 38 (23%).
  - Student: 47 (28%).
  - Retired: 19 (11%).

### Step 5: Analysis by Business Type and Location
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

- *Lagos:*
  - High revenue (41% >1M), manufacturing-driven.
  - Power and rent dominate challenges.
- *Kano:*
  - Polarized revenue, strong student customer base.
  - Power and competition key issues.
- *Port Harcourt:*
  - Mixed performance, more credit access issues.








