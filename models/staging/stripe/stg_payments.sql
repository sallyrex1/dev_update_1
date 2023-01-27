with
    payments as (
        select id as payment_id, orderid as order_id, paymentmethod, status, amount, created
        -- ,_BATCHED_AT
        from {{ source("stripe", "payment") }}
    )
select *
-- limit 2
from payments
