with source as (

    select * from {{ source('northwind', 'invoices') }}
)


select
    *,
    current_timestamp() as insert_timestamp
from source
