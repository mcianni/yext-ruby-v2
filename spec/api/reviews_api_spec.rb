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

require 'spec_helper'
require 'json'

# Unit tests for YextClient::ReviewsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ReviewsApi' do
  before do
    # run before each test
    @instance = YextClient::ReviewsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReviewsApi' do
    it 'should create an instact of ReviewsApi' do
      expect(@instance).to be_instance_of(YextClient::ReviewsApi)
    end
  end

  # unit tests for create_comment
  # Comments: Create
  # Creates a new Comment on a Review.
  # @param account_id 
  # @param review_id ID of this Review.
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :content Content of the new comment.
  # @option opts [String] :visibility 
  # @option opts [Integer] :parent_id If this Comment is in response to another comment, use this field to specify the ID of the parent Comment.
  # @return [ErrorResponse]
  describe 'create_comment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_review
  # Reviews: Create
  # Create a new External First Party Review. &lt;br&gt;&lt;br&gt;  ## Required fields * **&#x60;locationId&#x60;** * **&#x60;authorName&#x60;** * **&#x60;authorEmail&#x60;** * **&#x60;rating&#x60;** * **&#x60;content&#x60;**   ## Optional fields * **&#x60;status&#x60;** 
  # @param account_id 
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param location_id The ID of the location associated with the review.
  # @param author_name The name of the person who wrote the review.
  # @param author_email The email address of the person who wrote the review.
  # @param rating The rating of the review from 1 to 5.
  # @param content The content of the review.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :status 
  # @return [IdResponse]
  describe 'create_review test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_review_invites
  # Review Invitations: Create
  # Sends review invitations to one or more consumers.
  # @param account_id 
  # @param reviews 
  # @param [Hash] opts the optional parameters
  # @return [Array<CreateReviewInvitationResponse>]
  describe 'create_review_invites test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_review
  # Reviews: Get
  # Retrieve a specific Review.
  # @param account_id 
  # @param review_id ID of this Review.
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param [Hash] opts the optional parameters
  # @return [ReviewResponse]
  describe 'get_review test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_reviews
  # Reviews: List
  # Retrieve all Reviews matching the given criteria.  **NOTE:** Yelp Reviews are **not** included. 
  # @param account_id 
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of results to return.
  # @option opts [Integer] :offset Number of results to skip. Used to page through results.
  # @option opts [Array<String>] :location_ids When provided, only reviews for the requested locations will be returned.  By default, reviews will be returned for all locations subscribed to Review Monitoring.  **Example:** loc123,loc456,loc789 
  # @option opts [String] :folder_id When provided, only reviews for locations in the given folder and its subfolders will be included in the results.
  # @option opts [Array<String>] :countries When present, only reviews for locations in the given countries will be returned. Countries are denoted by ISO 3166 2-letter country codes.
  # @option opts [Array<String>] :location_labels When present, only reviews for location with the provided labels will be returned.
  # @option opts [Array<String>] :publisher_ids List of publisher IDs. If no IDs are specified, defaults to all publishers subscribed by account.  **Example:** MAPQUEST,YELP 
  # @option opts [String] :review_content When specified, only reviews that include the provided content will be returned.
  # @option opts [Float] :min_rating When specified, only reviews with the provided minimum rating or higher will be returned.
  # @option opts [Float] :max_rating 
  # @option opts [Date] :min_publisher_date When specified, only reviews with a publisher date on or after the given date will be returned.
  # @option opts [Date] :max_publisher_date When specified, only reviews with a publisher date on or before the given date will be returned.
  # @option opts [Date] :min_last_yext_update_date When specified, only reviews with a last Yext update date on or after the given date will be returned.
  # @option opts [Date] :max_last_yext_update_date When specified, only reviews with a last Yext update date on or before the given date will be returned.
  # @option opts [String] :awaiting_response When specified, only reviews that are awaiting an owner reply on the given objects will be returned.  For example, when &#x60;awaitingResponse&#x3D;COMMENT&#x60;, reviews will only be returned if they have at least one comment that has not been responded to by the owner. 
  # @option opts [Integer] :min_non_owner_comments When specified, only reviews that have at least the provided number of non-owner comments will be returned.
  # @option opts [String] :reviewer_name When specified, only reviews whose authorName contains the provided string will be returned.
  # @option opts [String] :reviewer_email When specified, only reviews whose authorEmail matches the provided email address will be returned.
  # @return [ReviewsResponse]
  describe 'list_reviews test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_review
  # Reviews: Update
  # Updates an External First Party Review. &lt;br&gt;&lt;br&gt; **NOTE:** Despite using the &#x60;PUT&#x60; method, Reviews: Update only updates supplied fields. Omitted fields are not modified. 
  # @param account_id 
  # @param review_id ID of this Review.
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :author_name The name of the person who wrote the review.
  # @option opts [String] :author_email The email address of the person who wrote the review.
  # @option opts [Integer] :rating The rating of the review from 1 to 5.
  # @option opts [String] :content The content of the review.
  # @option opts [String] :status 
  # @return [IdResponse]
  describe 'update_review test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
