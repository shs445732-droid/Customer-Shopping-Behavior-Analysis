# Customer Shopping Behavior Analysis

## Business Analytics Internship Project

**Internship Organization:** Wahy Lab Solutions  
**Project:** Customer Shopping Behavior Analysis  
**Author:** Sreehari S.  
**Year:** 2026

## Project Overview

This project analyzes customer shopping behavior to identify purchasing patterns, customer segments, product performance, seasonal trends, and marketing-related purchase drivers.

SQL is used for data preparation, validation, analysis, and customer segmentation. Power BI is used to present the findings through an interactive dashboard.

## Objectives

- Analyze customer purchasing behavior.
- Identify sales performance by category, season, gender, location, and product.
- Segment customers based on previous purchase behavior.
- Examine discounts, promotional codes, subscriptions, payment methods, and shipping types.
- Build an interactive Power BI dashboard.
- Provide practical business recommendations.

## Dataset

The dataset contains **3,900 customer purchase records** and includes:

- Customer ID
- Age
- Gender
- Item Purchased
- Category
- Purchase Amount (USD)
- Location
- Size
- Color
- Season
- Review Rating
- Subscription Status
- Shipping Type
- Discount Applied
- Promo Code Used
- Previous Purchases
- Payment Method
- Frequency of Purchases

## Tools Used

- MySQL 8.0
- SQL
- Microsoft Power BI
- Microsoft Excel / CSV
- GitHub

## Customer Segmentation

| Previous Purchases | Segment |
|---:|---|
| 1–10 | New Customer |
| 11–30 | Regular Customer |
| 31–50 | Loyal Customer |

## Key Results

- Total Sales: **$233,081**
- Total Purchases: **3,900**
- Average Purchase: **$59.76**
- Clothing generated the highest category sales: **$104,264**
- Fall recorded the highest seasonal sales: **$60,018**
- Loyal customers generated approximately **$92,984** in sales.
- Regular customers generated approximately **$92,533** in sales.
- Sales without discounts were approximately **$133,670**, compared with **$99,411** with discounts.

## Power BI Dashboard

The dashboard contains four pages:

1. Executive Overview
2. Customer Analysis
3. Product & Sales Analysis
4. Marketing & Purchase Drivers

Dashboard screenshots are included in `Dashboard_Screenshots/`.

## Recommendations

- Strengthen inventory and marketing for high-performing Clothing products.
- Use loyalty and retention initiatives for Regular and Loyal customers.
- Apply discounts and promotional campaigns selectively rather than universally.
- Plan inventory and campaigns around seasonal demand.
- Monitor customer review ratings and investigate lower-rated areas.
- Promote high-performing products using customer and category insights.

## Limitations

- The dataset does not contain a transaction date, so time-series trends cannot be analyzed.
- A separate online/offline sales-channel field is not available in the dataset.
- Customer segmentation is a project-defined classification based on previous purchases.
- The analysis identifies patterns and associations; it does not establish causation.

## Repository Structure

```text
Customer-Shopping-Behavior-Analysis/
├── SQL/
│   ├── 01_Data_Cleaning.sql
│   ├── 02_SQL_Analysis.sql
│   └── 03_Customer_Segmentation.sql
├── PowerBI/
│   └── ADD_FINAL_PBIX_HERE.txt
├── Report/
│   └── Customer_Shopping_Behavior_Analysis_Internship_Report.pdf
├── Dashboard_Screenshots/
│   ├── 01_Executive_Overview.png
│   ├── 02_Customer_Analysis.png
│   ├── 03_Product_and_Sales_Analysis.png
│   └── 04_Marketing_and_Purchase_Drivers.png
├── customer_shopping_behavior_clean.csv
└── README.md
```

**Before publishing:** replace `ADD_FINAL_PBIX_HERE.txt` with your actual Power BI `.pbix` file.
