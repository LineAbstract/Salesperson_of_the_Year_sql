# REPORT.md Template

## INSTRUCTIONS:

Add your responses underneath each prompt. 

Your tone should be professional but informal: imagine that you are responding to these questions in an email after they were asked by a colleague or manager who stopped by your office on the way to a meeting.

---

1. Who was the top salesperson for the year?
        - Our top salesperson of the year is Dirk Stringer. 
        - He had 52 transactions and a total sales amount of $61,022,268.45.

2. How much better did the top salesperson do than the individual who came in second for the year?
        - Our top salesperson being Dirk Stringer with $61,022,268.45 in sales.
        - Our second best salesperson Michel DeFrance with $36,413,772.33 in sales. 
        - This is a difference of $24,608,496.12.
        - Dirk Stringer sales volume is 1.6758 times or 167.58% more than Michel DeFrance. 

3. Was there any relationship between the average sale amount for the top salespersons and the total sales?
        - It does appear that a higher Average Sales Amount leads to a higher Total Sales Amount, but there are exceptions. 
        - In the top 3 spots for Total Sales Amount, we see a direct correlation to the top 3 spots of highest Average Sales Amounts.
        - The middle group also has a fairly strong apparent correlation, but there are outliers either with higher Total Sales and lower Average Sale Amount or the inverse, lower Total Sales and higher Average Sale Amount. 
        - Most drastic outlier appears to be: 
            - Meander Smith who has a low Total Sales Amount (bottom third), yet a high Average Sales Amount (top third)

4. How do you think the top selling salesperson gained so many sales? What was their strategy?
        - Dirk sold to a dedicated few, for a total of 3 customers. CustomerID's: 9000, 9941, 18723.
        - Dirk also sold a dedicated few items, for a total of 3 products. ProductID's: 90, 276, 297.
                - Problem: Of the products Dirk sold, we have no record of Price (ProductID: 90) for the orders made to CustomerID 9000. 
        - Of the remaining two products (ProductID: 276, 297), it's clear that they are of high value, $3,399.99 and $2443.35 respectively.
        - It appears that Dirks strategy was to sell many high value products to just a few high value customers to get his numbers high.   

5. What was the top selling product for the year? What was the lowest selling? (For both dollar amount sold and quantity sold).
        - Top selling product by Quantity: 
                - "Touring-3000 Blue, 54",
                - 24175 sold,  
                - ProductID: 463
        - Top selling product by Dollar Amount: 
                - "Mountain-100 Silver, 38", 
                - $53,039,844 sold,
                - ProductID: 276
        - Lowest selling product by Quantity: 
                - "Chain Stays",
                - 169 sold, 
                - ProductID: 13
        - Lowest selling product by Dollar Amount (that we have data for): 
                - "Adjustable Race"
                - $849.60 sold,
                - ProductID: 1

6. What problems did you find in the data? (For example, where there any products without a price?)
        - Multiple items without a price associated, which may have an effect on lowest seling product by dollar amount. 
            - ProductIDs: 9, 26, 86, 90, 153
        - Of the products Dirk sold, we have no record of Price (ProductID: 90) for the orders made to CustomerID 9000, which may increase his total sales number further. 