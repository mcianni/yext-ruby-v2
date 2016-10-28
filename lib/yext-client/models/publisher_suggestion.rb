=begin
#Yext API

# 

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

require 'date'

module YextClient

  class PublisherSuggestion
    # The status of the suggestion
    attr_accessor :status

    # The content that the publisher suggested to change 
    attr_accessor :original_content

    # The date the suggestion expired or was accepted or rejected
    attr_accessor :date_resolved

    # Resolver of the Publisher Suggestion
    attr_accessor :resolved_by

    # The date Yext received the suggestion
    attr_accessor :date_created

    # ID of the location the suggestion is for
    attr_accessor :location_id

    # The location field the suggestion is for
    attr_accessor :field_name

    # The content suggested as a replacement of the `originalContent`
    attr_accessor :suggested_content

    # ID of the publisher who submitted the suggestion
    attr_accessor :publisher_id

    # ID of this Publisher Suggestion
    attr_accessor :id

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'status' => :'status',
        :'original_content' => :'originalContent',
        :'date_resolved' => :'dateResolved',
        :'resolved_by' => :'resolvedBy',
        :'date_created' => :'dateCreated',
        :'location_id' => :'locationId',
        :'field_name' => :'fieldName',
        :'suggested_content' => :'suggestedContent',
        :'publisher_id' => :'publisherId',
        :'id' => :'id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'status' => :'String',
        :'original_content' => :'String',
        :'date_resolved' => :'String',
        :'resolved_by' => :'String',
        :'date_created' => :'String',
        :'location_id' => :'String',
        :'field_name' => :'String',
        :'suggested_content' => :'String',
        :'publisher_id' => :'String',
        :'id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'originalContent')
        self.original_content = attributes[:'originalContent']
      end

      if attributes.has_key?(:'dateResolved')
        self.date_resolved = attributes[:'dateResolved']
      end

      if attributes.has_key?(:'resolvedBy')
        self.resolved_by = attributes[:'resolvedBy']
      end

      if attributes.has_key?(:'dateCreated')
        self.date_created = attributes[:'dateCreated']
      end

      if attributes.has_key?(:'locationId')
        self.location_id = attributes[:'locationId']
      end

      if attributes.has_key?(:'fieldName')
        self.field_name = attributes[:'fieldName']
      end

      if attributes.has_key?(:'suggestedContent')
        self.suggested_content = attributes[:'suggestedContent']
      end

      if attributes.has_key?(:'publisherId')
        self.publisher_id = attributes[:'publisherId']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      status_validator = EnumAttributeValidator.new('String', ["WAITING_ON_CUSTOMER", "ACCEPTED", "REJECTED", "EXPIRED"])
      return false unless status_validator.valid?(@status)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["WAITING_ON_CUSTOMER", "ACCEPTED", "REJECTED", "EXPIRED"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for 'status', must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          status == o.status &&
          original_content == o.original_content &&
          date_resolved == o.date_resolved &&
          resolved_by == o.resolved_by &&
          date_created == o.date_created &&
          location_id == o.location_id &&
          field_name == o.field_name &&
          suggested_content == o.suggested_content &&
          publisher_id == o.publisher_id &&
          id == o.id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [status, original_content, date_resolved, resolved_by, date_created, location_id, field_name, suggested_content, publisher_id, id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = YextClient.const_get(type).new
        if defined? temp_model.isEnum 
          value.to_s
        else
          temp_model.build_from_hash(value)
        end
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
