view: agg_big_commerce_transactions {
  sql_table_name: `green-roads-285616.reporting_prod.agg_big_commerce_transactions`
    ;;

  dimension: bc_brand {
    type: string
    sql: ${TABLE}.BC_BRAND ;;
  }

  dimension_group: bc_created_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.BC_CREATED_TIMESTAMP ;;
  }

  dimension_group: bc {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.BC_DATE ;;
  }

  dimension: bc_email {
    type: string
    sql: ${TABLE}.BC_EMAIL ;;
  }

  dimension: bc_items_shipped {
    type: number
    sql: ${TABLE}.BC_ITEMS_SHIPPED ;;
  }

  dimension: bc_order_id {
    type: string
    sql: ${TABLE}.BC_ORDER_ID ;;
  }

  dimension: bc_order_id_1 {
    type: string
    sql: ${TABLE}.BC_ORDER_ID_1 ;;
  }

  dimension: bc_payment_status {
    type: string
    sql: ${TABLE}.BC_PAYMENT_STATUS ;;
  }

  dimension: bc_source {
    type: string
    sql: ${TABLE}.BC_SOURCE ;;
  }

  dimension: bc_source_1 {
    type: string
    sql: ${TABLE}.BC_SOURCE_1 ;;
  }

  dimension: bc_status {
    type: string
    sql: ${TABLE}.BC_STATUS ;;
  }

  dimension: bc_total_items {
    type: number
    sql: ${TABLE}.BC_TOTAL_ITEMS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
