# TechHub Electronics E-Commerce Analysis   
## About TechHub   
TechHub is a global e-commerce platform specialising in electronics and consumer technology products. Since their founding in 2018, the company has grown from a startup to an international retailer, distributing the latest consumer technology from leading brands like Apple, Samsung, and ThinkPad. Operating through their web platform and mobile application, TechHub utilises a variety of marketing channels to deliver high-quality products and service to its customers worldwide.   

## Project Goals   
This project focuses on extracting meaningful insights from TechHub's operational database (see data model) to support strategic decision-making across Finance, Sales, Product, and Marketing teams, enhancing customer experience delivery and driving business growth.   

**Stakeholder Questions for Analysis**    
- What were the sales trends from 2019 to 2022?   
-	What were the monthly and yearly growth rates during this time?   
-	How is the new loyalty program performing? Should the company keep using it?   
-	What were the refund rates and average order value (AOV)? Specifically, focus on Apple products.   

For these questions, we focus on the 3 main metrics – **order counts**, **sales revenue**, and **AOV**.   

## Executive Summary   
- **Sales Trends**: Sales grew steadily from 2019 through 2021, **peaking in 2020 during the COVID-19 pandemic** before declining to pre-pandemic levels by late 2022. Over the four years (2019-2022), the company generated **$28M in total sales** across **108K orders** from **87.6K customers**, with an **average order value of $253**. Peak performance occurred in 2020 with the highest revenue (**$10M**) and AOV (**$300**), while 2021 recorded the highest unit sold (**36K**).   
- **Growth Rates**: 2020 experienced exponential growth with **units sold doubling** and **revenue tripling** YoY (**up 163% from 2019**). However, 2022 saw a sharp reversal with sales declining **40-45% from 2021 levels**. The steepest monthly decline occurred in October 2022, while March 2020 saw the strongest MoM surge of **50%** as pandemic-driven demand accelerated.
- **Loyalty Program**: The loyalty program has had very stable performance, with a steady increase across all metrics from 2019 to 2021, peaking at **$4.9M sales, 19.5K units sold, and $249 AOV in 2021**. Despite a slight decrease, these metrics outperform non-loyalty program users through 2022.
- **Refund Rates**: Refund rates **averaged 4% annually by units and 7% by revenue**, peaking in **2020 at 13% of revenue and 3.61% of units**, before declining to **0% in 2022** (likely due to incomplete data). **Laptops showed the highest refund rates** by category, with **Apple products accounting for 50% of all refunds**.

## Detailed Analysis   
### Product Performance   
<p align="center">
  <img width="700" height="208" alt="product performance" src="https://github.com/user-attachments/assets/969b2245-3eed-4522-bb28-0add2cdb8bd1" />   
</p>   

- **Most popular product**: *Apple Airpods Headphones* is the most popular product across the entire period and in each individual year, accounting for **45%** of total orders sold and generating **$7.7M** in revenue.
- **High-performing products**: The top 4 products - **4K Gaming Monitor, Apple Airpods Headphones, Macbook Air and Thinkpad Laptop** - generate **96%** of total revenue, totalling **$27M** in sales. Three of these (all except Airpods) are also the highest-value products with AOV significantly above the $260 portfolio average.   
- **Underperforming product**: Since launching in early 2020, *Bose Soundsport Headphones* has consistently underperformed, generating only **27 orders (0.02% of total)** and **$3K (0.01% of revenue) in total sales** - an **average of 1-3 orders** per month.
- **Apple products**: Apple is a key brand, contributing **48% of total orders and 50% of sales**. Two of its products rank among the top four by value:
  - *IPhone*: High AOV ($741) but less than 1% of total product sales. Sales are volatile, with sharp fluctuations.
  - *MacBook Air*: Showed the strongest and most consistent growth from Q4 2019 to Q1 2020, with orders and sales increasing **5–6x from October 2019 to April 2020**, likely driven by remote work and study demand.   
- **Samsung products**: Drive a large share of orders (27%) but contribute only **~2.9% of total sales**. Sales also declined in 2022, suggesting the company should review performance and consider alternative sales strategies.

### Seasonality   
<p align="center">
  <img width="401" height="274" alt="seasonality" src="https://github.com/user-attachments/assets/a9f443d6-d63a-4356-b246-7c453f48f2eb" />
</p>   

Sales follow **highly predictable seasonal patterns across 2019-2022**. The highest sales months are **January, September, November, and December**, accounting for **~37% of annual orders and sales**, driven by holiday shopping and back-to-school demand. **February and October** have the lowest orders and sales every year, approximately **50% below peak performance**, with **October 2022** being the lowest performing month in the 4-year period (**825 orders, $178K sales, and AOV of $216**). The company can leverage these consistent patterns to manage inventory strategically and optimise marketing and pricing strategies.   

### Geographical Trends   
- TechHub serves customers across **193 countries**, with the **USA dominating at 47% of total revenue and orders**. Revenue concentration is significant: the **top 12** countries account for **80% of sales and orders**, with **5 of these countries located in EMEA (primarily Europe)**.
- **Notable Country Insights**: **Japan** presents a premium market opportunity with the **highest AOV ($393)** among major markets (**49% above the top-12 average of $264**). Despite ranking 4th in revenue, Japan places only 7th in order volume, indicating high-value purchases. **Mexico** ranks in the top 12 by order volume, while **India** replaces it in the top 12 by revenue.
- **Regional Performance**: **North America (NA)** leads with **$14.5M revenue and 55K orders**, followed by **EMEA, APAC, and LATAM**. **NA** sales are highly concentrated with **USA (91%) and Canada (8%)**. **APAC has the highest AOV of $278**, presenting an opportunity to focus on high-value products for this customer segment. Within APAC, Australia generates **2x Japan's order volume** but only **~2% more revenue**, reinforcing Japan's position as a high-value market.

### Marketing & Customer Behaviour Analysis   
- **Note on Data Quality**: A notable portion of records show values as "unknown" - **3.96% (4K orders) for account creation method and 1.36% (1K orders) for marketing channel**. The company should review and enhance its data collection process to improve data accuracy, strengthen customer insights, and optimise marketing strategies.   
- **Account Creation Method**: Desktop and mobile phones account for approximately **95% of all customer registrations**. **Desktop** method show the **strongest performance** across all metrics, with a **20% retention rate**.   
- **Marketing Channel**: Direct and email marketing drive **95% of total sales and orders**, making them the most effective channels. The affiliation channel, while much smaller in volume, has the **highest AOV of $302 and retention rate of 25%**, suggesting potential for further investigation (pending cost analysis).   
- **Purchase Platform**: Sales occur across 2 purchase platforms - **website and mobile app**. The website dominates with **87% of orders (89K), 96% of sales ($27M), and a much higher AOV ($304 vs $44)** than the mobile app. This gap is due to product mix differences: low-value items like *Samsung Charging Cable Pack* and *Samsung Webcam* are the top 2 best-sellers on the mobile app, while *Apple Airpods Headphones* and *27in 4K Gaming Monitor* leads website sales.   

### Loyalty Program   

### Refund Rates   

## Recommendations   
