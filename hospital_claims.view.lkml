view: hospital_claims {
  sql_table_name: your_dataset.hospital_claims ;;

  dimension: claim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.claim_id ;;
  }

  dimension: patient_id {
    type: string
    sql: ${TABLE}.patient_id ;;
  }

  dimension: policy_id {
    type: string
    sql: ${TABLE}.policy_id ;;
  }

  dimension: admission_date {
    type: date
    sql: ${TABLE}.admission_date ;;
  }

  dimension: discharge_date {
    type: date
    sql: ${TABLE}.discharge_date ;;
  }

  measure: total_charges {
    type: sum
    sql: ${TABLE}.charges ;;
    value_format_name: "usd"
  }

  measure: average_length_of_stay {
    type: average
    sql: DATEDIFF(${discharge_date}, ${admission_date}) ;;
  }
}
