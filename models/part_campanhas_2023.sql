select * from {{source('sources', 'campanhas')}}
where date_part(year, data_inicio) = 2023