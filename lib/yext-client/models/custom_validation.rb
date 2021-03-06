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

require 'date'

module YextClient
  # A Custom Field validation object, describing validation rules when a Custom Field value is set or updated. 
  class CustomValidation
    # Maximum date, accepted as 'YYYY-MM-DD'.
    attr_accessor :max_date

    # Minimum photo height, in pixels.
    attr_accessor :min_height

    # Maximum value.
    attr_accessor :max_value

    # Minimum value.
    attr_accessor :min_value

    # Minimum photo width, in pixels.
    attr_accessor :min_width

    # Minimum character length.
    attr_accessor :min_char_length

    # Maximum item count.
    attr_accessor :max_item_count

    # Minimum item count.
    attr_accessor :min_item_count

    # Maximum character length.
    attr_accessor :max_char_length

    # Aspect ratio of a photo.
    attr_accessor :aspect_ratio

    # Minimum date, accepted as 'YYYY-MM-DD'.
    attr_accessor :min_date

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
        :'max_date' => :'maxDate',
        :'min_height' => :'minHeight',
        :'max_value' => :'maxValue',
        :'min_value' => :'minValue',
        :'min_width' => :'minWidth',
        :'min_char_length' => :'minCharLength',
        :'max_item_count' => :'maxItemCount',
        :'min_item_count' => :'minItemCount',
        :'max_char_length' => :'maxCharLength',
        :'aspect_ratio' => :'aspectRatio',
        :'min_date' => :'minDate'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'max_date' => :'String',
        :'min_height' => :'Integer',
        :'max_value' => :'Float',
        :'min_value' => :'Float',
        :'min_width' => :'Integer',
        :'min_char_length' => :'Integer',
        :'max_item_count' => :'Integer',
        :'min_item_count' => :'Integer',
        :'max_char_length' => :'Integer',
        :'aspect_ratio' => :'String',
        :'min_date' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'maxDate')
        self.max_date = attributes[:'maxDate']
      end

      if attributes.has_key?(:'minHeight')
        self.min_height = attributes[:'minHeight']
      end

      if attributes.has_key?(:'maxValue')
        self.max_value = attributes[:'maxValue']
      end

      if attributes.has_key?(:'minValue')
        self.min_value = attributes[:'minValue']
      end

      if attributes.has_key?(:'minWidth')
        self.min_width = attributes[:'minWidth']
      end

      if attributes.has_key?(:'minCharLength')
        self.min_char_length = attributes[:'minCharLength']
      end

      if attributes.has_key?(:'maxItemCount')
        self.max_item_count = attributes[:'maxItemCount']
      end

      if attributes.has_key?(:'minItemCount')
        self.min_item_count = attributes[:'minItemCount']
      end

      if attributes.has_key?(:'maxCharLength')
        self.max_char_length = attributes[:'maxCharLength']
      end

      if attributes.has_key?(:'aspectRatio')
        self.aspect_ratio = attributes[:'aspectRatio']
      end

      if attributes.has_key?(:'minDate')
        self.min_date = attributes[:'minDate']
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
      aspect_ratio_validator = EnumAttributeValidator.new('String', ["UNCONSTRAINED", "1:1", "4:3", "3:2", "5:3", "16:9", "3:1", "2:3", "5:7", "4:5", "4:1"])
      return false unless aspect_ratio_validator.valid?(@aspect_ratio)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] aspect_ratio Object to be assigned
    def aspect_ratio=(aspect_ratio)
      validator = EnumAttributeValidator.new('String', ["UNCONSTRAINED", "1:1", "4:3", "3:2", "5:3", "16:9", "3:1", "2:3", "5:7", "4:5", "4:1"])
      unless validator.valid?(aspect_ratio)
        fail ArgumentError, "invalid value for 'aspect_ratio', must be one of #{validator.allowable_values}."
      end
      @aspect_ratio = aspect_ratio
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          max_date == o.max_date &&
          min_height == o.min_height &&
          max_value == o.max_value &&
          min_value == o.min_value &&
          min_width == o.min_width &&
          min_char_length == o.min_char_length &&
          max_item_count == o.max_item_count &&
          min_item_count == o.min_item_count &&
          max_char_length == o.max_char_length &&
          aspect_ratio == o.aspect_ratio &&
          min_date == o.min_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [max_date, min_height, max_value, min_value, min_width, min_char_length, max_item_count, min_item_count, max_char_length, aspect_ratio, min_date].hash
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
