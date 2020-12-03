view: agg_segment {
  sql_table_name: `green-roads-285616.reporting_prod.agg_segment`
    ;;


#########Logical Reconstructions ##########



measure: transactions {
  type: count_distinct
  sql: case when  ${TABLE}.SG_EVENT like 'checkout_step_completed' then ${TABLE}.SG_CHECKOUT_ID end ;;
  drill_fields: [sg_campaign_medium,sg_campaign_source,sg_context_page_referrer, sg_user_id, sg_affiliation, sg_page_title, sg_page_path, sg_context_page_search]
}

##################################
  dimension: sg_affiliation {
    type: string
    sql: ${TABLE}.SG_AFFILIATION ;;
  }

  dimension: sg_campaign_medium {
    type: string
    sql: ${TABLE}.SG_CAMPAIGN_MEDIUM ;;
  }

  dimension: sg_campaign_name {
    type: string
    sql: ${TABLE}.SG_CAMPAIGN_NAME ;;
  }

  dimension: sg_campaign_source {
    type: string
    sql: ${TABLE}.SG_CAMPAIGN_SOURCE ;;
  }

  dimension: sg_checkout_id {
    type: string
    sql: ${TABLE}.SG_CHECKOUT_ID ;;
  }

  dimension: sg_context_ip {
    type: string
    sql: ${TABLE}.SG_CONTEXT_IP ;;
  }

  dimension: sg_context_library_name {
    type: string
    sql: ${TABLE}.SG_CONTEXT_LIBRARY_NAME ;;
  }

  dimension: sg_context_page_path {
    type: string
    sql: ${TABLE}.SG_CONTEXT_PAGE_PATH ;;
  }

  dimension: sg_context_page_referrer {
    type: string
    sql: ${TABLE}.SG_CONTEXT_PAGE_REFERRER ;;
  }

  dimension: sg_context_page_search {
    type: string
    sql: ${TABLE}.SG_CONTEXT_PAGE_SEARCH ;;
  }

  dimension: sg_context_page_title {
    type: string
    sql: ${TABLE}.SG_CONTEXT_PAGE_TITLE ;;
  }

  dimension: sg_context_page_url {
    type: string
    sql: ${TABLE}.SG_CONTEXT_PAGE_URL ;;
  }

  dimension: sg_context_user_agent {
    type: string
    sql: ${TABLE}.SG_CONTEXT_USER_AGENT ;;
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

  dimension: sg_library_version {
    type: string
    sql: ${TABLE}.SG_LIBRARY_VERSION ;;
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

  dimension: sg_page_title {
    type: string
    sql: ${TABLE}.SG_PAGE_TITLE ;;
  }

  dimension: sg_products {
    type: string
    sql: ${TABLE}.SG_PRODUCTS ;;
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
    drill_fields: [sg_context_library_name, sg_campaign_name]
  }
}
