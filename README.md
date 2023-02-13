# FinalProjectAdvancedDataModelling

Global Super Store have collected huge amounts of data from their business operations within the USA. This data has been collected in an excel sheet with the following data fields: 
*	Order ID and Order Date.
*	Ship Date and Ship Mode.
*	Total Cost and Product Price.
*	Customer ID, Name and Contact Details. 
*	City, State, Country and Postal Code.
*	Product ID, Category and Sub-Category.
*	Product Name and Quantity.
*	Discount, Shipping Cost and Order Priority.

Global Super Store want to restructure their database system in a proper database management system within MySQL. They also want to analyze existing data to understand their business performance and progress.

## Task 1: Create an ER diagram
Use the visual data modeling tool in MySQL Workbench to create a suitable ER diagram for the Global Super Store making use of the data fields within the company Excel file. The tables should be normalized to conform with the three fundamental normal forms. 

![image](https://user-images.githubusercontent.com/106580846/218460168-79fd1188-041c-4133-b472-8e1912859811.png)

## Task 2: Implement the data model
Use MySQL Workbench’s forward engineer feature to implement the Global Super Store data model inside MySQL server.

![task 2a](https://user-images.githubusercontent.com/106580846/218460595-71458851-7d62-4d52-9170-a6a4d8fe888d.png)

To check the Database creation, check the Schemas pane to see ‘globalsuperstore’ or run ‘show databases;’ code to see all databases.

![image](https://user-images.githubusercontent.com/106580846/218460704-2cbc8c09-11e4-4b8a-b6ff-67e10abe3d36.png)

## Task 3: Create a star schema
The marketing department at the Global Super Store Company want to build a campaign to promote the company’s products within the USA. First, they need to understand the company’s performance in this market by analyzing their sales data. They are interested in data related to products, locations and times only. 

Create a Star schema that includes relevant fact and dimensions tables with relevant attributes and data types.

#### Step 1 Identify the business process to deal with which is sales then identify the grain, the dimensions and the measures that will be used. 
###### Dimensions: 
*	Location.
*	Time.
*	Product
###### Facts:
*	Price of all products.
*	Profits of all products
*	Discounts of all products
*	Total cost
*	The quantity sold of each product.
*	The shipping cost of each product.
###### Levels of granularity:
*	Region, country state, and city.
*	Year, quarter, month, day 
*	Category, subcategory and product name

#### Step 2 Draw the star schema

![task 3](https://user-images.githubusercontent.com/106580846/218465366-929dab58-8959-4ff4-942d-0665b5152645.png)

## Task 4: Create a map chart
Use Tableau to investigate Global Super Store’s sales in the USA. Create a map chart that shows sales in different states within the USA. If you rollover a state, then you should be able to view the state name and sales 

![task 4](https://user-images.githubusercontent.com/106580846/218467597-d1adb8ef-0baf-42f0-a790-b672160cd97a.png)

Here is a link to the visualisation on Tableau Public https://public.tableau.com/views/Globalsuperstore_16759520720450/SalesinUSA?:language=en-US&:display_count=n&:origin=viz_share_link

## Task 5: Create a bubble chart
The Global Super Store needs to check their profits within the USA. Create a bubble chart in Tableau. When you rollover a bubble, you should be able to view the following information, 
*	State name
*	Quantity sold
*	Profits 
*	Shipping cost

![task 5](https://user-images.githubusercontent.com/106580846/218468079-eb619eeb-d2da-4f9f-89f7-f0a26488b17c.png)

Here is a link to the bubble chart on Tableau Public https://public.tableau.com/views/GlobalSuperStoreProfitsinUSA/ProfitsinUSA?:language=en-US&:display_count=n&:origin=viz_share_link

## Task 6: Create a line chart
The Global Super Store want to view sales trends in the USA over the last 4 years. Create a line chart in Tableau for states with Sales of more than $40000. 

![task 6](https://user-images.githubusercontent.com/106580846/218468430-b12475c0-0db2-48a0-890c-cad9279bb998.png)

Here is a link to the line chart on Tableau Public  https://public.tableau.com/views/GlobalSuperStoreSalesTrendinUSA/SalesTrendsinUSA?:language=en-US&:display_count=n&:origin=viz_share_link

## Task 7: Create an interactive dashboard
Create an interactive dashboard that includes the charts produced in the above tasks Name it ‘Sales and Profits in the USA’. If you click on a state, you should be able to view relevant sales and profits

![task 7](https://user-images.githubusercontent.com/106580846/218468724-a0ad57c8-3b52-4eaf-9c9b-3a4dca84550c.png)

 Here is a link to the dashboard on Tableau Public https://public.tableau.com/views/GlobalSuperStoreSalesProfitinUSA/SalesandProfitsintheUSA?:language=en-US&:display_count=n&:origin=viz_share_link



