view: pickup_geo_mapping {
  sql_table_name: `dataform.pickup_geo_mapping` ;;

  dimension: pickup_latitude {
    type: number
    sql: ${TABLE}.pickup_latitude ;;
  }
  dimension: pickup_longitude {
    type: number
    sql: ${TABLE}.pickup_longitude ;;
  }
  dimension: road_name {
    type: string
    sql: ${TABLE}.road_name ;;
  }
  measure: count {
    type: count
    drill_fields: [road_name]
  }
}
