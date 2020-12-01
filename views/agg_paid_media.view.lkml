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
}
