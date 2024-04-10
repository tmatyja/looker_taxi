view: taxi {
  sql_table_name: `dataform.taxi` ;;
  drill_fields: [taxi_id]

  dimension: taxi_id {
    primary_key: yes
    type: string
    description: "A unique identifier for the taxi."
    sql: ${TABLE}.taxi_id ;;
  }
  dimension: company {
    type: string
    description: "The taxi company."
    sql: ${TABLE}.company ;;
  }
  dimension: dropoff_census_tract {
    type: number
    description: "The Census Tract where the trip ended. For privacy, this Census Tract is not shown for some trips."
    sql: ${TABLE}.dropoff_census_tract ;;
  }
  dimension: dropoff_community_area {
    type: number
    description: "The Community Area where the trip ended."
    sql: ${TABLE}.dropoff_community_area ;;
  }
  dimension: dropoff_latitude {
    type: number
    description: "The latitude of the center of the dropoff census tract or the community area if the census tract has been hidden for privacy."
    sql: ${TABLE}.dropoff_latitude ;;
  }
  dimension: dropoff_location {
    type: string
    description: "The location of the center of the dropoff census tract or the community area if the census tract has been hidden for privacy."
    sql: ${TABLE}.dropoff_location ;;
  }
  dimension: dropoff_longitude {
    type: number
    description: "The longitude of the center of the dropoff census tract or the community area if the census tract has been hidden for privacy."
    sql: ${TABLE}.dropoff_longitude ;;
  }
  dimension: extras {
    type: number
    description: "Extra charges for the trip."
    sql: ${TABLE}.extras ;;
  }
  dimension: fare {
    type: number
    description: "The fare for the trip."
    sql: ${TABLE}.fare ;;
  }
  dimension: payment_type {
    type: string
    description: "Type of payment for the trip."
    sql: ${TABLE}.payment_type ;;
  }
  dimension: pickup_census_tract {
    type: number
    description: "The Census Tract where the trip began. For privacy, this Census Tract is not shown for some trips."
    sql: ${TABLE}.pickup_census_tract ;;
  }
  dimension: pickup_community_area {
    type: number
    description: "The Community Area where the trip began."
    sql: ${TABLE}.pickup_community_area ;;
  }
  dimension: pickup_latitude {
    type: number
    description: "The latitude of the center of the pickup census tract or the community area if the census tract has been hidden for privacy."
    sql: ${TABLE}.pickup_latitude ;;
  }
  dimension: pickup_location {
    type: string
    description: "The location of the center of the pickup census tract or the community area if the census tract has been hidden for privacy."
    sql: ${TABLE}.pickup_location ;;
  }
  dimension: pickup_longitude {
    type: number
    description: "The longitude of the center of the pickup census tract or the community area if the census tract has been hidden for privacy."
    sql: ${TABLE}.pickup_longitude ;;
  }
  dimension: tips {
    type: number
    description: "The tip for the trip. Cash tips generally will not be recorded."
    sql: ${TABLE}.tips ;;
  }
  dimension: tolls {
    type: number
    description: "The tolls for the trip."
    sql: ${TABLE}.tolls ;;
  }
  dimension_group: trip_end_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.trip_end_timestamp ;;
  }
  dimension: trip_miles {
    type: number
    description: "Distance of the trip in miles."
    sql: ${TABLE}.trip_miles ;;
  }
  dimension: trip_seconds {
    type: number
    description: "Time of the trip in seconds."
    sql: ${TABLE}.trip_seconds ;;
  }
  dimension_group: trip_start_timestamp {
    type: time
    description: "When the trip ended, rounded to the nearest 15 minutes."
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.trip_start_timestamp ;;
  }
  dimension: trip_total {
    type: number
    description: "Total cost of the trip, the total of the fare, tips, tolls, and extras."
    sql: ${TABLE}.trip_total ;;
  }
  dimension: unique_key {
    type: string
    description: "Unique identifier for the trip."
    sql: ${TABLE}.unique_key ;;
  }
  dimension: pickup_point {
    type: location
    sql_longitude: ${pickup_longitude} ;;
    sql_latitude: ${pickup_latitude} ;;
  }

  dimension: dropoff_point {
    type: location
    sql_latitude: ${dropoff_latitude} ;;
    sql_longitude: ${dropoff_longitude} ;;
  }

  measure: count {
    type: count
    drill_fields: [taxi_id]
  }
}
