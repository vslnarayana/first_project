{{ 
    config(
        materialized='table',      
        schema='l1_landing', 
        database='sleekmart_oms'     
    ) 
}}
SELECT
    OrderItemID,
    OrderID,
    ProductID,
    Quantity,
    UnitPrice,
    Quantity * UnitPrice AS TotalPrice,
    Updated_at
FROM
    {{ source('landing', 'orderitems') }} 