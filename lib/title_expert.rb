=begin
#ACS Title Expert

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

# Common files
require 'title_expert/api_client'
require 'title_expert/http_error'
require 'title_expert/version'
require 'title_expert/configuration'

# Models
require 'title_expert/models/address'
require 'title_expert/models/address_line_type'
require 'title_expert/models/address_match_request'
require 'title_expert/models/address_match_response'
require 'title_expert/models/administrative_area_text_type'
require 'title_expert/models/alternative_despatch_details'
require 'title_expert/models/api_error'
require 'title_expert/models/bankruptcy_request'
require 'title_expert/models/bankruptcy_response'
require 'title_expert/models/borrower'
require 'title_expert/models/borrower_name_match_details'
require 'title_expert/models/borrower_name_match_issue'
require 'title_expert/models/borrower_name_match_request'
require 'title_expert/models/borrower_name_match_response'
require 'title_expert/models/charity_code_type'
require 'title_expert/models/class_of_title_code_type'
require 'title_expert/models/client_parameters'
require 'title_expert/models/dx_address'
require 'title_expert/models/date_time_type'
require 'title_expert/models/date_type'
require 'title_expert/models/district_name_text_type'
require 'title_expert/models/document'
require 'title_expert/models/documents_request'
require 'title_expert/models/documents_response'
require 'title_expert/models/error_item_details'
require 'title_expert/models/extra_title_number'
require 'title_expert/models/form_p_restriction'
require 'title_expert/models/historical_match'
require 'title_expert/models/indicator_type1'
require 'title_expert/models/issue'
require 'title_expert/models/item_details_api_error'
require 'title_expert/models/lr_address'
require 'title_expert/models/lrbg_price'
require 'title_expert/models/land_registry_office_name_text_type'
require 'title_expert/models/lease'
require 'title_expert/models/lease_term_text_type'
require 'title_expert/models/lrbg_api_error'
require 'title_expert/models/lrbg_item_details_api_error'
require 'title_expert/models/lrbg_response_common'
require 'title_expert/models/match'
require 'title_expert/models/match_info'
require 'title_expert/models/name'
require 'title_expert/models/named_blob'
require 'title_expert/models/numeric_type'
require 'title_expert/models/oc2_document_spec'
require 'title_expert/models/oc_name'
require 'title_expert/models/object'
require 'title_expert/models/official_search_request'
require 'title_expert/models/official_search_response'
require 'title_expert/models/owner_verify_by_address_request'
require 'title_expert/models/owner_verify_by_title_request'
require 'title_expert/models/owner_verify_name'
require 'title_expert/models/owner_verify_response'
require 'title_expert/models/owner_verify_result'
require 'title_expert/models/party'
require 'title_expert/models/postal_address'
require 'title_expert/models/property_address'
require 'title_expert/models/property_address_search'
require 'title_expert/models/property_data'
require 'title_expert/models/proprietors_data'
require 'title_expert/models/q1_address_type'
require 'title_expert/models/q1_agreed_notice_type'
require 'title_expert/models/q1_charge_details_type'
require 'title_expert/models/q1_charge_proprietor_type'
require 'title_expert/models/q1_charge_type'
require 'title_expert/models/q1_charity_details_type'
require 'title_expert/models/q1_document_entry_type'
require 'title_expert/models/q1_entry_details_type'
require 'title_expert/models/q1_home_rights_type'
require 'title_expert/models/q1_lease_type'
require 'title_expert/models/q1_oc_register_data_type'
require 'title_expert/models/q1_oc_summary_data_type'
require 'title_expert/models/q1_party_type'
require 'title_expert/models/q1_postcode_zone_type'
require 'title_expert/models/q1_price_paid_entry_type'
require 'title_expert/models/q1_proprietorship_type'
require 'title_expert/models/q1_register_entry_indicators_type'
require 'title_expert/models/q1_register_entry_type'
require 'title_expert/models/q1_register_type'
require 'title_expert/models/q1_restriction_entry_type'
require 'title_expert/models/q1_restriction_type'
require 'title_expert/models/q1_schedule_type'
require 'title_expert/models/q1_sub_charge_details_type'
require 'title_expert/models/q1_title_registration_details_type'
require 'title_expert/models/q1_title_type'
require 'title_expert/models/q1_unilateral_notice_details_type'
require 'title_expert/models/q2_text_type1'
require 'title_expert/models/raw_address'
require 'title_expert/models/reference'
require 'title_expert/models/register_entry'
require 'title_expert/models/registered_charge'
require 'title_expert/models/registered_charges_data'
require 'title_expert/models/rent_amount_text_type'
require 'title_expert/models/request_params'
require 'title_expert/models/response_common'
require 'title_expert/models/restriction_code_type'
require 'title_expert/models/returned_document'
require 'title_expert/models/returned_documents'
require 'title_expert/models/saved_res_data'
require 'title_expert/models/schedule_of_leases'
require 'title_expert/models/schedule_of_leases_entry'
require 'title_expert/models/subject_property'
require 'title_expert/models/text_type'
require 'title_expert/models/title_check_results'
require 'title_expert/models/title_check_xml_request'
require 'title_expert/models/title_data_extract'
require 'title_expert/models/title_data_request'
require 'title_expert/models/title_data_response'
require 'title_expert/models/title_details'
require 'title_expert/models/title_numbers_result'
require 'title_expert/models/title_plan_request'
require 'title_expert/models/title_plan_response'

# APIs
require 'title_expert/api/address_normalisation_and_matching_api'
require 'title_expert/api/bankruptcy_search_k16_api'
require 'title_expert/api/borrower_name_match_api'
require 'title_expert/api/official_search_of_whole_with_priority_os1_api'
require 'title_expert/api/online_ownership_verification_oov_api'
require 'title_expert/api/title_data_checks_res_official_copy_with_summary_api'
require 'title_expert/api/title_documents_oc2_api'
require 'title_expert/api/title_numberse_pd_enquiry_by_property_description_api'
require 'title_expert/api/title_plan_oc1_api'

module TitleExpert
  class << self
    # Customize default settings for the SDK using block.
    #   TitleExpert.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
