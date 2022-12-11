
            select strftime('%H', pickup_datetime) as hour_time, count(*) as trips, wind_speed, precipitation 
            from
            (select pickup_datetime from taxi_trips where strftime('%Y-%m-%d', pickup_datetime) between '2012-10-22' and '2012-11-06'
            union all
            select pickup_datetime from uber_trips where strftime('%Y-%m-%d', pickup_datetime) between '2012-10-22' and '2012-11-06' )
            left join
            (select datetime, wind_speed, precipitation from hourly_weather where strftime('%Y-%m-%d', datetime) between '2012-10-22' and '2012-11-06')
            on 
            strftime('%H', pickup_datetime) = strftime('%H', datetime)
            group by strftime('%H', pickup_datetime)
        