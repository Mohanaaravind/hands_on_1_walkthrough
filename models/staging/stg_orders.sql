select
    order_id,
    user_id,
    status,
    gender,
    to_timestamp(replace(created_at,'UTC','')) as created_at,
    to_timestamp(replace(returned_at,'UTC','')) as returned_at,
    to_timestamp(replace(shipped_at,'UTC','')) as shipped_at,
    to_timestamp(replace(delivered_at,'UTC','')) as delivered_at,
    num_of_item
from {{ source('raw', 'orders') }}