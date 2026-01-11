with raw as (
    select *
    from {{ source('landing', 'orders') }}
)

select
    *
from raw where o_ordersstatus IN ('P','O')