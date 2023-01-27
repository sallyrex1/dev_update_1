with
    orders as (select * from {{ ref("stg_orders") }}),

    payments as (select * from {{ "stg_payments" }}),

    fct_orders as (
        select o.order_id, p.payment_id, amount
        from orders o
        left join payments p on o.order_id = p.order_id
    )

select * from fct_orders
