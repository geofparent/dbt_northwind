with source as (

    select * from {{ source('northwind', 'employees') }}
)


select
    *,
    current_timestamp() as insert_timestamp
from source
