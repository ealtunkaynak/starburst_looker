
view: sql_runner_query {
  derived_table: {
    sql: select * from datalake_minio.looker.customer ;;
  }

  suggestions: no
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: c_salutation {
    type: number
    sql: ${TABLE}.c_salutation ;;
  }

  dimension: c_birth_country {
    type: string
    sql: ${TABLE}.c_birth_country ;;
  }

  dimension: c_first_name {
    type: string
    sql: ${TABLE}.c_first_name ;;
  }


  set: detail {
    fields: [
        c_salutation,c_birth_country,c_first_name
    ]
  }
}
