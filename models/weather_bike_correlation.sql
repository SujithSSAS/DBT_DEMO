with CTE AS(

select 
t.*,
w.*

from
{{ ref('trip_fact') }} t
left join {{ ref('daily_weather') }} w
on t.STARTDATE = w.daily_weather

)

select * from CTE