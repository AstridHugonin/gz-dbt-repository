{{ config(materialized = 'table') }}

SELECT 
EXTRACT(MONTH FROM date_date) AS datemonth,
ads_margin,
average_basket,
operational_margin,
ads_cost,
ads_impression,
ads_clicks,
quantity,
revenue,
purchase_cost,
margin,
shipping_fee,
logcost,
ship_cost

FROM {{ ref('finance_campaigns_day') }}
ORDER BY datemonth DESC
