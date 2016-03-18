/* Berg data */

/* Always clean to not run against existing data. */
DROP KEYSPACE IF EXISTS timeseries;

CREATE KEYSPACE timeseries WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1 };

CREATE TABLE timeseries.berg_data (
  sensor_id text,
  iceberg_name text,
  year int,
  month int,
  day int,
  hour int,
  latitude: Double,
  longitude: Double,
  meters_above_sealevel int,
  surface_area_km int,
  density: int,
  core_temperature double,
  ocean_temperature double,
  air_temperature double,
  wind_direction int,
  wind_speed double,
  ocean_current_direction int,
  ocean_current_speed double,
  PRIMARY KEY ((sensor_id), year, month, day, hour)
 ) WITH CLUSTERING ORDER BY (year DESC, month DESC, day DESC, hour DESC);
 
INSERT INTO timeseries.berg_data
         (sensor_id, iceberg_name, year, month, day, hour, 
          latitude, longitude,
          meters_above_water, surface_area_km, density, 
          core_temperature, ocean_temperature, air_temperature, 
          wind_direction, wind_speed,
          ocean_current_direction, ocean_current_speed)
          VALUES ('ISID_001', 'B-15', 2016, 03, 15, 0.0, 0.0, 168, 11000, 920, 0.0, 0.0, 0.0, 230, 30.0,220,20.00);

INSERT INTO timeseries.berg_data
         (sensor_id, iceberg_name, year, month, day, hour, 
          latitude, longitude,
          meters_above_water, surface_area_km, density, 
          core_temperature, ocean_temperature, air_temperature, 
          wind_direction, wind_speed,
          ocean_current_direction, ocean_current_speed)
          VALUES ('ISID_001', 'B-15', 2016, 03, 16, 0.0, 0.0, 168, 11000, 920, 0.0, 0.0, 0.0, 230, 30.0,220,20.00);
          
INSERT INTO timeseries.berg_data
         (sensor_id, iceberg_name, year, month, day, hour, 
          latitude, longitude,
          meters_above_water, surface_area_km, density, 
          core_temperature, ocean_temperature, air_temperature, 
          wind_direction, wind_speed,
          ocean_current_direction, ocean_current_speed)
          VALUES ('ISID_001', 'B-15', 2016, 03, 17, 0.0, 0.0, 168, 11000, 920, 0.0, 0.0, 0.0, 230, 30.0,220,20.00);
          
INSERT INTO timeseries.berg_data
         (sensor_id, iceberg_name, year, month, day, hour, 
          latitude, longitude,
          meters_above_water, surface_area_km, density, 
          core_temperature, ocean_temperature, air_temperature, 
          wind_direction, wind_speed,
          ocean_current_direction, ocean_current_speed)           
          VALUES ('ISID_002', 'A-38', 2016, 03, 17, 0.0, 0.0, 155, 6900, 802, 0.0, 0.0, 0.0, 230, 30.0,220,20.00);
          
INSERT INTO timeseries.berg_data
         (sensor_id, iceberg_name, year, month, day, hour, 
          latitude, longitude,
          meters_above_water, surface_area_km, density, 
          core_temperature, ocean_temperature, air_temperature, 
          wind_direction, wind_speed,
          ocean_current_direction, ocean_current_speed)          
          VALUES ('ISID_003', 'B-15A', 2016, 03, 17, 0.0, 0.0, 142, 3100, 546, 0.0, 0.0, 0.0, 230, 30.0,220,20.00);
