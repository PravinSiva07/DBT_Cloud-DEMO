{% macro get_season(column) %}
    CASE WHEN MONTH(TO_TIMESTAMP({{column}})) in (12,1,2)
    THEN 'WINTER'
    WHEN MONTH(TO_TIMESTAMP({{column}})) in (3,4,5)
    THEN 'SPRING'
    WHEN MONTH(TO_TIMESTAMP({{column}})) in (6,7,8)
    THEN 'SUMMER'
    ELSE 'AUTUMN' 
    END 

{% endmacro %}

{% macro get_daytype(column) %}
    CASE 
WHEN DAYNAME(TO_TIMESTAMP({{column}})) in ('Sat','Sun')
THEN 'WEEKEND'
ELSE 'BUSINESSDAY'
END
{% endmacro %}