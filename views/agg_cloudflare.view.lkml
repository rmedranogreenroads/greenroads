view: agg_cloudflare {
  sql_table_name: `green-roads-285616.reporting_prod.agg_cloudflare`
    ;;



###########Logical Reconstructions#######################
measure: cf_transactions_distinct {
  type: count_distinct
  sql: case when ${TABLE}.CF_PURCHASE like 'true' then ${TABLE}.CF_URI end  ;;
}



#########################################################
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
    convert_tz: no
    datatype: date
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

  measure: cf_response_bytes {
    type: sum
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
    convert_tz: no
    datatype: date
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
