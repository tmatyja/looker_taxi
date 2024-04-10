connection: "tomasz-m-connection"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: demo_taxi_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: demo_taxi_default_datagroup

explore: taxi {}

explore: geomapping {}

explore: pickup_geo_mapping {}

explore: k_means {
  join: k_means__nearest_centroids_distance {
    view_label: "K Means: Nearest Centroids Distance"
    sql: LEFT JOIN UNNEST(${k_means.nearest_centroids_distance}) as k_means__nearest_centroids_distance ;;
    relationship: one_to_many
  }
}
explore: taxi_final {}
