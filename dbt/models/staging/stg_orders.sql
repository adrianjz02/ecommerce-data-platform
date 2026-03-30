with source as (

    select * from {{ ref('raw_orders') }}

),

cleaned as (

    select
        -- primary key
        order_id,

        -- foreign key
        customer_id,

        -- type casting & normalization
        cast(order_date as date)                        as order_date,
        lower(trim(status))                             as order_status,
        coalesce(cast(total_amount as numeric), 0)      as total_amount,
        lower(trim(payment_method))                     as payment_method,

        -- derived columns
        lower(trim(status)) = 'completed'               as is_completed,
        lower(trim(status)) = 'cancelled'               as is_cancelled,
        lower(trim(status)) = 'returned'                as is_returned,
        format_date('%Y-%m', cast(order_date as date))  as order_month

    from source

)

select * from cleaned
