# TechHub Electronics E-Commerce Analysis   
## About TechHub   
TechHub is a global e-commerce platform specialising in electronics and consumer technology products. Since their founding in 2018, the company has grown from a startup to an international retailer, distributing the latest consumer technology from leading brands like Apple, Samsung, and ThinkPad. Operating through their web platform and mobile application, TechHub delivers high-quality products and service to its customers worldwide.   

## Project Goals   
This project focuses on extracting meaningful insights from TechHub's operational database (see data model) to support strategic decision-making across Finance, Sales, Product, and Marketing teams, enhancing customer experience delivery and driving business growth.   

**Stakeholder Questions for Analysis**    
- What were the sales trends from 2019 to 2022?   
-	What were the monthly and yearly growth rates during this time?   
-	How is the new loyalty program performing? Should the company keep using it?   
-	What were the refund rates? Specifically, focus on Apple products.   

For these questions, we focus on the 3 main metrics – **order counts**, **sales revenue**, and **AOV**.   

## Executive Summary   
- **Sales Trends**: Sales grew steadily from 2019 through 2021, **peaking in 2020 during the COVID-19 pandemic** before declining to pre-pandemic levels by late 2022. Over the four years (2019-2022), the company generated **$28M in total sales** across **108K orders** from **87.6K customers**, with **AOV of $253**. 2020 had the highest revenue and AOV, while 2021 recorded the highest unit sold.   
- **Growth Rates**: 2020 experienced largest YoY growth with **total orders doubled** and **revenue tripled** from 2019. However, 2022 saw a sharp reversal with sales declining **40-45% from 2021 levels**. The steepest monthly decline occurred in **October 2022**, while **March 2020** saw the strongest MoM surge of **50%** as pandemic-driven demand accelerated.   
- **Loyalty Program**: The loyalty program achieved breakthrough performance in 2021, surpassing non-loyalty sales for the first time after steady growth since 2019.   
- **Refund Rates**: Refund rates **averaged 4% annually by units**, peaking in 2020 at **9%** before declining to **0% in 2022** (likely due to incomplete data). **Laptops showed the highest refund rates**, with **Apple products** accounted for **57% of all refunds**.   

## Detailed Analysis   
### Product Performance   
<p align="center">
  <img width="700" height="208" alt="product performance" src="https://github.com/user-attachments/assets/969b2245-3eed-4522-bb28-0add2cdb8bd1" />   
</p>   

- **Most popular product**: Apple Airpods Headphones is the most popular product, accounting for **45%** of total orders sold and generating **$7.7M** in revenue.
- **High-performing products**: The top 4 products - **4K Gaming Monitor, Apple Airpods Headphones, Macbook Air and Thinkpad Laptop** - generate **96%** of total revenue, totalling **$27M** in sales. All three except Airpods are high-value products with AOV significantly above the $260 portfolio average.   
- **Underperforming product**: Since launching in early 2020, Bose Soundsport Headphones has consistently underperformed, generating only **0.02% of total orders** and **0.01% of revenue** - an **average of 1-3 orders** per month.   
- **Apple products**: Apple is a key brand, contributing **48% of total orders and 50% of sales**. Two of its products rank among the top four by value:
  - IPhone: High AOV (**$741**) but less than **1%** of total product sales. Sales are volatile, with sharp fluctuations.
  - MacBook Air: Experienced highest growth rate out of all products, with orders and sales increasing **5–6x from October 2019 to April 2020**, likely driven by remote work and study demand.   
- **Samsung products**: Drive a large share of orders (**27%**) but contribute only **~2.9% of total sales**, suggesting performance review.

### Seasonality   
<p align="center">
  <img width="401" height="274" alt="seasonality" src="https://github.com/user-attachments/assets/a9f443d6-d63a-4356-b246-7c453f48f2eb" />
</p>   

Sales follow **predictable seasonal patterns across 2019-2022**. The highest sales months are **January, September, November, and December**, accounting for **~37% of annual orders and sales**, driven by holiday shopping and back-to-school demand. **February and October** have the lowest orders and sales every year, with **October 2022** being the lowest performing month in the 4-year period (**825 orders, $178K sales, and AOV of $216**).   

### Geographical Trends   
- TechHub serves customers across **193 countries**, with the **USA dominating at 47% of total revenue and orders**. Revenue concentration is significant: the **top 12** countries account for **80% of sales and orders**, with **5 of these countries located in EMEA (primarily Europe)**.
- **Japan** presents a premium market opportunity with the **highest AOV ($393)** among major markets (**49% above the top-12 average of $264**). Despite only ranking 7th in order volume, Japan comes 4th in revenue, indicating high-value purchases.   
- **North America (NA)** leads with **$14.5M revenue and 55K orders**, with its sales highly concentrated in the **USA (91%) and Canada (8%)**. **APAC has the highest AOV of $278**, presenting an opportunity to focus on high-value products for this region. Within APAC, Japan delivers nearly identical revenue to Australia (region's top country) while only generating **half of Australia's order volume**, reinforcing Japan's position as a high-value market.   

### Marketing & Customer Behaviour Analysis   
- **Note on Data Quality**: A notable portion of records show values as "unknown" - **4K orders for account creation method and 1K orders for marketing channel**. The company should review and enhance its data collection process to improve data accuracy, strengthen customer insights, and optimise marketing strategies.   
- **Marketing Channel**: Direct and email marketing drive **95% of total sales and orders**, making them the most effective channels. The affiliation channel, while much smaller in volume, has the **highest AOV of $302 and retention rate of 25%**.   
- **Account Creation Method**: Desktop and mobile phones account for approximately **95% of all customer registrations**. **Desktop** method show the **strongest performance** across all metrics, with a **20% retention rate**.   
- **Purchase Platform**: Of the two platforms, website dominates with **87% of orders (89K), 96% of sales ($27M), and a much higher AOV ($304 vs $44)** than the mobile app. This gap is due to product mix differences: low-value items like *Samsung Charging Cable Pack* and *Samsung Webcam* are the top 2 best-sellers on the mobile app, while *Apple Airpods Headphones* and *27in 4K Gaming Monitor* leads website sales.   

### Loyalty Program   
**Overall Performance**   
- Loyalty program initially **underperformed during 2019-2020** but achieved **breakthrough in 2021**, surpassing non-loyalty sales for the first time (**19K orders, $4.8M sales, $249 AOV**) and maintaining this lead until 2022.   
-	Loyalty AOV has **grown steadily** during the four-year period (**~5% YoY**), while non-loyalty AOV has **declined ~21% YoY since 2020**, indicating a higher-value customer segment among loyalty members.
-	**APAC** has the **highest loyalty program participation rate of 72%**, compared to an average of **40% across other regions**.   

**Product Performance**   
- Loyalty members spend more across all products, with an **AOV of $260 vs. $240** compared to non-loyalty customers.   
- **Samsung Webcam** ranks among the **top 3 products (5K orders, $285K sales)** for loyalty members, consistently outperforming non-loyalty customers.   
- **Apple products**: Non-loyalty members dominate Apple's product purchases. While *Airpods* is the best selling product across both groups, *Macbook Air* severely underperforms with loyalty group, with **first purchase from loyalty members in 2021**. Apple Iphone shows **no loyalty purchases**, suggesting limited program appeal for high-end Apple buyers.   

**Marketing & Customer Behaviour**   
- **Marketing Channels**: Email marketing consistently drives stronger loyalty performance, with sales and orders **surpassing non-loyalty customers since March 2020**, while **affiliate marketing underperforms across all metrics**. This indicates that loyalty members are more responsive to direct and personalised communication.   
- **Account Creation Method**: Loyalty engagement is **strongest among customers who sign up via mobile or TV platforms**. Sales and orders from mobile sign-ups have exceeded non-loyalty since early 2020, and **79% of TV sign-ups** belong to the loyalty program.   
- **Purchase Platform**: Loyalty program records **higher sales than non-loyalty customers on the mobile app** and perform better there than on the website. Loyalty sales on the mobile app have exceeded non-loyalty purchases across all four years, with AOV consistently higher since 2020 despite declining order volumes from 2021.   

**Other Findings**   
- **Repeat Customers**: Non-loyalty customers have a **higher repeat purchase rate (17.3%) than loyalty members (13.1%)**, indicating retention challenges within the program.
- **Refunds**: Loyalty members show **higher refund rates (6.23%) and counts (2.8K)** than non-loyalty customers, possibly reflecting easier return policies.

### Refund Rates   
- **Overall Trends**: On average, refund rate is on average **4.64% (1.7K orders)** per year, **declining since 2020**. Total refunded sales over four years is **$2.2M**. **NA** has the **highest refund rate** at **5.37%**, while **average per region** is **4.7%**.   
- **Product Performance**:   
  - *ThinkPad Laptop* and *Macbook Air Laptop* record the highest refund rates at **11.76%** and **11.43%** respectively. Higher value products (with high AOV) are more likely to be returned.   
  - **Apple products** account for **57.8%** of refunds across all products, totalling approximately **$1.2M** in refunded sales. *Apple Iphone* is the **third most refunded product (7.64% refund rate)**, while *Apple Airpod* has the **highest refund count with 2.6K refunded orders**.   
- **Marketing & Customer Behaviour**:
  - **Social media marketing** drives the highest refund rate at **7.58% (98 orders)**, followed by **direct marketing** at **5.03% (4K orders)**.
  - By **account creation method**, customers who created accounts via **TV** show the highest refund rate (**9.76%, 8 out of 82 orders**), followed by **tablet** users at **7.58%**.
  - **Desktop users** and **direct marketing channels** record the **highest refund volumes**, with **4,224 refunded orders each**.    

## Recommendations   
### Product Sales   
- **Diversify product portfolio**: The top 4 products generate 96% of revenue, creating significant risk if market conditions change or competitors emerge. Expand its product mix by testing and promoting new or products to reduce concentration.   
- **Discontinue low performer**: With poor performance across all metrics, TechHub should consider discontinue or replace Bose Soundsport Headphones with higher-potential alternatives.   
- **Optimise Iphone sales strategy**: Despite being a high-value product, Iphone sales are low and volatile. Investigate pricing, marketing, and inventory factors, and consider product bundling (e.g. with AirPods - the best-seller) to leverage the popularity of complementary Apple items.   

### Seasonality   
- **Leverage predictable seasonal patterns**: Consistent seasonal trends across all years provides a strong basis for data-driven inventory planning - increasing stock levels ahead of peak months and reducing restocks during February and October, the weakest months.   
- **Stimulate low-season sales**: Introduce clearance campaigns or targeted discounts in February and October, potentially themed around events such as Valentine’s Day.   
- **Time product launch strategically**: Avoid launches in February and October and schedule releases in late August or early November to capture back-to-school and holiday demand surges.   

### Countries & Regions   
- **Focus on top 12 markets**: Concentrate expansion and marketing efforts on the top 12 countries (80% of sales) rather than spreading resources across all 193 markets.   
- **Leverage high-value APAC markets**: Focus particularly on Japan and target this market with high-value product bundles and exclusive loyalty offers.   

### Marketing   
- **Improve data capture**: Implement mandatory field tracking and system validation to improve data quality at point of capture.   
- **Optimise marketing mix**: Continue investing in direct and email marketing, which drive the strongest performance. Re-evaluate the affiliate channel: while smaller in volume, its high AOV and retention rate suggest potential for new customer acquisition if cost-effective.   
- **Improve mobile app experience**: Since the website outperforms the mobile app in sales and AOV, conduct UX and performance audits on the app to identify friction points and apply best practices from the website.   

### Loyalty Program   
- The loyalty program has shown steady improvement and **should be maintained with ongoing performance monitoring**.   
- **Targeted engagement strategies**: Loyalty members respond best to personalised channels such as direct and email marketing, and mobile sign-ups show the strongest loyalty conversion. TechHub should enhance app experience and introduce exclusive app-based rewards to strengthen engagement. nvestigate TV sign-ups for potential expansion.   
- **Address Apple product weak participation**: MacBook Air and iPhone severely underperform with loyalty members. Investigate the cause and consider tailored incentives or exclusive loyalty pricing for Apple customers.   
- **Improve retention**: Non-loyalty customers show higher repeat purchase rates than loyalty members. Identify these repeat buyers and target them with email campaigns encouraging program enrolment.   

### Refund Management   
- **Reduce high-value product refund rates**: Laptops and Apple products account for the majority of refunds. Implement enhanced product descriptions, interactive demos, and post-purchase support to align expectations and reduce return rates.
- **Refine social media marketing**: Social media has the highest refund rate, possibly due to impulse purchases. Introduce clearer product info and possibly intent-focused ad targeting to reduce post-purchase dissatisfaction.
