-- data penjualan iowa liquor dalam setahun

SELECT 
county, FORMAT_DATE ('%a', date) as weekday, extract (month from date) as Month,
item_description, store_name, pack, zip_code, vendor_number, bottles_sold
 FROM `bigquery-public-data.iowa_liquor_sales.sales`
where date between '2019-06-01' and '2020-06-01';

