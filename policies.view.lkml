view: policies {
  sql_table_name: insurance_db.policies ;;

  dimension: policy_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.policy_id ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension: policy_type {
    type: string
    sql: ${TABLE}.policy_type ;;
  }

  measure: total_premium {
    type: sum
    sql: ${TABLE}.premium_amount ;;
    value_format: "#,##0.00"
  }

  measure: total_coverage {
    type: sum
    sql: ${TABLE}.coverage_amount ;;
    value_format: "#,##0.00"
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: active_policies {
    type: count
    filters: [status: "Active"]
  }

  measure: inactive_policies {
    type: count
    filters: [status: "Inactive"]
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: age_group {
    type: string
    sql: ${TABLE}.age_group ;;
  }
}
