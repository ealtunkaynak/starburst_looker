
view: sql_runner_query_1 {
  derived_table: {
    sql: select customer_city,count(1) from datalake_minio.looker.customer  group by customer_city ;;
  }

  suggestions: no
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: customer_city {
    type: string
    sql: ${TABLE}.customer_city ;;
  }

  dimension: _col1 {
    type: number
    sql: ${TABLE}._col1 ;;
  }

  set: detail {
    fields: [
        customer_city,
	_col1
    ]
  }
}
