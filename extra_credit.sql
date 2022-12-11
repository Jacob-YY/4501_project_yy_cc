
            select count(*) from uber_trips where pickup_datetime<'2015-02-01' and
            pickup_datetime>=(select sunset_time from sunset_sunrise where sunset_time like '%2015-01-31%');
        
            select count(*) from taxi_trips where pickup_datetime<'2015-02-01' and
            pickup_datetime>=(select sunset_time from sunset_sunrise where sunset_time like '%2015-01-31%');
        