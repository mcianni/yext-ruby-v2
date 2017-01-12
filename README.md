# yext-client

YextClient - the Ruby gem for the Yext API

 

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 2.0
- Package version: 1.0.0
- Build package: class io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build yext-client.gemspec
```

Then either install the gem locally:

```shell
gem install ./yext-client-1.0.0.gem
```
(for development, run `gem install --dev ./yext-client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'yext-client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/yext/yext-ruby-v2, then add the following in the Gemfile:

    gem 'yext-client', :git => 'https://github.com/yext/yext-ruby-v2.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'yext-client'

# Setup authorization
YextClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = YextClient::AnalyticsApi.new

account_id = "account_id_example" # String | 

opts = { 
  body: YextClient::ActivityLogRequest.new # ActivityLogRequest | 
}

begin
  #Activity Log
  result = api_instance.activity_log(account_id, , opts)
  p result
rescue YextClient::ApiError => e
  puts "Exception when calling AnalyticsApi->activity_log: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.yext.com/v2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*YextClient::AnalyticsApi* | [**activity_log**](docs/AnalyticsApi.md#activity_log) | **POST** /accounts/{accountId}/analytics/activity | Activity Log
*YextClient::AnalyticsApi* | [**create_reports**](docs/AnalyticsApi.md#create_reports) | **POST** /accounts/{accountId}/analytics/reports | Create Reports
*YextClient::AnalyticsApi* | [**get_max_dates**](docs/AnalyticsApi.md#get_max_dates) | **GET** /accounts/{accountId}/analytics/maxdates | Max Dates
*YextClient::AnalyticsApi* | [**report_status**](docs/AnalyticsApi.md#report_status) | **GET** /accounts/{accountId}/analytics/standardreports/{reportId} | Report Status
*YextClient::LocationManagerApi* | [**create_bio**](docs/LocationManagerApi.md#create_bio) | **POST** /accounts/{accountId}/bios | Bios: Create
*YextClient::LocationManagerApi* | [**create_event**](docs/LocationManagerApi.md#create_event) | **POST** /accounts/{accountId}/locations/events | Events: Create
*YextClient::LocationManagerApi* | [**create_location**](docs/LocationManagerApi.md#create_location) | **POST** /accounts/{accountId}/locations | Locations: Create
*YextClient::LocationManagerApi* | [**create_menu**](docs/LocationManagerApi.md#create_menu) | **POST** /accounts/{accountId}/menus | Menus: Create
*YextClient::LocationManagerApi* | [**create_product**](docs/LocationManagerApi.md#create_product) | **POST** /accounts/{accountId}/products | Products: Create
*YextClient::LocationManagerApi* | [**delete_bio_list**](docs/LocationManagerApi.md#delete_bio_list) | **DELETE** /accounts/{accountId}/bios/{listId} | Bios: Delete
*YextClient::LocationManagerApi* | [**delete_event_list**](docs/LocationManagerApi.md#delete_event_list) | **DELETE** /accounts/{accountId}/locations/events/{listId} | Events: Delete
*YextClient::LocationManagerApi* | [**delete_language_profile**](docs/LocationManagerApi.md#delete_language_profile) | **DELETE** /accounts/{accountId}/locations/{locationId}/profiles/{language_code} | Language Profiles: Delete
*YextClient::LocationManagerApi* | [**delete_menu_list**](docs/LocationManagerApi.md#delete_menu_list) | **DELETE** /accounts/{accountId}/menus/{listId} | Menus: Delete
*YextClient::LocationManagerApi* | [**delete_product_list**](docs/LocationManagerApi.md#delete_product_list) | **DELETE** /accounts/{accountId}/locations/products/{listId} | Products: Delete
*YextClient::LocationManagerApi* | [**get_bio**](docs/LocationManagerApi.md#get_bio) | **GET** /accounts/{accountId}/bios/{listId} | Bios: Get
*YextClient::LocationManagerApi* | [**get_bios**](docs/LocationManagerApi.md#get_bios) | **GET** /accounts/{accountId}/bios | Bios: List
*YextClient::LocationManagerApi* | [**get_business_categories**](docs/LocationManagerApi.md#get_business_categories) | **GET** /categories | Categories: List
*YextClient::LocationManagerApi* | [**get_custom_fields**](docs/LocationManagerApi.md#get_custom_fields) | **GET** /accounts/{accountId}/customfields | Custom Fields: List
*YextClient::LocationManagerApi* | [**get_event**](docs/LocationManagerApi.md#get_event) | **GET** /accounts/{accountId}/locations/events/{listId} | Events: Get
*YextClient::LocationManagerApi* | [**get_events**](docs/LocationManagerApi.md#get_events) | **GET** /accounts/{accountId}/locations/events | Events: List
*YextClient::LocationManagerApi* | [**get_google_keywords**](docs/LocationManagerApi.md#get_google_keywords) | **GET** /googlefields | Google Fields: List
*YextClient::LocationManagerApi* | [**get_language_profile**](docs/LocationManagerApi.md#get_language_profile) | **GET** /accounts/{accountId}/locations/{locationId}/profiles/{language_code} | Language Profiles: Get
*YextClient::LocationManagerApi* | [**get_language_profiles**](docs/LocationManagerApi.md#get_language_profiles) | **GET** /accounts/{accountId}/locations/{locationId}/profiles | Language Profiles: List
*YextClient::LocationManagerApi* | [**get_location**](docs/LocationManagerApi.md#get_location) | **GET** /accounts/{accountId}/locations/{locationId} | Locations: Get
*YextClient::LocationManagerApi* | [**get_location_folders**](docs/LocationManagerApi.md#get_location_folders) | **GET** /accounts/{accountId}/folders | Folders: List
*YextClient::LocationManagerApi* | [**get_locations**](docs/LocationManagerApi.md#get_locations) | **GET** /accounts/{accountId}/locations | Locations: List
*YextClient::LocationManagerApi* | [**get_menu**](docs/LocationManagerApi.md#get_menu) | **GET** /accounts/{accountId}/menus/{listId} | Menus: Get
*YextClient::LocationManagerApi* | [**get_menus**](docs/LocationManagerApi.md#get_menus) | **GET** /accounts/{accountId}/menus | Menus: List
*YextClient::LocationManagerApi* | [**get_product**](docs/LocationManagerApi.md#get_product) | **GET** /accounts/{accountId}/locations/products/{listId} | Products: Get
*YextClient::LocationManagerApi* | [**get_products**](docs/LocationManagerApi.md#get_products) | **GET** /accounts/{accountId}/products | Products: List
*YextClient::LocationManagerApi* | [**update_bio**](docs/LocationManagerApi.md#update_bio) | **PUT** /accounts/{accountId}/bios/{listId} | Bios: Update
*YextClient::LocationManagerApi* | [**update_event**](docs/LocationManagerApi.md#update_event) | **PUT** /accounts/{accountId}/locations/events/{listId} | Events: Update
*YextClient::LocationManagerApi* | [**update_location**](docs/LocationManagerApi.md#update_location) | **PUT** /accounts/{accountId}/locations/{locationId} | Locations: Update
*YextClient::LocationManagerApi* | [**update_menu**](docs/LocationManagerApi.md#update_menu) | **PUT** /accounts/{accountId}/menus/{listId} | Menus: Update
*YextClient::LocationManagerApi* | [**update_product**](docs/LocationManagerApi.md#update_product) | **PUT** /accounts/{accountId}/locations/products/{listId} | Products: Update
*YextClient::LocationManagerApi* | [**upsert_language_profile**](docs/LocationManagerApi.md#upsert_language_profile) | **PUT** /accounts/{accountId}/locations/{locationId}/profiles/{language_code} | Language Profiles: Upsert
*YextClient::PowerListingsApi* | [**create_duplicate**](docs/PowerListingsApi.md#create_duplicate) | **POST** /accounts/{accountId}/powerlistings/duplicates | Duplicates: Create (January 2017)
*YextClient::PowerListingsApi* | [**delete_duplicate**](docs/PowerListingsApi.md#delete_duplicate) | **DELETE** /accounts/{accountId}/powerlistings/duplicates/{duplicateId} | Duplicates: Delete (January 2017)
*YextClient::PowerListingsApi* | [**get_publisher_suggestion**](docs/PowerListingsApi.md#get_publisher_suggestion) | **GET** /accounts/{accountId}/powerlistings/publishersuggestions/{suggestionId} | Publisher Suggestions: Get
*YextClient::PowerListingsApi* | [**list_duplicates**](docs/PowerListingsApi.md#list_duplicates) | **GET** /accounts/{accountId}/powerlistings/duplicates | Duplicates: List (January 2017)
*YextClient::PowerListingsApi* | [**list_listings**](docs/PowerListingsApi.md#list_listings) | **GET** /accounts/{accountId}/powerlistings/listings | Listings: List
*YextClient::PowerListingsApi* | [**list_publisher_suggestions**](docs/PowerListingsApi.md#list_publisher_suggestions) | **GET** /accounts/{accountId}/powerlistings/publishersuggestions | Publisher Suggestions: List
*YextClient::PowerListingsApi* | [**list_publishers**](docs/PowerListingsApi.md#list_publishers) | **GET** /accounts/{accountId}/powerlistings/publishers | Publishers: List
*YextClient::PowerListingsApi* | [**opt_in_listings**](docs/PowerListingsApi.md#opt_in_listings) | **PUT** /accounts/{accountId}/powerlistings/listings/optin | Listings: Opt In
*YextClient::PowerListingsApi* | [**opt_out_listings**](docs/PowerListingsApi.md#opt_out_listings) | **PUT** /accounts/{accountId}/powerlistings/listings/optout | Listings: Opt Out
*YextClient::PowerListingsApi* | [**suppress_duplicate**](docs/PowerListingsApi.md#suppress_duplicate) | **PUT** /accounts/{accountId}/powerlistings/duplicates/{duplicateId} | Duplicates: Suppress (January 2017)
*YextClient::PowerListingsApi* | [**update_publisher_suggestion**](docs/PowerListingsApi.md#update_publisher_suggestion) | **PUT** /accounts/{accountId}/powerlistings/publishersuggestions/{suggestionId} | Publisher Suggestions: Update
*YextClient::ReviewsApi* | [**create_comment**](docs/ReviewsApi.md#create_comment) | **POST** /accounts/{accountId}/reviews/{reviewId}/comments | Comments: Create
*YextClient::ReviewsApi* | [**create_review**](docs/ReviewsApi.md#create_review) | **POST** /accounts/{accountId}/reviews | Reviews: Create
*YextClient::ReviewsApi* | [**create_review_invites**](docs/ReviewsApi.md#create_review_invites) | **POST** /accounts/{accountId}/reviewinvites | Review Invitations: Create
*YextClient::ReviewsApi* | [**get_review**](docs/ReviewsApi.md#get_review) | **GET** /accounts/{accountId}/reviews/{reviewId} | Reviews: Get
*YextClient::ReviewsApi* | [**list_reviews**](docs/ReviewsApi.md#list_reviews) | **GET** /accounts/{accountId}/reviews | Reviews: List
*YextClient::ReviewsApi* | [**update_review**](docs/ReviewsApi.md#update_review) | **PUT** /accounts/{accountId}/reviews/{reviewId} | Reviews: Update
*YextClient::SocialJanuaryApi* | [**create_comment**](docs/SocialJanuaryApi.md#create_comment) | **POST** /accounts/{accountId}/posts/{postId}/comments | Comments: Create
*YextClient::SocialJanuaryApi* | [**create_posts**](docs/SocialJanuaryApi.md#create_posts) | **POST** /accounts/{accountId}/posts | Posts: Create
*YextClient::SocialJanuaryApi* | [**delete_comment**](docs/SocialJanuaryApi.md#delete_comment) | **DELETE** /accounts/{accountId}/posts/{postId}/comments/{commentId} | Comments: delete
*YextClient::SocialJanuaryApi* | [**delete_post**](docs/SocialJanuaryApi.md#delete_post) | **DELETE** /accounts/{accountId}/posts/{postId} | Posts: Delete
*YextClient::SocialJanuaryApi* | [**get_comments**](docs/SocialJanuaryApi.md#get_comments) | **GET** /accounts/{accountId}/posts/{postId}/comments | Comments: List
*YextClient::SocialJanuaryApi* | [**get_linked_account**](docs/SocialJanuaryApi.md#get_linked_account) | **GET** /accounts/{accountId}/linkedaccounts/{linkedAccountId} | Linked Accounts: Get
*YextClient::SocialJanuaryApi* | [**get_linked_accounts**](docs/SocialJanuaryApi.md#get_linked_accounts) | **GET** /accounts/{accountId}/linkedaccounts | Linked Accounts: List
*YextClient::SocialJanuaryApi* | [**get_posts**](docs/SocialJanuaryApi.md#get_posts) | **GET** /accounts/{accountId}/posts | Posts: List
*YextClient::SocialJanuaryApi* | [**update_comment**](docs/SocialJanuaryApi.md#update_comment) | **PUT** /accounts/{accountId}/posts/{postId}/comments/{commentId} | Comments: Update
*YextClient::SocialJanuaryApi* | [**update_linked_account**](docs/SocialJanuaryApi.md#update_linked_account) | **PUT** /accounts/{accountId}/linkedaccounts/{linkedAccountId} | Linked Accounts: Update
*YextClient::UserApi* | [**create_user**](docs/UserApi.md#create_user) | **POST** /accounts/{accountId}/users | Users: Create
*YextClient::UserApi* | [**delete_user**](docs/UserApi.md#delete_user) | **DELETE** /accounts/{accountId}/users/{userId} | Users: Delete
*YextClient::UserApi* | [**get_link_optimization_task**](docs/UserApi.md#get_link_optimization_task) | **GET** /accounts/{accountId}/optimizationlink | Optimization Tasks: Get Link
*YextClient::UserApi* | [**get_optimization_tasks**](docs/UserApi.md#get_optimization_tasks) | **GET** /accounts/{accountId}/optimizationtasks | Optimization Tasks: List
*YextClient::UserApi* | [**get_roles**](docs/UserApi.md#get_roles) | **GET** /accounts/{accountId}/roles | Roles: Get
*YextClient::UserApi* | [**get_user**](docs/UserApi.md#get_user) | **GET** /accounts/{accountId}/users/{userId} | Users: Get
*YextClient::UserApi* | [**get_users**](docs/UserApi.md#get_users) | **GET** /accounts/{accountId}/users | Users: List
*YextClient::UserApi* | [**update_user**](docs/UserApi.md#update_user) | **PUT** /accounts/{accountId}/users/{userId} | Users: Update
*YextClient::UserApi* | [**update_user_password**](docs/UserApi.md#update_user_password) | **PUT** /accounts/{accountId}/users/{userId}/password | Users: Update Password


## Documentation for Models

 - [YextClient::ActivitiesResponse](docs/ActivitiesResponse.md)
 - [YextClient::ActivitiesResponseResponse](docs/ActivitiesResponseResponse.md)
 - [YextClient::Activity](docs/Activity.md)
 - [YextClient::ActivityFilter](docs/ActivityFilter.md)
 - [YextClient::ActivityLogRequest](docs/ActivityLogRequest.md)
 - [YextClient::AnalyticsFilter](docs/AnalyticsFilter.md)
 - [YextClient::Author](docs/Author.md)
 - [YextClient::BaseEcl](docs/BaseEcl.md)
 - [YextClient::BaseEclItem](docs/BaseEclItem.md)
 - [YextClient::BaseEclSection](docs/BaseEclSection.md)
 - [YextClient::Bio](docs/Bio.md)
 - [YextClient::BioItem](docs/BioItem.md)
 - [YextClient::BioListResponse](docs/BioListResponse.md)
 - [YextClient::BioListsResponse](docs/BioListsResponse.md)
 - [YextClient::BioListsResponseResponse](docs/BioListsResponseResponse.md)
 - [YextClient::BioSection](docs/BioSection.md)
 - [YextClient::BusinessCategoriesResponse](docs/BusinessCategoriesResponse.md)
 - [YextClient::BusinessCategoriesResponseResponse](docs/BusinessCategoriesResponseResponse.md)
 - [YextClient::Calories](docs/Calories.md)
 - [YextClient::Category](docs/Category.md)
 - [YextClient::ContentListCost](docs/ContentListCost.md)
 - [YextClient::ContentListCostOption](docs/ContentListCostOption.md)
 - [YextClient::ContentListPhoto](docs/ContentListPhoto.md)
 - [YextClient::CreateReportRequestBody](docs/CreateReportRequestBody.md)
 - [YextClient::CreateReportsResponse](docs/CreateReportsResponse.md)
 - [YextClient::CreateReportsResponseResponse](docs/CreateReportsResponseResponse.md)
 - [YextClient::CreateReviewInvitationResponse](docs/CreateReviewInvitationResponse.md)
 - [YextClient::CreateUserRequest](docs/CreateUserRequest.md)
 - [YextClient::CustomField](docs/CustomField.md)
 - [YextClient::CustomFieldsResponse](docs/CustomFieldsResponse.md)
 - [YextClient::CustomFieldsResponseResponse](docs/CustomFieldsResponseResponse.md)
 - [YextClient::CustomOption](docs/CustomOption.md)
 - [YextClient::Duplicate](docs/Duplicate.md)
 - [YextClient::DuplicateUnavailableReason](docs/DuplicateUnavailableReason.md)
 - [YextClient::DuplicatesResponse](docs/DuplicatesResponse.md)
 - [YextClient::DuplicatesResponseResponse](docs/DuplicatesResponseResponse.md)
 - [YextClient::ErrorResponse](docs/ErrorResponse.md)
 - [YextClient::Event](docs/Event.md)
 - [YextClient::EventItem](docs/EventItem.md)
 - [YextClient::EventListResponse](docs/EventListResponse.md)
 - [YextClient::EventListsResponse](docs/EventListsResponse.md)
 - [YextClient::EventListsResponseResponse](docs/EventListsResponseResponse.md)
 - [YextClient::EventSection](docs/EventSection.md)
 - [YextClient::Folder](docs/Folder.md)
 - [YextClient::FoldersResponse](docs/FoldersResponse.md)
 - [YextClient::FoldersResponseResponse](docs/FoldersResponseResponse.md)
 - [YextClient::GoogleCategory](docs/GoogleCategory.md)
 - [YextClient::GoogleField](docs/GoogleField.md)
 - [YextClient::GoogleFieldsResponse](docs/GoogleFieldsResponse.md)
 - [YextClient::GoogleFieldsResponseResponse](docs/GoogleFieldsResponseResponse.md)
 - [YextClient::GoogleOption](docs/GoogleOption.md)
 - [YextClient::IdResponse](docs/IdResponse.md)
 - [YextClient::IdResponseResponse](docs/IdResponseResponse.md)
 - [YextClient::LanguageProfilesResponse](docs/LanguageProfilesResponse.md)
 - [YextClient::LanguageProfilesResponseResponse](docs/LanguageProfilesResponseResponse.md)
 - [YextClient::LinkedAccount](docs/LinkedAccount.md)
 - [YextClient::LinkedAccountResponse](docs/LinkedAccountResponse.md)
 - [YextClient::LinkedAccountResponseResponse](docs/LinkedAccountResponseResponse.md)
 - [YextClient::LinkedAccountsResponse](docs/LinkedAccountsResponse.md)
 - [YextClient::LinkedAccountsResponseResponse](docs/LinkedAccountsResponseResponse.md)
 - [YextClient::Listing](docs/Listing.md)
 - [YextClient::ListingStatusDetail](docs/ListingStatusDetail.md)
 - [YextClient::ListingsResponse](docs/ListingsResponse.md)
 - [YextClient::ListingsResponseResponse](docs/ListingsResponseResponse.md)
 - [YextClient::Location](docs/Location.md)
 - [YextClient::LocationClosed](docs/LocationClosed.md)
 - [YextClient::LocationEducationList](docs/LocationEducationList.md)
 - [YextClient::LocationGoogleAttributes](docs/LocationGoogleAttributes.md)
 - [YextClient::LocationHolidayHours](docs/LocationHolidayHours.md)
 - [YextClient::LocationPhoto](docs/LocationPhoto.md)
 - [YextClient::LocationResponse](docs/LocationResponse.md)
 - [YextClient::LocationServiceArea](docs/LocationServiceArea.md)
 - [YextClient::LocationType](docs/LocationType.md)
 - [YextClient::LocationsResponse](docs/LocationsResponse.md)
 - [YextClient::LocationsResponseResponse](docs/LocationsResponseResponse.md)
 - [YextClient::MaximumDatesResponse](docs/MaximumDatesResponse.md)
 - [YextClient::MaximumDatesResponseResponse](docs/MaximumDatesResponseResponse.md)
 - [YextClient::Menu](docs/Menu.md)
 - [YextClient::MenuItem](docs/MenuItem.md)
 - [YextClient::MenuListResponse](docs/MenuListResponse.md)
 - [YextClient::MenuListsResponse](docs/MenuListsResponse.md)
 - [YextClient::MenuListsResponseResponse](docs/MenuListsResponseResponse.md)
 - [YextClient::MenuSection](docs/MenuSection.md)
 - [YextClient::OptimizationTask](docs/OptimizationTask.md)
 - [YextClient::OptimizationTaskLinksResponse](docs/OptimizationTaskLinksResponse.md)
 - [YextClient::OptimizationTaskLinksResponseResponse](docs/OptimizationTaskLinksResponseResponse.md)
 - [YextClient::OptimizationTasksResponse](docs/OptimizationTasksResponse.md)
 - [YextClient::OptimizationTasksResponseResponse](docs/OptimizationTasksResponseResponse.md)
 - [YextClient::Photos](docs/Photos.md)
 - [YextClient::PostEntry](docs/PostEntry.md)
 - [YextClient::Product](docs/Product.md)
 - [YextClient::ProductItem](docs/ProductItem.md)
 - [YextClient::ProductListResponse](docs/ProductListResponse.md)
 - [YextClient::ProductListsResponse](docs/ProductListsResponse.md)
 - [YextClient::ProductListsResponseResponse](docs/ProductListsResponseResponse.md)
 - [YextClient::ProductSection](docs/ProductSection.md)
 - [YextClient::Publisher](docs/Publisher.md)
 - [YextClient::PublisherAlternateBrands](docs/PublisherAlternateBrands.md)
 - [YextClient::PublisherSuggestion](docs/PublisherSuggestion.md)
 - [YextClient::PublisherSuggestionResponse](docs/PublisherSuggestionResponse.md)
 - [YextClient::PublisherSuggestionsResponse](docs/PublisherSuggestionsResponse.md)
 - [YextClient::PublisherSuggestionsResponseResponse](docs/PublisherSuggestionsResponseResponse.md)
 - [YextClient::PublishersResponse](docs/PublishersResponse.md)
 - [YextClient::ReportStatusResponse](docs/ReportStatusResponse.md)
 - [YextClient::ReportStatusResponseResponse](docs/ReportStatusResponseResponse.md)
 - [YextClient::ResponseError](docs/ResponseError.md)
 - [YextClient::ResponseMeta](docs/ResponseMeta.md)
 - [YextClient::Review](docs/Review.md)
 - [YextClient::ReviewComment](docs/ReviewComment.md)
 - [YextClient::ReviewInvitation](docs/ReviewInvitation.md)
 - [YextClient::ReviewResponse](docs/ReviewResponse.md)
 - [YextClient::ReviewsResponse](docs/ReviewsResponse.md)
 - [YextClient::ReviewsResponseResponse](docs/ReviewsResponseResponse.md)
 - [YextClient::Role](docs/Role.md)
 - [YextClient::RolesResponse](docs/RolesResponse.md)
 - [YextClient::RolesResponseResponse](docs/RolesResponseResponse.md)
 - [YextClient::SocialCommentsResponse](docs/SocialCommentsResponse.md)
 - [YextClient::SocialCommentsResponseResponse](docs/SocialCommentsResponseResponse.md)
 - [YextClient::SocialPostsResponse](docs/SocialPostsResponse.md)
 - [YextClient::SocialPostsResponseResponse](docs/SocialPostsResponseResponse.md)
 - [YextClient::UpdatePasswordRequest](docs/UpdatePasswordRequest.md)
 - [YextClient::Url](docs/Url.md)
 - [YextClient::User](docs/User.md)
 - [YextClient::UserAcl](docs/UserAcl.md)
 - [YextClient::UserResponse](docs/UserResponse.md)
 - [YextClient::UsersResponse](docs/UsersResponse.md)
 - [YextClient::UsersResponseResponse](docs/UsersResponseResponse.md)
 - [YextClient::Video](docs/Video.md)


## Documentation for Authorization


### api_key

- **Type**: API key
- **API key parameter name**: api_key
- **Location**: URL query string

