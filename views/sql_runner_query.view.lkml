
view: sql_runner_query {
  derived_table: {
    sql: select * from datalake_minio.looker.customer ;;
  }

  suggestions: no
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: customer_key {
    type: number
    sql: ${TABLE}.customer_key ;;
  }

  dimension: customer_type {
    type: string
    sql: ${TABLE}.customer_type ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: customer_gender {
    type: string
    sql: ${TABLE}.customer_gender ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: household_id {
    type: number
    sql: ${TABLE}.household_id ;;
  }

  dimension: customer_address {
    type: string
    sql: ${TABLE}.customer_address ;;
  }

  dimension: customer_city {
    type: string
    sql: ${TABLE}.customer_city ;;
  }

  dimension: customer_state {
    type: string
    sql: ${TABLE}.customer_state ;;
  }

  dimension: customer_region {
    type: string
    sql: ${TABLE}.customer_region ;;
  }

  dimension: marital_status {
    type: string
    sql: ${TABLE}.marital_status ;;
  }

  dimension: customer_age {
    type: number
    sql: ${TABLE}.customer_age ;;
  }

  dimension: number_of_children {
    type: number
    sql: ${TABLE}.number_of_children ;;
  }

  dimension: annual_income {
    type: number
    sql: ${TABLE}.annual_income ;;
  }

  dimension: occupation {
    type: string
    sql: ${TABLE}.occupation ;;
  }

  dimension: largest_bill_amount {
    type: number
    sql: ${TABLE}.largest_bill_amount ;;
  }

  dimension: store_membership_card {
    type: number
    sql: ${TABLE}.store_membership_card ;;
  }

  dimension: customer_since {
    type: date
    sql: ${TABLE}.customer_since ;;
  }

  dimension: deal_stage {
    type: string
    sql: ${TABLE}.deal_stage ;;
  }

  dimension: deal_size {
    type: number
    sql: ${TABLE}.deal_size ;;
  }

  dimension: last_deal_update {
    type: date
    sql: ${TABLE}.last_deal_update ;;
  }

  set: detail {
    fields: [
        customer_key,
	customer_type,
	customer_name,
	customer_gender,
	title,
	household_id,
	customer_address,
	customer_city,
	customer_state,
	customer_region,
	marital_status,
	customer_age,
	number_of_children,
	annual_income,
	occupation,
	largest_bill_amount,
	store_membership_card,
	customer_since,
	deal_stage,
	deal_size,
	last_deal_update
    ]
  }
}
