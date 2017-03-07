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

require "uri"

module YextClient
  class AnalyticsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Activity Log
    # Fetches account activity information.
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format.
    # @param [Hash] opts the optional parameters
    # @option opts [ActivityLogRequest] :body 
    # @return [ActivitiesResponse]
    def activity_log(account_id, v, opts = {})
      data, _status_code, _headers = activity_log_with_http_info(account_id, v, opts)
      return data
    end

    # Activity Log
    # Fetches account activity information.
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format.
    # @param [Hash] opts the optional parameters
    # @option opts [ActivityLogRequest] :body 
    # @return [Array<(ActivitiesResponse, Fixnum, Hash)>] ActivitiesResponse data, response status code and response headers
    def activity_log_with_http_info(account_id, v, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AnalyticsApi.activity_log ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling AnalyticsApi.activity_log" if account_id.nil?
      # verify the required parameter 'v' is set
      fail ArgumentError, "Missing the required parameter 'v' when calling AnalyticsApi.activity_log" if v.nil?
      # resource path
      local_var_path = "/accounts/{accountId}/analytics/activity".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ActivitiesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AnalyticsApi#activity_log\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Reports
    # Begins the process of producing a report.
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :async Defaults to false.  When true, the report’s ID will be returned immediately and the report results can be fetched later.  When false, the report results will be returned immediately, but an error may occur if the data requested is too large
    # @option opts [String] :callback Optional.  When async&#x3D;true and callback is specified, the provided URL will be called when the report is ready.  The URL must of of the form:       POST https://[your domain]/[your path]  It must accept the following parameters:      id:     (int)     - The ID of the report that is ready      status: (string)  - one of [DONE, FAILED]      url:    (string)  - When status&#x3D;DONE, contains the URL to download the report data as a text file. 
    # @option opts [CreateReportRequestBody] :body JSON object containing any filters to be applied to the report
    # @return [CreateReportsResponse]
    def create_reports(account_id, v, opts = {})
      data, _status_code, _headers = create_reports_with_http_info(account_id, v, opts)
      return data
    end

    # Create Reports
    # Begins the process of producing a report.
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :async Defaults to false.  When true, the report’s ID will be returned immediately and the report results can be fetched later.  When false, the report results will be returned immediately, but an error may occur if the data requested is too large
    # @option opts [String] :callback Optional.  When async&#x3D;true and callback is specified, the provided URL will be called when the report is ready.  The URL must of of the form:       POST https://[your domain]/[your path]  It must accept the following parameters:      id:     (int)     - The ID of the report that is ready      status: (string)  - one of [DONE, FAILED]      url:    (string)  - When status&#x3D;DONE, contains the URL to download the report data as a text file. 
    # @option opts [CreateReportRequestBody] :body JSON object containing any filters to be applied to the report
    # @return [Array<(CreateReportsResponse, Fixnum, Hash)>] CreateReportsResponse data, response status code and response headers
    def create_reports_with_http_info(account_id, v, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AnalyticsApi.create_reports ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling AnalyticsApi.create_reports" if account_id.nil?
      # verify the required parameter 'v' is set
      fail ArgumentError, "Missing the required parameter 'v' when calling AnalyticsApi.create_reports" if v.nil?
      # resource path
      local_var_path = "/accounts/{accountId}/analytics/reports".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'v'] = v
      query_params[:'async'] = opts[:'async'] if !opts[:'async'].nil?
      query_params[:'callback'] = opts[:'callback'] if !opts[:'callback'].nil?

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
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreateReportsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AnalyticsApi#create_reports\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Max Dates
    # The dates through which reporting data is available.
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format.
    # @param [Hash] opts the optional parameters
    # @return [MaximumDatesResponse]
    def get_max_dates(account_id, v, opts = {})
      data, _status_code, _headers = get_max_dates_with_http_info(account_id, v, opts)
      return data
    end

    # Max Dates
    # The dates through which reporting data is available.
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MaximumDatesResponse, Fixnum, Hash)>] MaximumDatesResponse data, response status code and response headers
    def get_max_dates_with_http_info(account_id, v, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AnalyticsApi.get_max_dates ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling AnalyticsApi.get_max_dates" if account_id.nil?
      # verify the required parameter 'v' is set
      fail ArgumentError, "Missing the required parameter 'v' when calling AnalyticsApi.get_max_dates" if v.nil?
      # resource path
      local_var_path = "/accounts/{accountId}/analytics/maxdates".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

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
        :return_type => 'MaximumDatesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AnalyticsApi#get_max_dates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Report Status
    # Checks the status of a Report created with async=true.
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format.
    # @param report_id 
    # @param [Hash] opts the optional parameters
    # @return [ReportStatusResponse]
    def report_status(account_id, v, report_id, opts = {})
      data, _status_code, _headers = report_status_with_http_info(account_id, v, report_id, opts)
      return data
    end

    # Report Status
    # Checks the status of a Report created with async&#x3D;true.
    # @param account_id 
    # @param v A date in &#x60;YYYYMMDD&#x60; format.
    # @param report_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReportStatusResponse, Fixnum, Hash)>] ReportStatusResponse data, response status code and response headers
    def report_status_with_http_info(account_id, v, report_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AnalyticsApi.report_status ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling AnalyticsApi.report_status" if account_id.nil?
      # verify the required parameter 'v' is set
      fail ArgumentError, "Missing the required parameter 'v' when calling AnalyticsApi.report_status" if v.nil?
      # verify the required parameter 'report_id' is set
      fail ArgumentError, "Missing the required parameter 'report_id' when calling AnalyticsApi.report_status" if report_id.nil?
      # resource path
      local_var_path = "/accounts/{accountId}/analytics/standardreports/{reportId}".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'reportId' + '}', report_id.to_s)

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
        :return_type => 'ReportStatusResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AnalyticsApi#report_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
