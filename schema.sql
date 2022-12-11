
        CREATE TABLE IF NOT EXISTS hourly_weather_data
        (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            datetime DATETIME,
            precipitation FLOAT,
            wind_speed FLOAT
        )
        
        CREATE TABLE IF NOT EXISTS daily_weather_data
        (
           id INTEGER PRIMARY KEY AUTOINCREMENT,
           datetime DATETIME,
           precipitation FLOAT,
           wind_speed FLOAT
        )
        
        CREATE TABLE IF NOT EXISTS taxi_data
        (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            pickup_datetime DATETIME,
            trip_distance FLOAT,
            tip_amount FLOAT,
            pickup_longitude FLOAT,
            pickup_latitude FLOAT,
            dropoff_longitude FLOAT,
            dropoff_latitude FLOAT 
        )
        
        CREATE TABLE IF NOT EXISTS uber_data
        (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            pickup_datetime DATETIME,
            trip_distance FLOAT,
            fare_amount FLOAT,
            pickup_longitude FLOAT,
            pickup_latitude FLOAT,
            dropoff_longitude FLOAT,
            dropoff_latitude FLOAT
        )
        
    CREATE TABLE IF NOT EXISTS sunset_sunrise (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        sunrise_time DATETIME,
        sunset_time DATETIME
    );

    CREATE TABLE IF NOT EXISTS sunset_sunrise (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        sunrise_time DATETIME,
        sunset_time DATETIME
    );
