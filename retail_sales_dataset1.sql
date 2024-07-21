SELECT * FROM public.retail_sales_dataset;

COPY PUBLIC.retail_sales_dataset FROM 'C:\Users\Teniola\Desktop\Data Analytics\retail_sales_dataset.csv' WITH CSV HEADER;

SELECT "product_category", SUM ("total_amount") AS "total_sales" FROM public.retail_sales_dataset GROUP BY "product_category";

SELECT "gender", AVG ("age") AS "average_age" FROM public.retail_sales_dataset GROUP BY "gender";

SELECT EXTRACT(YEAR FROM customer_date)AS year, EXTRACT (MONTH FROM customer_date) AS month, SUM("quantity") AS "total_quantity_sold"
FROM public.retail_sales_dataset GROUP BY EXTRACT(YEAR FROM customer_date),EXTRACT (MONTH FROM customer_date) ORDER BY year,month;

SELECT customer_id, SUM("total_amount") AS "total_amount_spent" FROM public.retail_sales_dataset
GROUP BY customer_id ORDER BY total_amount_spent DESC LIMIT 5;

SELECT customer_date, SUM("total_amount") AS "total_amount_spent" FROM public.retail_sales_dataset
GROUP BY customer_date ORDER BY customer_date;

SELECT gender, COUNT (transaction_id)AS number_of_transactions FROM public.retail_sales_dataset
GROUP BY gender;

SELECT product_category, AVG ("price_per_unit")AS "average_unit_price" FROM public.retail_sales_dataset
GROUP BY product_category;

SELECT "age", SUM ("total_amount") AS "total_sales" FROM public.retail_sales_dataset GROUP BY "age";

SELECT gender, COUNT(*)AS number_of_customers FROM public.retail_sales_dataset GROUP BY gender;

SELECT product_category, DATE_TRUNC('month', customer_date)AS month, SUM (total_amount) AS "total_sales" FROM public.retail_sales_dataset
GROUP BY product_category, DATE_TRUNC('month', customer_date) ORDER BY product_category, month;
