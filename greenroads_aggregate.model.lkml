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

explore: agg_cloudflare_server_logs {}
explore: agg_big_commerce_transactions {}
explore: agg_segment_transactions {}



explore: agg_big_commerce {
  label: "Big Commerce v2"
}
explore: agg_cloudflare {
  label: "CloudFlare v2"
}

explore:agg_segment_complete {
label: "Segment v2"
  }

explore: agg_paid_media {
  label: "Paid Media v2"
}

explore: agg_segment_product_added{
  label: "Segment v2 Product Added"
}
