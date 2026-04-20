{{
    config(
        materialized = 'view'
    )
}}

/*
Raw pass-through of fct_orders for ad-hoc exploration / debugging.
Consumers of this view get every column on fct_orders implicitly —
a change on fct_orders propagates here silently.
*/

select *
from {{ ref('fct_orders') }}
