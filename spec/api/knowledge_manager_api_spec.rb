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

# Unit tests for YextClient::KnowledgeManagerApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'KnowledgeManagerApi' do
  before do
    # run before each test
    @instance = YextClient::KnowledgeManagerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of KnowledgeManagerApi' do
    it 'should create an instact of KnowledgeManagerApi' do
      expect(@instance).to be_instance_of(YextClient::KnowledgeManagerApi)
    end
  end

  # unit tests for create_bio
  # Bios: Create
  # Create new Bio List.
  # @param account_id 
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [IdResponse]
  describe 'create_bio test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_event
  # Events: Create
  # Create a new Event List.
  # @param account_id 
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [IdResponse]
  describe 'create_event test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_location
  # Locations: Create
  # Create a new Location.    ## Required fields * **&#x60;id&#x60;** * **&#x60;locationName&#x60;** * **&#x60;address&#x60;** * **&#x60;city&#x60;** * **&#x60;state&#x60;** * **&#x60;zip&#x60;** * **&#x60;countryCode&#x60;** * **&#x60;phone&#x60;** * **&#x60;categoryIds&#x60;** * **&#x60;featuredMessage&#x60;**   ## Optional fields that trigger warnings Submitting invalid values for certain optional fields will not trigger an error response. Instead, the success response will contain warning messages explaining why the invalid optional values were not stored in the system. The fields that generate warning messages are: &lt;br&gt;&lt;br&gt; * **&#x60;paymentOptions&#x60;** * **&#x60;logo&#x60;** * **&#x60;photos&#x60;** * **&#x60;twitterHandle&#x60;** * **&#x60;facebookPageUrl&#x60;** * **&#x60;languages&#x60;**  
  # @param account_id 
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param location_request 
  # @param [Hash] opts the optional parameters
  # @return [IdResponse]
  describe 'create_location test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_menu
  # Menus: Create
  # 
  # @param account_id 
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [IdResponse]
  describe 'create_menu test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_product
  # Products: Create
  # Create a new Product List.
  # @param account_id 
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [IdResponse]
  describe 'create_product test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_bio_list
  # Bios: Delete
  # Delete an existing Bios List.
  # @param account_id 
  # @param list_id ID of this List.
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param [Hash] opts the optional parameters
  # @return [ErrorResponse]
  describe 'delete_bio_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_event_list
  # Events: Delete
  # Delete an existing Event List.
  # @param account_id 
  # @param list_id ID of this List.
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param [Hash] opts the optional parameters
  # @return [ErrorResponse]
  describe 'delete_event_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_language_profile
  # Language Profiles: Delete
  # Remove a Language Profile from a location.
  # @param account_id 
  # @param location_id 
  # @param language_code Locale code.
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param [Hash] opts the optional parameters
  # @return [ErrorResponse]
  describe 'delete_language_profile test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_menu_list
  # Menus: Delete
  # Delete an existing Menu.
  # @param account_id 
  # @param list_id ID of this List.
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param [Hash] opts the optional parameters
  # @return [ErrorResponse]
  describe 'delete_menu_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_product_list
  # Products: Delete
  # Delete an existing Products List.
  # @param account_id 
  # @param list_id ID of this List.
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param [Hash] opts the optional parameters
  # @return [ErrorResponse]
  describe 'delete_product_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_bio
  # Bios: Get
  # Retrieve a specific Bios List.
  # @param account_id 
  # @param list_id ID of this List.
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param [Hash] opts the optional parameters
  # @return [BioListResponse]
  describe 'get_bio test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_bios
  # Bios: List
  # Retrieve all Bio Lists for an account.
  # @param account_id 
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of results to return.
  # @option opts [Integer] :offset Number of results to skip. Used to page through results.
  # @return [BioListsResponse]
  describe 'get_bios test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_business_categories
  # Categories: List
  # Get available Categories.  All Locations are required to have an associated Category to assist with organization and search. Yext provides a hierarchy of business categories for this purpose, exposed by this API. 
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :language Only categories that apply to this language will be returned.  **Example:** en 
  # @option opts [String] :country Only categories that apply in this country will be returned.  **Example:** US 
  # @return [BusinessCategoriesResponse]
  describe 'get_business_categories test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_custom_fields
  # Custom Fields: List
  # Returns a list of Custom Fields in an Account.
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset Number of results to skip. Used to page through results.
  # @option opts [Integer] :limit Number of results to return.
  # @return [CustomFieldsResponse]
  describe 'get_custom_fields test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_event
  # Events: Get
  # Retrieve a specific Event List.
  # @param account_id 
  # @param list_id ID of this List.
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param [Hash] opts the optional parameters
  # @return [EventListResponse]
  describe 'get_event test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_events
  # Events: List
  # Retrieve all Event Lists for an account.
  # @param account_id 
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of results to return.
  # @option opts [Integer] :offset Number of results to skip. Used to page through results.
  # @return [EventListsResponse]
  describe 'get_events test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_google_keywords
  # Google Fields: List
  # Use the Google Fields endpoint to retrieve a complete list of Google&#39;s location attributes for each business category. This list includes attributes that may not apply to all Locations in an account. The set of attributes available to a Location depends on its primary business category. You can view and edit the attributes of Locations in the googleAttributes Location field.
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param [Hash] opts the optional parameters
  # @return [GoogleFieldsResponse]
  describe 'get_google_keywords test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_language_profile
  # Language Profiles: Get
  # Gets the the requested Language Profile for a given Location.
  # @param account_id 
  # @param location_id 
  # @param language_code Locale code.
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param [Hash] opts the optional parameters
  # @return [LocationResponse]
  describe 'get_language_profile test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_language_profiles
  # Language Profiles: List
  # Get Language Profiles for a Location.
  # @param account_id 
  # @param location_id 
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param [Hash] opts the optional parameters
  # @return [LanguageProfilesResponse]
  describe 'get_language_profiles test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_location
  # Locations: Get
  # Gets the primary profile for a single Location.
  # @param account_id 
  # @param location_id 
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param [Hash] opts the optional parameters
  # @return [LocationResponse]
  describe 'get_location test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_location_folders
  # Folders: List
  # Returns a list of Location Folders in an Account.
  # @param account_id 
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset Number of results to skip. Used to page through results.
  # @option opts [Integer] :limit Number of results to return.
  # @return [FoldersResponse]
  describe 'get_location_folders test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_locations
  # Locations: List
  # Get multiple Locations (primary profiles only).
  # @param account_id 
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of results to return.
  # @option opts [Integer] :offset Number of results to skip. Used to page through results.
  # @return [LocationsResponse]
  describe 'get_locations test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_menu
  # Menus: Get
  # Retrieve a specific Menu.
  # @param account_id 
  # @param list_id ID of this List.
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param [Hash] opts the optional parameters
  # @return [MenuListResponse]
  describe 'get_menu test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_menus
  # Menus: List
  # Retrieve all Menus for an account.
  # @param account_id 
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of results to return.
  # @option opts [Integer] :offset Number of results to skip. Used to page through results.
  # @return [MenuListsResponse]
  describe 'get_menus test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_product
  # Products: Get
  # Retrieve a specific Product List.
  # @param account_id 
  # @param list_id ID of this List.
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param [Hash] opts the optional parameters
  # @return [ProductListResponse]
  describe 'get_product test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_products
  # Products: List
  # Retrieve all Product Lists for an account.
  # @param account_id 
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of results to return.
  # @option opts [Integer] :offset Number of results to skip. Used to page through results.
  # @return [ProductListsResponse]
  describe 'get_products test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_bio
  # Bios: Update
  # Update an existing Bios List.
  # @param account_id 
  # @param list_id ID of this List.
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [BioListResponse]
  describe 'update_bio test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_event
  # Events: Update
  # Update an existing Event List.
  # @param account_id 
  # @param list_id ID of this List.
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [EventListResponse]
  describe 'update_event test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_location
  # Locations: Update
  # Updates the primary profile for a Location.  **NOTE:** Despite using the PUT method, Locations: Update only updates supplied fields. Omitted fields are not modified.  **NOTE:** The Location&#39;s primary profile language can be changed by calling this endpoint with a different, but unused, language code. 
  # @param account_id 
  # @param location_id 
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param location_request 
  # @param [Hash] opts the optional parameters
  # @return [IdResponse]
  describe 'update_location test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_menu
  # Menus: Update
  # Update an existing Menu.
  # @param account_id 
  # @param list_id ID of this List.
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [MenuListResponse]
  describe 'update_menu test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_product
  # Products: Update
  # Update an existing Product List.
  # @param account_id 
  # @param list_id ID of this List.
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [ProductListResponse]
  describe 'update_product test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for upsert_language_profile
  # Language Profiles: Upsert
  # Creates and / or sets the fields for a Language Profile  **NOTE:** You can change a Language Profile’s language by supplying a different (but unused) language code. 
  # @param account_id 
  # @param location_id 
  # @param language_code Locale code.
  # @param v A date in &#x60;YYYYMMDD&#x60; format.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :primary When present and set to true, the specified profile will become the location’s primary Language Profile.
  # @return [ErrorResponse]
  describe 'upsert_language_profile test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end