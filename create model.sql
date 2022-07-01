CREATE or REPLACE MODEL `uasBigData.mdl_dnn_sales`
OPTIONS
  (model_type='DNN_REGRESSOR', hidden_units=[32,4], MAX_ITERATIONS=100,
  input_label_cols=['bottles_sold'], learn_rate=0.1, early_stop=TRUE) as

  SELECT 
county, FORMAT_DATE ('%a', date) as weekday, extract (month from date) as Month,
item_description, store_name, pack, zip_code, vendor_number, bottles_sold
 FROM `bigquery-public-data.iowa_liquor_sales.sales`
where date between '2019-06-01' and '2020-06-01';
