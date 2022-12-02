with source as (

    select * from {{ source('northwind', 'purchase_order_details') }}
)


select
    *,
    current_timestamp() as insert_timestamp
from source
