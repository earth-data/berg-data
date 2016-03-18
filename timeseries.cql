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
  meters_above_water int,
  surface_area_km int,
  density: int,
  core_temperature double,
  ocean_temperature double,
  air_temperature double,
  wind_direction int,
  wind_speed double,
  PRIMARY KEY ((sensor_id), year, month, day, hour)
 ) WITH CLUSTERING ORDER BY (year DESC, month DESC, day DESC, hour DESC);
