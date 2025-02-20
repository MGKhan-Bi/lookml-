connection: "your_database_connection"

include: "*.view.lkml"

explore: hospital_claims {
  label: "Hospital Claims"
  join: patients {
    sql_on: ${hospital_claims.patient_id} = ${patients.id} ;;
    relationship: one_to_one
  }
  join: insurance_policies {
    sql_on: ${hospital_claims.policy_id} = ${insurance_policies.id} ;;
    relationship: many_to_one
  }
}
