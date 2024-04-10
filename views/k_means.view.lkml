# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view

view: k_means {
  sql_table_name: `tomasz-m-sandbox.dataform.k_means` ;;

  dimension: centroid_id {
    type: number
    sql: ${TABLE}.CENTROID_ID ;;
  }
  dimension: nearest_centroids_distance {
    hidden: yes
    sql: ${TABLE}.NEAREST_CENTROIDS_DISTANCE ;;
  }
  dimension: pickup_latitude {
    type: number
    sql: ${TABLE}.pickup_latitude ;;
  }
  dimension: pickup_longitude {
    type: number
    sql: ${TABLE}.pickup_longitude ;;
  }
  dimension: pickup_point {
    type: location
    sql_longitude: ${pickup_longitude} ;;
    sql_latitude: ${pickup_latitude} ;;
  }

  measure: max_centroid_id {
    type: max
    sql: centroid_id ;;
  }

  measure: count {
    type: count
  }
}

view: k_means__nearest_centroids_distance {

  dimension: centroid_id {
    type: number
    sql: CENTROID_ID ;;
  }
  dimension: distance {
    type: number
    sql: DISTANCE ;;
  }
  dimension: k_means__nearest_centroids_distance {
    type: string
    hidden: yes
    sql: k_means__nearest_centroids_distance ;;
  }

}
