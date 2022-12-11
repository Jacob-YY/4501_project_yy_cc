
        select strftime('%Y-%m-%d', pickup_datetime) as date, count(*) as trips_amount, sum(trip_distance) as distance
        from
        (select pickup_datetime, trip_distance from taxi_trips where strftime('%Y', pickup_datetime) = '2014'
        union all
        select pickup_datetime, trip_distance from uber_trips where strftime('%Y', pickup_datetime) = '2014')
        group by strftime('%m-%d', pickup_datetime)
        order by trips_amount desc
        limit 10
        