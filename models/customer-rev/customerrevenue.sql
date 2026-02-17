{{ 
    config(
        materialized='table',      
        schema='l1_landing', 
        database='sleekmart_oms'     
    ) 
}}
SELECT
    OS.CustomerID,
    C.CustomerName,
    SUM(OS.OrderCount) AS OrderCount,
    SUM(OS.Revenue) AS Revenue
FROM
    {{ ref('orders_fact') }} OS
JOIN
    {{ ref('customer_stg') }} C ON OS.CustomerID = C.CustomerID
GROUP BY
    OS.CustomerID,
    C.CustomerName