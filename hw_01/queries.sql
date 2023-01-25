select
	count(*) as cnt
from yellow_taxi_trips
where lpep_pickup_datetime::date = '2019-01-15' and lpep_dropoff_datetime::date = '2019-01-15';

select
	lpep_pickup_datetime::date as dt,
	max(trip_distance) as trip_distance
from yellow_taxi_trips
group by lpep_pickup_datetime::date
order by 2 desc;

select
	passenger_count,
	count(*) as cnt
from yellow_taxi_trips
where lpep_pickup_datetime::date = '2019-01-01' and passenger_count in (2, 3)
group by passenger_count;

select
	"DOLocationID",
	max(tip_amount) as tip_amount
from yellow_taxi_trips
where "PULocationID" = 7
group by "DOLocationID"
order by 2 desc;