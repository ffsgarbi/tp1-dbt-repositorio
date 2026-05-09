{{
    config(
        materialized = 'ephemeral'
    )
}}

select *,
first_value(cliente_id)
over(partition by nome_cliente, email_cliente 
order by nome_cliente
rows between unbounded preceding and unbounded following) as result
from {{source('sources', 'clientes')}}