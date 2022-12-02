with source as (

    select * from {{ source('northwind', 'purchase_orders') }}
)


select
    *,
    current_timestamp() as insert_timestamp
from source
