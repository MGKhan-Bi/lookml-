view: insurance_policies {
  sql_table_name: your_dataset.insurance_policies ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: policy_type {
    type: string
    sql: ${TABLE}.policy_type ;;
  }

  dimension: coverage_limit {
    type: number
    sql: ${TABLE}.coverage_limit ;;
    value_format_name: "usd"
  }
}
