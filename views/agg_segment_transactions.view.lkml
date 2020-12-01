view: agg_segment_transactions {
  sql_table_name: `green-roads-285616.reporting_prod.agg_segment_transactions`
    ;;

  dimension: sg_campaign_medium {
    type: string
    sql: ${TABLE}.SG_CAMPAIGN_MEDIUM ;;
  }

  dimension: sg_campaign_source {
    type: string
    sql: ${TABLE}.SG_CAMPAIGN_SOURCE ;;
  }

  dimension: sg_checkout_id {
    type: number
    sql: ${TABLE}.SG_CHECKOUT_ID ;;
  }

  dimension: sg_coupon {
    type: string
    sql: ${TABLE}.SG_COUPON ;;
  }

  dimension_group: sg {
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
    sql: ${TABLE}.SG_DATE ;;
  }

  dimension: sg_event {
    type: string
    sql: ${TABLE}.SG_EVENT ;;
  }

  dimension: sg_event_text {
    type: string
    sql: ${TABLE}.SG_EVENT_TEXT ;;
  }

  dimension: sg_id {
    type: string
    sql: ${TABLE}.SG_ID ;;
  }

  dimension_group: sg_og_timestamp {
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
    sql: ${TABLE}.SG_OG_TIMESTAMP ;;
  }

  dimension: sg_page_path {
    type: string
    sql: ${TABLE}.SG_PAGE_PATH ;;
  }

  dimension: sg_page_search {
    type: string
    sql: ${TABLE}.SG_PAGE_SEARCH ;;
  }

  dimension: sg_page_search_2 {
    type: string
    sql: ${TABLE}.SG_PAGE_SEARCH_2 ;;
  }

  dimension: sg_page_title {
    type: string
    sql: ${TABLE}.SG_PAGE_TITLE ;;
  }

  dimension: sg_user_agent {
    type: string
    sql: ${TABLE}.SG_USER_AGENT ;;
  }

  dimension: sg_user_id {
    type: string
    sql: ${TABLE}.SG_USER_ID ;;
  }

  dimension_group: sg_uuid_ts {
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
    sql: ${TABLE}.SG_UUID_TS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
