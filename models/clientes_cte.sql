with dedup as (
select *,
first_value(cliente_id)
over(partition by nome_cliente, email_cliente 
order by nome_cliente
rows between unbounded preceding and unbounded following) as result
from {{source('sources', 'clientes')}}
), remover as (
    select distinct result from dedup
), final as (
select * from {{source('sources', 'clientes')}} where cliente_id in (select result from remover)
)
select * from final