with source as (

    select * from {{ source('northwind', 'order_details') }}
)


select
    *,
    current_timestamp() as insert_timestamp
from source
