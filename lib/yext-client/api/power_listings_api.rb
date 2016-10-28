=begin
#Yext API

## Policies and Conventions  This section gives you the basic information you need to use our APIs.  ## Authentication All requests must be authenticated using an app’s API key.  <pre>GET https://api.yext.com/v2/accounts/[accountId]/locations?<b>api_key=API_KEY</b>&v=YYYYMMDD</pre>  The API key should be kept secret, as each app has exactly one API key.  ## Versioning All requests must be versioned using the **`v`** parameter.   <pre>GET https://api.yext.com/v2/accounts/[accountId]/locations?api_key=API_KEY&<b>v=YYYYMMDD</b></pre>  The **`v`** parameter (a date in `YYYYMMDD` format) is designed to give you the freedom to adapt to Yext API changes on your own schedule. When you pass this parameter, any changes we made to the API after the specified date will not affect the behavior of the request or the content of the response.  **NOTE:** Yext has the ability to make changes that affect previous versions of the API, if necessary.  ## Serialization API v2 only accepts data in JSON format.  ## Content-Type Headers For all requests that include a request body, the Content-Type header must be included and set to `application/json`.  ## Errors and Warnings There are three kinds of issues that can be reported for a given request:  * **`FATAL_ERROR`**     * An issue caused the entire request to be rejected. * **`NON_FATAL_ERROR`**     * An item is rejected, but other items present in the request are accepted (e.g., one invalid Product List item).      * A field is rejected, but the item otherwise is accepted (e.g., invalid website URL in a Location). * **`WARNING`**     * The request did not adhere to our best practices or recommendations, but the data was accepted anyway (e.g., data was sent that may cause some listings to become unavailable, a deprecated API was used, or we changed the format of a field's content to meet our requirements).  ## Validation Modes *(Available December 2016)*  API v2 will support two request validation modes: *Strict Mode* and *Lenient Mode*.  In Strict Mode, both `FATAL_ERROR`s and `NON_FATAL_ERROR`s are reported simply as `FATAL_ERROR`s, and any error will cause the entire request to fail.  In Lenient Mode, `FATAL_ERROR`s and `NON_FATAL_ERROR`s are reported as such, and only `FATAL_ERROR`s will cause a request to fail.  All requests will be processed in Strict Mode by default.  To activate Lenient Mode, append the parameter `validation=lenient` to your request URLs.  ### Dates and times * We always use milliseconds since epoch (a.k.a. Unix time) for timestamps (e.g., review creation times, webhook update times). * We always use ISO 8601 without timezone for local date times (e.g., Event start time, Event end time). * Dates are transmitted as strings: `“YYYY-MM-DD”`.  ## Account ID In keeping with RESTful design principles, every URL in API v2 has an account ID prefix. This prefix helps to ensure that you have unique URLs for all resources.  In addition to specifying resources by explicit account ID, the following two macros are defined: * **`me`** - refers to the account that owns the API key sent with the request * **`all`** - refers to the account that owns the API key sent with the request, as well as all sub-accounts (recursively)  **IMPORTANT:** The **`me`** macro is supported in all API methods.  The **`all`** macro will only be supported in certain URLs, as noted in the reference documentation.  ### Examples This URL refers to all locations in account 123. <pre>https://api.yext.com/v2/accounts/<b>123</b>/locations?api_key=456&v=20160822</pre>  This URL refers to all locations in the account that owns API key 456. <pre>https://api.yext.com/v2/accounts/<b>me</b>/locations?<b>api_key=456</b>&v=20160822</pre>  This URL refers to all locations in the account that owns API key 456, as well as all locations from any of its child accounts. <pre>https://api.yext.com/v2/accounts/<b>all</b>/locations?<b>api_key=456</b>&v=20160822</pre>  ## Actor Headers *(Available December 2016)*  To attribute changes to a particular user or employee, all requests may be passed with the following headers.  **NOTE:** If you choose to provide actor headers, and we are unable to authenticate the request using the values you provide, the request will result in an error and fail.  * Attribute activity to Admin user via admin login cookie *(for Yext’s use only)*     * Header: `YextEmployee`     * Value: Admin user’s AlphaLogin cookie * Attribute activity to Admin user via email address and password     * Headers: `YextEmployeeEmail`, `YextEmployeePassword`     * Values: Admin user’s email address, Admin user’s Admin password * Attribute activity to customer user via login cookie     * Header: `YextUser`     * Value: Customer user’s YextAppsLogin cookie * Attribute activity to customer user via email address and password     * Headers: `YextUserEmail`, `YextUserPassword`     * Values: Customer user’s email address, Customer user’s password  Changes will be logged as follows:  * App with no designated actor     * History Entry \"Updated By\" Value: `App [App ID] - ‘[App Name]’`     * Example: `App 432 - ‘Hello World App’` * App with customer user actor     * History Entry \"Updated By\" Value: `[user name] ([user email]) (App [App ID] - ‘[App Name]’)`     * Example: `Jordan Smith (jsmith@example.com) (App 432 - ‘Hello World App’)` * App with Yext employee actor   * History Entry \"Updated By\" Value: `[employee username] (App [App ID] - ‘[App Name]’)`   * Example: `hlerman (App 432 - ‘Hello World App’)`  ## Response Format * **`meta`**     * Response metadata  * **`meta.uuid`**     * Unique ID for this request / response * **`meta.errors[]`**     * List of errors and warnings  * **`meta.errors[].code`**     * Code that uniquely identifies the error or warning  * **`meta.errors[].type`**     * One of:         * `FATAL_ERROR`         * `NON_FATAL_ERROR`         * `WARNING`     * See \"Errors and Warnings\" above for details. * **`meta.errors[].message`**     * An explanation of the issue * **`response`**     * The main content (body) of the response  Example: <pre><code> {     \"meta\": {         \"uuid\": \"bb0c7e19-4dc3-4891-bfa5-8593b1f124ad\",         \"errors\": [             {                 \"code\": ...error code...,                 \"type\": ...error, fatal error, non fatal error, or warning...,                 \"message\": ...explanation of the issue...             }         ]     },     \"response\": {         ...results...     } } </code></pre>  ## Status Codes * `200 OK`    * Either there are no errors or warnings, or the only issues are of type `WARNING`. * `207 Multi-Status`     * There are errors of type `itemError` or `fieldError` (but none of type `requestError`). * `400 Bad Request`     * A parameter is invalid, or a required parameter is missing. This includes the case where no API key is provided and the case where a resource ID is specified incorrectly in a path.     * This status is if any of the response errors are of type `requestError`. * `401 Unauthorized`     * The API key provided is invalid.     * `403 Forbidden`     * The requested information cannot be viewed by the acting user.  * `404 Not Found`     * The endpoint does not exist. * `405 Method Not Allowed`     * The request is using a method that is not allowed (e.g., POST with a GET-only endpoint). * `409 Conflict`     * The request could not be completed in its current state.     * Use the information included in the response to modify the request and retry. * `429 Too Many Requests`     * You have exceeded your rate limit / quota. * `500 Internal Server Error`     * Yext’s servers are not operating as expected. The request is likely valid but should be resent later. * `504 Timeout`     * Yext’s servers took too long to handle this request, and it timed out.  ## Quotas and Rate Limits Default quotas and rate limits are as follows.  * **Location Cloud API** *(includes Analytics, PowerListings®, Location Manager, Reviews, Social, and User endpoints)*: 5,000 requests per hour * **Administrative API**: 1 qps * **Live API**: 100,000 requests per hour  **NOTE:** Webhook requests do not count towards an account’s quota.  For the most current and accurate rate-limit usage information for a particular request type, check the **`RateLimit-Remaining`** and **`RateLimit-Limit`** HTTP headers of your API responses.  If you are currently over your limit, our API will return a `429` error, and the response object returned by our API will be empty. We will also include a **`RateLimit-Reset`** header in the response, which indicates when you will have additional quota.  ## Client- vs. Yext-assigned IDs You can set the ID for the following objects when you create them. If you do not provide an ID, Yext will generate one for you.  * Account * User * Location * Bio List * Menu List * Product List * Event List * Bio List Item * Menu List Item * Product List Item * Event List Item  ## Logging All API requests are logged. API logs can be found in your Developer Console and are stored for 90 days. 

OpenAPI spec version: 0.0.2

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

require "uri"

module YextClient
  class PowerListingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Duplicates: Create
    # Creates a new Duplicate with status SUPPRESSION_REQUESTED
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format
    # @param url URL of the Duplicate listing
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :location_ids Defaults to all account locations with a PowerListings subscription  **Example:** loc123,loc456,loc789 
    # @option opts [Array<String>] :publisher_ids Defaults to all publishers subscribed by account  **Example:** MAPQUEST,YELP 
    # @return [InlineResponse20020]
    def create_duplicate(account_id, v, url, opts = {})
      data, _status_code, _headers = create_duplicate_with_http_info(account_id, v, url, opts)
      return data
    end

    # Duplicates: Create
    # Creates a new Duplicate with status SUPPRESSION_REQUESTED
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format
    # @param url URL of the Duplicate listing
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :location_ids Defaults to all account locations with a PowerListings subscription  **Example:** loc123,loc456,loc789 
    # @option opts [Array<String>] :publisher_ids Defaults to all publishers subscribed by account  **Example:** MAPQUEST,YELP 
    # @return [Array<(InlineResponse20020, Fixnum, Hash)>] InlineResponse20020 data, response status code and response headers
    def create_duplicate_with_http_info(account_id, v, url, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PowerListingsApi.create_duplicate ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling PowerListingsApi.create_duplicate" if account_id.nil?
      # verify the required parameter 'v' is set
      fail ArgumentError, "Missing the required parameter 'v' when calling PowerListingsApi.create_duplicate" if v.nil?
      # verify the required parameter 'url' is set
      fail ArgumentError, "Missing the required parameter 'url' when calling PowerListingsApi.create_duplicate" if url.nil?
      # resource path
      local_var_path = "/accounts/{accountId}/powerlistings/duplicates".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'v'] = v
      query_params[:'url'] = url
      query_params[:'locationIds'] = @api_client.build_collection_param(opts[:'location_ids'], :csv) if !opts[:'location_ids'].nil?
      query_params[:'publisherIds'] = @api_client.build_collection_param(opts[:'publisher_ids'], :csv) if !opts[:'publisher_ids'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20020')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PowerListingsApi#create_duplicate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Duplicates: Delete
    # Indicates that a Duplicate should be ignored
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format
    # @param duplicate_id 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponseDefault]
    def delete_duplicate(account_id, v, duplicate_id, opts = {})
      data, _status_code, _headers = delete_duplicate_with_http_info(account_id, v, duplicate_id, opts)
      return data
    end

    # Duplicates: Delete
    # Indicates that a Duplicate should be ignored
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format
    # @param duplicate_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponseDefault, Fixnum, Hash)>] InlineResponseDefault data, response status code and response headers
    def delete_duplicate_with_http_info(account_id, v, duplicate_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PowerListingsApi.delete_duplicate ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling PowerListingsApi.delete_duplicate" if account_id.nil?
      # verify the required parameter 'v' is set
      fail ArgumentError, "Missing the required parameter 'v' when calling PowerListingsApi.delete_duplicate" if v.nil?
      # verify the required parameter 'duplicate_id' is set
      fail ArgumentError, "Missing the required parameter 'duplicate_id' when calling PowerListingsApi.delete_duplicate" if duplicate_id.nil?
      # resource path
      local_var_path = "/accounts/{accountId}/powerlistings/duplicates/{duplicateId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'duplicateId' + '}', duplicate_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'v'] = v

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponseDefault')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PowerListingsApi#delete_duplicate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Publisher Suggestions: Get
    # Fetches details of a specific Publisher Suggestion
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format
    # @param suggestion_id 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20024]
    def get_publisher_suggestion(account_id, v, suggestion_id, opts = {})
      data, _status_code, _headers = get_publisher_suggestion_with_http_info(account_id, v, suggestion_id, opts)
      return data
    end

    # Publisher Suggestions: Get
    # Fetches details of a specific Publisher Suggestion
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format
    # @param suggestion_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20024, Fixnum, Hash)>] InlineResponse20024 data, response status code and response headers
    def get_publisher_suggestion_with_http_info(account_id, v, suggestion_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PowerListingsApi.get_publisher_suggestion ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling PowerListingsApi.get_publisher_suggestion" if account_id.nil?
      # verify the required parameter 'v' is set
      fail ArgumentError, "Missing the required parameter 'v' when calling PowerListingsApi.get_publisher_suggestion" if v.nil?
      # verify the required parameter 'suggestion_id' is set
      fail ArgumentError, "Missing the required parameter 'suggestion_id' when calling PowerListingsApi.get_publisher_suggestion" if suggestion_id.nil?
      # resource path
      local_var_path = "/accounts/{accountId}/powerlistings/publishersuggestions/{suggestionId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'suggestionId' + '}', suggestion_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'v'] = v

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20024')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PowerListingsApi#get_publisher_suggestion\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Duplicates: List
    # Retrieve Duplicates for an account
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of results to return (default to 10)
    # @option opts [Integer] :offset Number of results to skip. Used to page through results (default to 0)
    # @option opts [Array<String>] :location_ids Defaults to all account locations with a PowerListings subscription  **Example:** loc123,loc456,loc789 
    # @option opts [Array<String>] :publisher_ids Defaults to all publishers subscribed by account  **Example:** MAPQUEST,YELP 
    # @option opts [Array<String>] :statuses When specified, only Duplicates with the provided statuses will be returned  **Example:** POSSIBLE_DUPLICATE,SUPPRESSION_REQUESTED 
    # @return [InlineResponse20019]
    def list_duplicates(account_id, v, opts = {})
      data, _status_code, _headers = list_duplicates_with_http_info(account_id, v, opts)
      return data
    end

    # Duplicates: List
    # Retrieve Duplicates for an account
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of results to return
    # @option opts [Integer] :offset Number of results to skip. Used to page through results
    # @option opts [Array<String>] :location_ids Defaults to all account locations with a PowerListings subscription  **Example:** loc123,loc456,loc789 
    # @option opts [Array<String>] :publisher_ids Defaults to all publishers subscribed by account  **Example:** MAPQUEST,YELP 
    # @option opts [Array<String>] :statuses When specified, only Duplicates with the provided statuses will be returned  **Example:** POSSIBLE_DUPLICATE,SUPPRESSION_REQUESTED 
    # @return [Array<(InlineResponse20019, Fixnum, Hash)>] InlineResponse20019 data, response status code and response headers
    def list_duplicates_with_http_info(account_id, v, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PowerListingsApi.list_duplicates ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling PowerListingsApi.list_duplicates" if account_id.nil?
      # verify the required parameter 'v' is set
      fail ArgumentError, "Missing the required parameter 'v' when calling PowerListingsApi.list_duplicates" if v.nil?
      if !opts[:'limit'].nil? && opts[:'limit'] > 50.0
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PowerListingsApi.list_duplicates, must be smaller than or equal to 50.0.'
      end

      if opts[:'statuses'] && !['POSSIBLE_DUPLICATE', 'SUPPRESSION_REQUESTED', 'SUPPRESSED', 'UNAVAILABLE'].include?(opts[:'statuses'])
        fail ArgumentError, 'invalid value for "statuses", must be one of POSSIBLE_DUPLICATE, SUPPRESSION_REQUESTED, SUPPRESSED, UNAVAILABLE'
      end
      # resource path
      local_var_path = "/accounts/{accountId}/powerlistings/duplicates".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'v'] = v
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'locationIds'] = @api_client.build_collection_param(opts[:'location_ids'], :csv) if !opts[:'location_ids'].nil?
      query_params[:'publisherIds'] = @api_client.build_collection_param(opts[:'publisher_ids'], :csv) if !opts[:'publisher_ids'].nil?
      query_params[:'statuses'] = @api_client.build_collection_param(opts[:'statuses'], :csv) if !opts[:'statuses'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20019')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PowerListingsApi#list_duplicates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Listings: List
    # Retrieve all Listings matching the given criteria including status and reasons why a Listing may be unavailable
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of results to return (default to 100)
    # @option opts [Integer] :offset Number of results to skip. Used to page through results (default to 0)
    # @option opts [Array<String>] :location_ids Defaults to all account locations with a PowerListings subscription  **Example:** loc123,loc456,loc789 
    # @option opts [Array<String>] :publisher_ids Defaults to all publishers subscribed by account  **Example:** MAPQUEST,YELP 
    # @return [InlineResponse20021]
    def list_listings(account_id, v, opts = {})
      data, _status_code, _headers = list_listings_with_http_info(account_id, v, opts)
      return data
    end

    # Listings: List
    # Retrieve all Listings matching the given criteria including status and reasons why a Listing may be unavailable
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of results to return
    # @option opts [Integer] :offset Number of results to skip. Used to page through results
    # @option opts [Array<String>] :location_ids Defaults to all account locations with a PowerListings subscription  **Example:** loc123,loc456,loc789 
    # @option opts [Array<String>] :publisher_ids Defaults to all publishers subscribed by account  **Example:** MAPQUEST,YELP 
    # @return [Array<(InlineResponse20021, Fixnum, Hash)>] InlineResponse20021 data, response status code and response headers
    def list_listings_with_http_info(account_id, v, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PowerListingsApi.list_listings ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling PowerListingsApi.list_listings" if account_id.nil?
      # verify the required parameter 'v' is set
      fail ArgumentError, "Missing the required parameter 'v' when calling PowerListingsApi.list_listings" if v.nil?
      if !opts[:'limit'].nil? && opts[:'limit'] > 100.0
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PowerListingsApi.list_listings, must be smaller than or equal to 100.0.'
      end

      # resource path
      local_var_path = "/accounts/{accountId}/powerlistings/listings".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'v'] = v
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'locationIds'] = @api_client.build_collection_param(opts[:'location_ids'], :csv) if !opts[:'location_ids'].nil?
      query_params[:'publisherIds'] = @api_client.build_collection_param(opts[:'publisher_ids'], :csv) if !opts[:'publisher_ids'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20021')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PowerListingsApi#list_listings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Publisher Suggestions: List
    # Retrieve suggestions publishers have submitted for the Locations in an account
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of results to return (default to 10)
    # @option opts [Integer] :offset Number of results to skip. Used to page through results (default to 0)
    # @option opts [Array<String>] :location_ids Defaults to all account locations with a PowerListings subscription  **Example:** loc123,loc456,loc789 
    # @option opts [Array<String>] :publisher_ids Defaults to all publishers subscribed by account  **Example:** MAPQUEST,YELP 
    # @option opts [Array<String>] :statuses When specified, only Publisher Suggestions with the provided statuses will be returned  **Example:** WAITING_ON_CUSTOMER,EXPIRED 
    # @return [InlineResponse20023]
    def list_publisher_suggestions(account_id, v, opts = {})
      data, _status_code, _headers = list_publisher_suggestions_with_http_info(account_id, v, opts)
      return data
    end

    # Publisher Suggestions: List
    # Retrieve suggestions publishers have submitted for the Locations in an account
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of results to return
    # @option opts [Integer] :offset Number of results to skip. Used to page through results
    # @option opts [Array<String>] :location_ids Defaults to all account locations with a PowerListings subscription  **Example:** loc123,loc456,loc789 
    # @option opts [Array<String>] :publisher_ids Defaults to all publishers subscribed by account  **Example:** MAPQUEST,YELP 
    # @option opts [Array<String>] :statuses When specified, only Publisher Suggestions with the provided statuses will be returned  **Example:** WAITING_ON_CUSTOMER,EXPIRED 
    # @return [Array<(InlineResponse20023, Fixnum, Hash)>] InlineResponse20023 data, response status code and response headers
    def list_publisher_suggestions_with_http_info(account_id, v, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PowerListingsApi.list_publisher_suggestions ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling PowerListingsApi.list_publisher_suggestions" if account_id.nil?
      # verify the required parameter 'v' is set
      fail ArgumentError, "Missing the required parameter 'v' when calling PowerListingsApi.list_publisher_suggestions" if v.nil?
      if !opts[:'limit'].nil? && opts[:'limit'] > 50.0
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PowerListingsApi.list_publisher_suggestions, must be smaller than or equal to 50.0.'
      end

      if opts[:'statuses'] && !['WAITING_ON_CUSTOMER', 'ACCEPTED', 'REJECTED', 'EXPIRED'].include?(opts[:'statuses'])
        fail ArgumentError, 'invalid value for "statuses", must be one of WAITING_ON_CUSTOMER, ACCEPTED, REJECTED, EXPIRED'
      end
      # resource path
      local_var_path = "/accounts/{accountId}/powerlistings/publishersuggestions".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'v'] = v
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'locationIds'] = @api_client.build_collection_param(opts[:'location_ids'], :csv) if !opts[:'location_ids'].nil?
      query_params[:'publisherIds'] = @api_client.build_collection_param(opts[:'publisher_ids'], :csv) if !opts[:'publisher_ids'].nil?
      query_params[:'statuses'] = @api_client.build_collection_param(opts[:'statuses'], :csv) if !opts[:'statuses'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20023')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PowerListingsApi#list_publisher_suggestions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Publishers: List
    # Retrieve list of Publishers
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subset **ALL** - return all publishers  **RELEVANT_ONLY** - only return publishers relevant to the account based on supported countries and location types  (default to RELEVANT_ONLY)
    # @return [InlineResponse20022]
    def list_publishers(account_id, v, opts = {})
      data, _status_code, _headers = list_publishers_with_http_info(account_id, v, opts)
      return data
    end

    # Publishers: List
    # Retrieve list of Publishers
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subset **ALL** - return all publishers  **RELEVANT_ONLY** - only return publishers relevant to the account based on supported countries and location types 
    # @return [Array<(InlineResponse20022, Fixnum, Hash)>] InlineResponse20022 data, response status code and response headers
    def list_publishers_with_http_info(account_id, v, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PowerListingsApi.list_publishers ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling PowerListingsApi.list_publishers" if account_id.nil?
      # verify the required parameter 'v' is set
      fail ArgumentError, "Missing the required parameter 'v' when calling PowerListingsApi.list_publishers" if v.nil?
      if opts[:'subset'] && !['ALL', 'RELEVANT_ONLY'].include?(opts[:'subset'])
        fail ArgumentError, 'invalid value for "subset", must be one of ALL, RELEVANT_ONLY'
      end
      # resource path
      local_var_path = "/accounts/{accountId}/powerlistings/publishers".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'v'] = v
      query_params[:'subset'] = opts[:'subset'] if !opts[:'subset'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20022')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PowerListingsApi#list_publishers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Listings: Opt In
    # Opts designated locations into designated publishers  **NOTE:** The number of Location IDs multiplied by the number of Publisher IDs is capped at 100. If you exceed this, you will receive a 400 error response. 
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :location_ids Defaults to all account locations with a PowerListings subscription  **Example:** loc123,loc456,loc789 
    # @option opts [Array<String>] :publisher_ids Defaults to all publishers subscribed by account  **Example:** MAPQUEST,YELP 
    # @return [InlineResponseDefault]
    def opt_in_listings(account_id, v, opts = {})
      data, _status_code, _headers = opt_in_listings_with_http_info(account_id, v, opts)
      return data
    end

    # Listings: Opt In
    # Opts designated locations into designated publishers  **NOTE:** The number of Location IDs multiplied by the number of Publisher IDs is capped at 100. If you exceed this, you will receive a 400 error response. 
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :location_ids Defaults to all account locations with a PowerListings subscription  **Example:** loc123,loc456,loc789 
    # @option opts [Array<String>] :publisher_ids Defaults to all publishers subscribed by account  **Example:** MAPQUEST,YELP 
    # @return [Array<(InlineResponseDefault, Fixnum, Hash)>] InlineResponseDefault data, response status code and response headers
    def opt_in_listings_with_http_info(account_id, v, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PowerListingsApi.opt_in_listings ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling PowerListingsApi.opt_in_listings" if account_id.nil?
      # verify the required parameter 'v' is set
      fail ArgumentError, "Missing the required parameter 'v' when calling PowerListingsApi.opt_in_listings" if v.nil?
      # resource path
      local_var_path = "/accounts/{accountId}/powerlistings/listings/optin".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'v'] = v
      query_params[:'locationIds'] = @api_client.build_collection_param(opts[:'location_ids'], :csv) if !opts[:'location_ids'].nil?
      query_params[:'publisherIds'] = @api_client.build_collection_param(opts[:'publisher_ids'], :csv) if !opts[:'publisher_ids'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponseDefault')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PowerListingsApi#opt_in_listings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Listings: Opt Out
    # Opts designated locations out of designated publishers  **NOTE:** The number of Location IDs multiplied by the number of Publisher IDs is capped at 100. If you exceed this, you will receive a 400 error response. 
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :location_ids Defaults to all account locations with a PowerListings subscription  **Example:** loc123,loc456,loc789 
    # @option opts [Array<String>] :publisher_ids Defaults to all publishers subscribed by account  **Example:** MAPQUEST,YELP 
    # @return [InlineResponseDefault]
    def opt_out_listings(account_id, v, opts = {})
      data, _status_code, _headers = opt_out_listings_with_http_info(account_id, v, opts)
      return data
    end

    # Listings: Opt Out
    # Opts designated locations out of designated publishers  **NOTE:** The number of Location IDs multiplied by the number of Publisher IDs is capped at 100. If you exceed this, you will receive a 400 error response. 
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :location_ids Defaults to all account locations with a PowerListings subscription  **Example:** loc123,loc456,loc789 
    # @option opts [Array<String>] :publisher_ids Defaults to all publishers subscribed by account  **Example:** MAPQUEST,YELP 
    # @return [Array<(InlineResponseDefault, Fixnum, Hash)>] InlineResponseDefault data, response status code and response headers
    def opt_out_listings_with_http_info(account_id, v, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PowerListingsApi.opt_out_listings ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling PowerListingsApi.opt_out_listings" if account_id.nil?
      # verify the required parameter 'v' is set
      fail ArgumentError, "Missing the required parameter 'v' when calling PowerListingsApi.opt_out_listings" if v.nil?
      # resource path
      local_var_path = "/accounts/{accountId}/powerlistings/listings/optout".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'v'] = v
      query_params[:'locationIds'] = @api_client.build_collection_param(opts[:'location_ids'], :csv) if !opts[:'location_ids'].nil?
      query_params[:'publisherIds'] = @api_client.build_collection_param(opts[:'publisher_ids'], :csv) if !opts[:'publisher_ids'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponseDefault')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PowerListingsApi#opt_out_listings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Duplicates: Suppress
    # Request suppression of a Duplicate
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format
    # @param duplicate_id 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponseDefault]
    def suppress_duplicate(account_id, v, duplicate_id, opts = {})
      data, _status_code, _headers = suppress_duplicate_with_http_info(account_id, v, duplicate_id, opts)
      return data
    end

    # Duplicates: Suppress
    # Request suppression of a Duplicate
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format
    # @param duplicate_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponseDefault, Fixnum, Hash)>] InlineResponseDefault data, response status code and response headers
    def suppress_duplicate_with_http_info(account_id, v, duplicate_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PowerListingsApi.suppress_duplicate ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling PowerListingsApi.suppress_duplicate" if account_id.nil?
      # verify the required parameter 'v' is set
      fail ArgumentError, "Missing the required parameter 'v' when calling PowerListingsApi.suppress_duplicate" if v.nil?
      # verify the required parameter 'duplicate_id' is set
      fail ArgumentError, "Missing the required parameter 'duplicate_id' when calling PowerListingsApi.suppress_duplicate" if duplicate_id.nil?
      # resource path
      local_var_path = "/accounts/{accountId}/powerlistings/duplicates/{duplicateId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'duplicateId' + '}', duplicate_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'v'] = v

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponseDefault')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PowerListingsApi#suppress_duplicate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Publisher Suggestions: Update
    # Accept or reject a Publisher Suggestion
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format
    # @param suggestion_id 
    # @param status The status of the Publisher Suggestion
    # @param [Hash] opts the optional parameters
    # @return [InlineResponseDefault]
    def update_publisher_suggestion(account_id, v, suggestion_id, status, opts = {})
      data, _status_code, _headers = update_publisher_suggestion_with_http_info(account_id, v, suggestion_id, status, opts)
      return data
    end

    # Publisher Suggestions: Update
    # Accept or reject a Publisher Suggestion
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format
    # @param suggestion_id 
    # @param status The status of the Publisher Suggestion
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponseDefault, Fixnum, Hash)>] InlineResponseDefault data, response status code and response headers
    def update_publisher_suggestion_with_http_info(account_id, v, suggestion_id, status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PowerListingsApi.update_publisher_suggestion ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling PowerListingsApi.update_publisher_suggestion" if account_id.nil?
      # verify the required parameter 'v' is set
      fail ArgumentError, "Missing the required parameter 'v' when calling PowerListingsApi.update_publisher_suggestion" if v.nil?
      # verify the required parameter 'suggestion_id' is set
      fail ArgumentError, "Missing the required parameter 'suggestion_id' when calling PowerListingsApi.update_publisher_suggestion" if suggestion_id.nil?
      # verify the required parameter 'status' is set
      fail ArgumentError, "Missing the required parameter 'status' when calling PowerListingsApi.update_publisher_suggestion" if status.nil?
      # verify enum value
      unless ['ACCEPTED', 'REJECTED'].include?(status)
        fail ArgumentError, "invalid value for 'status', must be one of ACCEPTED, REJECTED"
      end
      # resource path
      local_var_path = "/accounts/{accountId}/powerlistings/publishersuggestions/{suggestionId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'suggestionId' + '}', suggestion_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'v'] = v
      query_params[:'status'] = status

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponseDefault')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PowerListingsApi#update_publisher_suggestion\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
