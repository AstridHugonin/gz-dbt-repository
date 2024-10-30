SELECT *,
(operational_margin-ads_cost) AS ads_margin
FROM {{ ref('finance_days') }}
LEFT JOIN {{ ref('int_campaigns_days') }}
USING(date_date) 
ORDER BY date_date DESC