
            select strftime('%Y-%m-%d', pickup_datetime) as date, wind_speed, count(*) as trips
            from 
            (select pickup_datetime from taxi_trips where strftime('%Y', pickup_datetime) = '2014'
            union all
            select pickup_datetime from uber_trips where strftime('%Y', pickup_datetime) = '2014')
            left join daily_weather on strftime('%Y-%m-%d', pickup_datetime) = datetime
            group by strftime('%m-%d', pickup_datetime)
            order by wind_speed desc
            limit 10
            