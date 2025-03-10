view: claims {
  sql_table_name: insurance_db.claims ;;

  dimension: claim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.claim_id ;;
  }

  dimension: policy_id {
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

  measure: total_claim_amount {
    type: sum
    sql: ${TABLE}.claim_amount ;;
    value_format: "#,##0.00"
  }

  dimension: claim_status {
    type: string
    sql: ${TABLE}.claim_status ;;
  }

  measure: claims_rejected {
    type: count
    filters: [claim_status: "Rejected"]
  }

  measure: claims_settled {
    type: count
    filters: [claim_status: "Settled"]
  }

  measure: claims_pending {
    type: count
    filters: [claim_status: "Pending"]
  }

  dimension: claim_date {
    type: date
    sql: ${TABLE}.claim_date ;;
  }
}
