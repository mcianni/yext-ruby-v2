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
require 'date'

# Unit tests for YextClient::ActivityFilter
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ActivityFilter' do
  before do
    # run before each test
    @instance = YextClient::ActivityFilter.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ActivityFilter' do
    it 'should create an instact of ActivityFilter' do
      expect(@instance).to be_instance_of(YextClient::ActivityFilter)
    end
  end
  describe 'test attribute "start_date"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "location_ids"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "activity_types"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["LOCATION_UPDATED", "PUBLISHER_SUGGESTION_CREATED", "PUBLISHER_SUGGESTION_APPROVED", "PUBLISHER_SUGGESTION_REJECTED", "REVIEW_CREATED", "SOCIAL_POST_CREATED", "LISTING_LIVE", "DUPLICATE_SUPPRESSED"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.activity_types = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "end_date"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "actors"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["YEXT_SYSTEM", "SCHEDULED_CONTENT", "API", "PUBLISHER", "CUSTOMER", "CONSUMER"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.actors = value }.not_to raise_error
       #end
    end
  end

end

