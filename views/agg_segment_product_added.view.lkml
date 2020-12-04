view: agg_segment_product_added {
  sql_table_name: `green-roads-285616.reporting_prod.agg_segment_product_added`
    ;;

  dimension: sg_product_added_campaign_medium {
    type: string
    sql: ${TABLE}.SG_PRODUCT_ADDED_CAMPAIGN_MEDIUM ;;
  }

  dimension: sg_product_added_campaign_name {
    type: string
    sql: ${TABLE}.SG_PRODUCT_ADDED_CAMPAIGN_NAME ;;
  }

  dimension_group: sg_product_added {
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
    sql: ${TABLE}.SG_PRODUCT_ADDED_DATE ;;
  }

  dimension_group: sg_product_added_timestamp {
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
    sql: ${TABLE}.SG_PRODUCT_ADDED_TIMESTAMP ;;
  }

  dimension: sg_product_added_url {
    type: string
    sql: ${TABLE}.SG_PRODUCT_ADDED_URL ;;
  }

  dimension: sg_product_campaign_source {
    type: string
    sql: ${TABLE}.SG_PRODUCT_CAMPAIGN_SOURCE ;;
  }

  dimension: sg_product_category {
    type: string
    sql: ${TABLE}.SG_PRODUCT_CATEGORY ;;
  }

  dimension: sg_product_user_id {
    type: string
    sql: ${TABLE}.SG_PRODUCT_USER_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [sg_product_added_campaign_name]
  }
}
