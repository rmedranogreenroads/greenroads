connection: "google_big_query"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/view.lkml"                   # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

explore: agg_cloudflare_server_logs {
  join: agg_big_commerce_transactions {
    type: left_outer
    view_label: "Joined CloudFlare + Big Commerce"
    relationship: one_to_one
    sql_on: ${agg_big_commerce_transactions.bc_created_timestamp_time} = ${agg_cloudflare_server_logs.cf_start_timestamp_time}
    ;;
  }
}
explore: agg_big_commerce_transactions {}
explore: agg_paid_media {}
explore: agg_segment_transactions {}
