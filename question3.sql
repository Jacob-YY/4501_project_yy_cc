
                            select sum(trip_distance)*0.95 as total_distance
                            from 
                            (select * from taxi_trips where strftime('%Y-%m', pickup_datetime) = '2013-07'
                             union all
                             select * from taxi_trips where strftime('%Y-%m', pickup_datetime) = '2013-07')

                            