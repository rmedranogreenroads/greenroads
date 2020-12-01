view: agg_cloudflare_server_logs {
  sql_table_name: `green-roads-285616.reporting_prod.agg_cloudflare_server_logs`
    ;;

  dimension: cf_brand {
    type: string
    sql: ${TABLE}.CF_BRAND ;;
  }

  dimension: cf_client_ip {
    type: string
    sql: ${TABLE}.CF_CLIENT_IP ;;
  }

  dimension_group: cf {
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
    sql: ${TABLE}.CF_DATE ;;
  }

  dimension_group: cf_end_timestamp {
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
    sql: ${TABLE}.CF_END_TIMESTAMP ;;
  }

  dimension: cf_protocol {
    type: string
    sql: ${TABLE}.CF_PROTOCOL ;;
  }

  dimension: cf_purchase {
    type: string
    sql: ${TABLE}.CF_PURCHASE ;;
  }

  dimension: cf_ray_id {
    type: string
    sql: ${TABLE}.CF_RAY_ID ;;
  }

  dimension: cf_referer {
    type: string
    sql: ${TABLE}.CF_REFERER ;;
  }

  dimension: cf_request_host {
    type: string
    sql: ${TABLE}.CF_REQUEST_HOST ;;
  }

  dimension: cf_response_bytes {
    type: number
    sql: ${TABLE}.CF_RESPONSE_BYTES ;;
  }

  dimension: cf_response_status {
    type: number
    sql: ${TABLE}.CF_RESPONSE_STATUS ;;
  }

  dimension_group: cf_start_timestamp {
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
    sql: ${TABLE}.CF_START_TIMESTAMP ;;
  }

  dimension: cf_uri {
    type: string
    sql: ${TABLE}.CF_URI ;;
  }

  dimension: cf_user_agent {
    type: string
    sql: ${TABLE}.CF_USER_AGENT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
