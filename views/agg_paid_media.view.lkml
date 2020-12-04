view: agg_paid_media {
  sql_table_name: `green-roads-285616.reporting_prod.agg_paid_media`
    ;;

  dimension: pm_brand {
    type: string
    sql: ${TABLE}.PM_BRAND ;;
  }

  dimension: pm_campaign {
    type: string
    sql: ${TABLE}.PM_CAMPAIGN ;;
  }

  dimension: pm_clicks {
    type: number
    sql: ${TABLE}.PM_CLICKS ;;
  }

  dimension: pm_conversions {
    type: number
    sql: ${TABLE}.PM_CONVERSIONS ;;
  }

  dimension: pm_cost {
    type: number
    sql: ${TABLE}.PM_COST ;;
  }

  dimension_group: pm {
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
    sql: ${TABLE}.PM_DATE ;;
  }

  dimension: pm_vendor {
    type: string
    sql: ${TABLE}.PM_VENDOR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_clicks {
    type: sum
    sql: ${pm_clicks} ;;
    drill_fields: [pm_brand,pm_campaign,pm_cost,pm_date, pm_vendor, total_clicks]
  }

  measure: total_cost {
    type: sum
    sql: ${pm_cost} ;;
    drill_fields: [pm_brand,pm_campaign,pm_cost,pm_date, pm_vendor, total_clicks]
    value_format_name: usd
  }

  measure: total_conversions {
    type: sum
    sql: ${pm_conversions} ;;
    drill_fields: [pm_brand,pm_campaign,pm_cost,pm_date, pm_vendor, total_clicks]
  }

  measure: avg_cost_per_click {
    type: number
    sql:  1.0 * (${total_cost} / nullif (${total_clicks},0)) ;;
    value_format_name: usd
  }


measure: avg_conversion_rate{
  type: number
  sql:  1.0 * ( ${total_conversions} / nullif (${total_clicks},0)) ;;
  value_format_name: percent_1
}
}
