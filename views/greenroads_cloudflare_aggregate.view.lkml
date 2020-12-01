view: greenroads_cloudflare_aggregate {
  derived_table: {
    sql: select * from  `green-roads-285616.reporting_prod.agg_cloudflare_server_logs`
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: cf_date {
    type: date
    datatype: date
    sql: ${TABLE}.CF_DATE ;;
  }

  dimension: cf_client_ip {
    type: string
    sql: ${TABLE}.CF_CLIENT_IP ;;
  }

  dimension: cf_purchase {
    type: string
    sql: ${TABLE}.CF_PURCHASE ;;
  }

  dimension: cf_request_host {
    type: string
    sql: ${TABLE}.CF_REQUEST_HOST ;;
  }

  dimension: cf_protocol {
    type: string
    sql: ${TABLE}.CF_PROTOCOL ;;
  }

  dimension: cf_referer {
    type: string
    sql: ${TABLE}.CF_REFERER ;;
  }

  dimension: cf_uri {
    type: string
    sql: ${TABLE}.CF_URI ;;
  }

  dimension: cf_user_agent {
    type: string
    sql: ${TABLE}.CF_USER_AGENT ;;
  }

  dimension_group: cf_end_timestamp {
    type: time
    sql: ${TABLE}.CF_END_TIMESTAMP ;;
  }

  dimension_group: cf_start_timestamp {
    type: time
    sql: ${TABLE}.CF_START_TIMESTAMP ;;
  }

  dimension: cf_response_bytes {
    type: number
    sql: ${TABLE}.CF_RESPONSE_BYTES ;;
  }

  dimension: cf_response_status {
    type: number
    sql: ${TABLE}.CF_RESPONSE_STATUS ;;
  }

  dimension: cf_ray_id {
    type: string
    sql: ${TABLE}.CF_RAY_ID ;;
  }

  dimension: cf_brand {
    type: string
    sql: ${TABLE}.CF_BRAND ;;
  }

  set: detail {
    fields: [
      cf_date,
      cf_client_ip,
      cf_purchase,
      cf_request_host,
      cf_protocol,
      cf_referer,
      cf_uri,
      cf_user_agent,
      cf_end_timestamp_time,
      cf_start_timestamp_time,
      cf_response_bytes,
      cf_response_status,
      cf_ray_id,
      cf_brand
    ]
  }
}
