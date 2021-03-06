=begin
#Yext API

# 

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

# Common files
require 'yext-client/api_client'
require 'yext-client/api_error'
require 'yext-client/version'
require 'yext-client/configuration'

# Models
require 'yext-client/models/activities_response'
require 'yext-client/models/activities_response_response'
require 'yext-client/models/activity'
require 'yext-client/models/activity_filter'
require 'yext-client/models/activity_log_request'
require 'yext-client/models/analytics_filter'
require 'yext-client/models/asset'
require 'yext-client/models/asset_for_locations'
require 'yext-client/models/asset_text_content'
require 'yext-client/models/author'
require 'yext-client/models/base_ecl'
require 'yext-client/models/base_ecl_item'
require 'yext-client/models/base_ecl_section'
require 'yext-client/models/bio'
require 'yext-client/models/bio_item'
require 'yext-client/models/bio_list_response'
require 'yext-client/models/bio_lists_response'
require 'yext-client/models/bio_lists_response_response'
require 'yext-client/models/bio_section'
require 'yext-client/models/business_categories_response'
require 'yext-client/models/business_categories_response_response'
require 'yext-client/models/calories'
require 'yext-client/models/category'
require 'yext-client/models/content_list_cost'
require 'yext-client/models/content_list_cost_option'
require 'yext-client/models/content_list_photo'
require 'yext-client/models/create_report_request_body'
require 'yext-client/models/create_reports_response'
require 'yext-client/models/create_reports_response_response'
require 'yext-client/models/create_review_invitation_response'
require 'yext-client/models/create_review_invitations_response'
require 'yext-client/models/create_user_request'
require 'yext-client/models/custom_field'
require 'yext-client/models/custom_field_response'
require 'yext-client/models/custom_field_update'
require 'yext-client/models/custom_fields_response'
require 'yext-client/models/custom_fields_response_response'
require 'yext-client/models/custom_option'
require 'yext-client/models/custom_validation'
require 'yext-client/models/duplicate'
require 'yext-client/models/duplicate_unavailable_reason'
require 'yext-client/models/duplicates_response'
require 'yext-client/models/duplicates_response_response'
require 'yext-client/models/error_response'
require 'yext-client/models/event'
require 'yext-client/models/event_item'
require 'yext-client/models/event_list_response'
require 'yext-client/models/event_lists_response'
require 'yext-client/models/event_lists_response_response'
require 'yext-client/models/event_section'
require 'yext-client/models/folder'
require 'yext-client/models/folders_response'
require 'yext-client/models/folders_response_response'
require 'yext-client/models/google_category'
require 'yext-client/models/google_field'
require 'yext-client/models/google_fields_response'
require 'yext-client/models/google_fields_response_response'
require 'yext-client/models/google_option'
require 'yext-client/models/id_response'
require 'yext-client/models/id_response_response'
require 'yext-client/models/language_profiles_response'
require 'yext-client/models/language_profiles_response_response'
require 'yext-client/models/linked_account'
require 'yext-client/models/linked_account_response'
require 'yext-client/models/linked_account_response_response'
require 'yext-client/models/linked_accounts_response'
require 'yext-client/models/linked_accounts_response_response'
require 'yext-client/models/listing'
require 'yext-client/models/listing_alternate_brands'
require 'yext-client/models/listing_status_detail'
require 'yext-client/models/listings_response'
require 'yext-client/models/listings_response_response'
require 'yext-client/models/location'
require 'yext-client/models/location_closed'
require 'yext-client/models/location_competitors'
require 'yext-client/models/location_education_list'
require 'yext-client/models/location_google_attributes'
require 'yext-client/models/location_holiday_hours'
require 'yext-client/models/location_photo'
require 'yext-client/models/location_photo_derivatives'
require 'yext-client/models/location_response'
require 'yext-client/models/location_service_area'
require 'yext-client/models/location_type'
require 'yext-client/models/locations_response'
require 'yext-client/models/locations_response_response'
require 'yext-client/models/maximum_dates_response'
require 'yext-client/models/maximum_dates_response_response'
require 'yext-client/models/menu'
require 'yext-client/models/menu_item'
require 'yext-client/models/menu_list_response'
require 'yext-client/models/menu_lists_response'
require 'yext-client/models/menu_lists_response_response'
require 'yext-client/models/menu_section'
require 'yext-client/models/optimization_task'
require 'yext-client/models/optimization_task_links_response'
require 'yext-client/models/optimization_task_links_response_response'
require 'yext-client/models/optimization_tasks_response'
require 'yext-client/models/optimization_tasks_response_response'
require 'yext-client/models/photos'
require 'yext-client/models/post_entry'
require 'yext-client/models/product'
require 'yext-client/models/product_item'
require 'yext-client/models/product_list_response'
require 'yext-client/models/product_lists_response'
require 'yext-client/models/product_lists_response_response'
require 'yext-client/models/product_section'
require 'yext-client/models/publisher'
require 'yext-client/models/publisher_alternate_brands'
require 'yext-client/models/publisher_suggestion'
require 'yext-client/models/publisher_suggestion_response'
require 'yext-client/models/publisher_suggestions_response'
require 'yext-client/models/publisher_suggestions_response_response'
require 'yext-client/models/publishers_response'
require 'yext-client/models/publishers_response_response'
require 'yext-client/models/report_status_response'
require 'yext-client/models/report_status_response_response'
require 'yext-client/models/response_error'
require 'yext-client/models/response_meta'
require 'yext-client/models/review'
require 'yext-client/models/review_comment'
require 'yext-client/models/review_generation_settings'
require 'yext-client/models/review_generation_settings_response'
require 'yext-client/models/review_invitation'
require 'yext-client/models/review_response'
require 'yext-client/models/reviews_response'
require 'yext-client/models/reviews_response_response'
require 'yext-client/models/role'
require 'yext-client/models/roles_response'
require 'yext-client/models/roles_response_response'
require 'yext-client/models/social_comments_response'
require 'yext-client/models/social_comments_response_response'
require 'yext-client/models/social_posts_response'
require 'yext-client/models/social_posts_response_response'
require 'yext-client/models/update_password_request'
require 'yext-client/models/url'
require 'yext-client/models/user'
require 'yext-client/models/user_acl'
require 'yext-client/models/user_response'
require 'yext-client/models/users_response'
require 'yext-client/models/users_response_response'
require 'yext-client/models/video'

# APIs
require 'yext-client/api/analytics_api'
require 'yext-client/api/health_check_api'
require 'yext-client/api/knowledge_manager_api'
require 'yext-client/api/optimization_tasks_api'
require 'yext-client/api/power_listings_api'
require 'yext-client/api/reviews_api'
require 'yext-client/api/social_spring_summer_api'
require 'yext-client/api/user_api'

module YextClient
  class << self
    # Customize default settings for the SDK using block.
    #   YextClient.configure do |config|
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
