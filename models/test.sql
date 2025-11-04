select * from
{{ source('demo_db', 'BIKE') }}
limit 10