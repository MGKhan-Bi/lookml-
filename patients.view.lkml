view: patients {
  sql_table_name: your_dataset.patients ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: birth_date {
    type: date
    sql: ${TABLE}.birth_date ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }
}
