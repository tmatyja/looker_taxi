view: geomapping {
  sql_table_name: `dataform.geomapping` ;;

  dimension: class {
    type: string
    sql: ${TABLE}.CLASS ;;
  }
  dimension: create_tim {
    type: string
    sql: ${TABLE}.CREATE_TIM ;;
  }
  dimension: create_use {
    type: string
    sql: ${TABLE}.CREATE_USE ;;
  }
  dimension: dir_travel {
    type: string
    sql: ${TABLE}.DIR_TRAVEL ;;
  }
  dimension: edit_date {
    type: number
    sql: ${TABLE}.EDIT_DATE ;;
  }
  dimension: edit_type {
    type: string
    sql: ${TABLE}.EDIT_TYPE ;;
  }
  dimension: ewns {
    type: number
    sql: ${TABLE}.EWNS ;;
  }
  dimension: ewns_coord {
    type: number
    sql: ${TABLE}.EWNS_COORD ;;
  }
  dimension: ewns_dir {
    type: string
    sql: ${TABLE}.EWNS_DIR ;;
  }
  dimension: f_cross {
    type: string
    sql: ${TABLE}.F_CROSS ;;
  }
  dimension: f_cross_st {
    type: number
    sql: ${TABLE}.F_CROSS_ST ;;
  }
  dimension: f_zlev {
    type: number
    sql: ${TABLE}.F_ZLEV ;;
  }
  dimension: flag_strin {
    type: string
    sql: ${TABLE}.FLAG_STRIN ;;
  }
  dimension: fnode_id {
    type: number
    sql: ${TABLE}.FNODE_ID ;;
  }
  dimension: l_censusbl {
    type: number
    sql: ${TABLE}.L_CENSUSBL ;;
  }
  dimension: l_f_add {
    type: number
    sql: ${TABLE}.L_F_ADD ;;
  }
  dimension: l_fips {
    type: number
    sql: ${TABLE}.L_FIPS ;;
  }
  dimension: l_parity {
    type: string
    sql: ${TABLE}.L_PARITY ;;
  }
  dimension: l_t_add {
    type: number
    sql: ${TABLE}.L_T_ADD ;;
  }
  dimension: l_zip {
    type: number
    sql: ${TABLE}.L_ZIP ;;
  }
  dimension: length {
    type: number
    sql: ${TABLE}.LENGTH ;;
  }
  dimension: logiclf {
    type: number
    sql: ${TABLE}.LOGICLF ;;
  }
  dimension: logiclt {
    type: number
    sql: ${TABLE}.LOGICLT ;;
  }
  dimension: logicrf {
    type: number
    sql: ${TABLE}.LOGICRF ;;
  }
  dimension: logicrt {
    type: number
    sql: ${TABLE}.LOGICRT ;;
  }
  dimension: objectid {
    type: number
    value_format_name: id
    sql: ${TABLE}.OBJECTID ;;
  }
  dimension: oneway_dir {
    type: string
    sql: ${TABLE}.ONEWAY_DIR ;;
  }
  dimension: pre_dir {
    type: string
    sql: ${TABLE}.PRE_DIR ;;
  }
  dimension: r_censusbl {
    type: number
    sql: ${TABLE}.R_CENSUSBL ;;
  }
  dimension: r_f_add {
    type: number
    sql: ${TABLE}.R_F_ADD ;;
  }
  dimension: r_fips {
    type: number
    sql: ${TABLE}.R_FIPS ;;
  }
  dimension: r_parity {
    type: string
    sql: ${TABLE}.R_PARITY ;;
  }
  dimension: r_t_add {
    type: number
    sql: ${TABLE}.R_T_ADD ;;
  }
  dimension: r_zip {
    type: number
    sql: ${TABLE}.R_ZIP ;;
  }
  dimension: shape_len {
    type: number
    sql: ${TABLE}.SHAPE_LEN ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }
  dimension: status_dat {
    type: string
    sql: ${TABLE}.STATUS_DAT ;;
  }
  dimension: street_nam {
    type: string
    sql: ${TABLE}.STREET_NAM ;;
  }
  dimension: street_typ {
    type: string
    sql: ${TABLE}.STREET_TYP ;;
  }
  dimension: streetname {
    type: number
    sql: ${TABLE}.STREETNAME ;;
  }
  dimension: suf_dir {
    type: string
    sql: ${TABLE}.SUF_DIR ;;
  }
  dimension: t_cross {
    type: string
    sql: ${TABLE}.T_CROSS ;;
  }
  dimension: t_cross_st {
    type: number
    sql: ${TABLE}.T_CROSS_ST ;;
  }
  dimension: t_zlev {
    type: number
    sql: ${TABLE}.T_ZLEV ;;
  }
  dimension: the_geom {
    type: string
    sql: ${TABLE}.the_geom ;;
  }
  dimension: tiered {
    type: yesno
    sql: ${TABLE}.TIERED ;;
  }
  dimension: tnode_id {
    type: number
    sql: ${TABLE}.TNODE_ID ;;
  }
  dimension: trans_id {
    type: number
    sql: ${TABLE}.TRANS_ID ;;
  }
  dimension: update_tim {
    type: string
    sql: ${TABLE}.UPDATE_TIM ;;
  }
  dimension: update_use {
    type: string
    sql: ${TABLE}.UPDATE_USE ;;
  }
  measure: count {
    type: count
    drill_fields: [streetname]
  }
}
