{{ config(materialized='view')}}
 select status,count(*)as transaction_count from RAW.STRIPE.PAYMENT group by status