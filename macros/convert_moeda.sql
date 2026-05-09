{% macro campos_calculados_campanha() %}
    (data_fim::date - data_inicio::date) as total_dias,
    orcamento * 0.10 as margem_orcamento
{% endmacro %}