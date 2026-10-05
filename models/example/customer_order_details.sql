SELECT
    c.ID AS CUSTOMER_ID,
    c.FIRST_NAME,
    c.LAST_NAME,
    o.ID AS ORDER_ID,
    o.USER_ID,
    o.ORDER_DATE,
    o.STATUS
FROM {{ ref('customer') }} AS c
JOIN {{ ref('orders') }} AS o
    ON c.ID = o.USER_ID