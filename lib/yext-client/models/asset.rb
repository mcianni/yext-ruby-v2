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

  class Asset
    # URL to the YouTube video.  **Required - when asset type is ``VIDEO``. Must be a valid URL to a YouTube video. Cannot be updated once created.**
    attr_accessor :video_url

    # Asset description.
    attr_accessor :description

    attr_accessor :for_locations

    # Clickthrough URL.  **Optional - only valid when asset type is ``PHOTO``.** 
    attr_accessor :clickthrough_url

    # List of text labels to apply to this Asset.
    attr_accessor :labels

    # URL to the photo asset.  **Required - when asset type is ``PHOTO``. Must be a valid URL to a photo asset. Cannot be updated once created.** 
    attr_accessor :photo_url

    # Details text.  **Optional - only valid when asset type is ``PHOTO``.** 
    attr_accessor :details

    # Alternate text for accessibility purposes.  **Optional - only valid when asset type is ``PHOTO``.** 
    attr_accessor :alternate_text

    # Asset type.
    attr_accessor :type

    # Primary key. Unique alphanumeric (Latin-1) ID assigned by the Yext.
    attr_accessor :id

    attr_accessor :contents

    # Asset name.
    attr_accessor :name

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
        :'video_url' => :'videoUrl',
        :'description' => :'description',
        :'for_locations' => :'forLocations',
        :'clickthrough_url' => :'clickthroughUrl',
        :'labels' => :'labels',
        :'photo_url' => :'photoUrl',
        :'details' => :'details',
        :'alternate_text' => :'alternateText',
        :'type' => :'type',
        :'id' => :'id',
        :'contents' => :'contents',
        :'name' => :'name'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'video_url' => :'String',
        :'description' => :'String',
        :'for_locations' => :'AssetForLocations',
        :'clickthrough_url' => :'String',
        :'labels' => :'Array<String>',
        :'photo_url' => :'String',
        :'details' => :'String',
        :'alternate_text' => :'String',
        :'type' => :'String',
        :'id' => :'String',
        :'contents' => :'Array<AssetTextContent>',
        :'name' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'videoUrl')
        self.video_url = attributes[:'videoUrl']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'forLocations')
        self.for_locations = attributes[:'forLocations']
      end

      if attributes.has_key?(:'clickthroughUrl')
        self.clickthrough_url = attributes[:'clickthroughUrl']
      end

      if attributes.has_key?(:'labels')
        if (value = attributes[:'labels']).is_a?(Array)
          self.labels = value
        end
      end

      if attributes.has_key?(:'photoUrl')
        self.photo_url = attributes[:'photoUrl']
      end

      if attributes.has_key?(:'details')
        self.details = attributes[:'details']
      end

      if attributes.has_key?(:'alternateText')
        self.alternate_text = attributes[:'alternateText']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'contents')
        if (value = attributes[:'contents']).is_a?(Array)
          self.contents = value
        end
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@video_url.nil? && @video_url.to_s.length > 255
        invalid_properties.push("invalid value for 'video_url', the character length must be smaller than or equal to 255.")
      end

      if !@description.nil? && @description.to_s.length > 255
        invalid_properties.push("invalid value for 'description', the character length must be smaller than or equal to 255.")
      end

      if @for_locations.nil?
        invalid_properties.push("invalid value for 'for_locations', for_locations cannot be nil.")
      end

      if !@clickthrough_url.nil? && @clickthrough_url.to_s.length > 2048
        invalid_properties.push("invalid value for 'clickthrough_url', the character length must be smaller than or equal to 2048.")
      end

      if !@details.nil? && @details.to_s.length > 4000
        invalid_properties.push("invalid value for 'details', the character length must be smaller than or equal to 4000.")
      end

      if !@alternate_text.nil? && @alternate_text.to_s.length > 255
        invalid_properties.push("invalid value for 'alternate_text', the character length must be smaller than or equal to 255.")
      end

      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if !@id.nil? && @id.to_s.length > 16
        invalid_properties.push("invalid value for 'id', the character length must be smaller than or equal to 16.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @name.to_s.length > 100
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 100.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@video_url.nil? && @video_url.to_s.length > 255
      return false if !@description.nil? && @description.to_s.length > 255
      return false if @for_locations.nil?
      return false if !@clickthrough_url.nil? && @clickthrough_url.to_s.length > 2048
      return false if !@details.nil? && @details.to_s.length > 4000
      return false if !@alternate_text.nil? && @alternate_text.to_s.length > 255
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["TEXT", "PHOTO", "VIDEO"])
      return false unless type_validator.valid?(@type)
      return false if !@id.nil? && @id.to_s.length > 16
      return false if @name.nil?
      return false if @name.to_s.length > 100
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] video_url Value to be assigned
    def video_url=(video_url)

      if !video_url.nil? && video_url.to_s.length > 255
        fail ArgumentError, "invalid value for 'video_url', the character length must be smaller than or equal to 255."
      end

      @video_url = video_url
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)

      if !description.nil? && description.to_s.length > 255
        fail ArgumentError, "invalid value for 'description', the character length must be smaller than or equal to 255."
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] clickthrough_url Value to be assigned
    def clickthrough_url=(clickthrough_url)

      if !clickthrough_url.nil? && clickthrough_url.to_s.length > 2048
        fail ArgumentError, "invalid value for 'clickthrough_url', the character length must be smaller than or equal to 2048."
      end

      @clickthrough_url = clickthrough_url
    end

    # Custom attribute writer method with validation
    # @param [Object] details Value to be assigned
    def details=(details)

      if !details.nil? && details.to_s.length > 4000
        fail ArgumentError, "invalid value for 'details', the character length must be smaller than or equal to 4000."
      end

      @details = details
    end

    # Custom attribute writer method with validation
    # @param [Object] alternate_text Value to be assigned
    def alternate_text=(alternate_text)

      if !alternate_text.nil? && alternate_text.to_s.length > 255
        fail ArgumentError, "invalid value for 'alternate_text', the character length must be smaller than or equal to 255."
      end

      @alternate_text = alternate_text
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["TEXT", "PHOTO", "VIDEO"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)

      if !id.nil? && id.to_s.length > 16
        fail ArgumentError, "invalid value for 'id', the character length must be smaller than or equal to 16."
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, "name cannot be nil"
      end

      if name.to_s.length > 100
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 100."
      end

      @name = name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          video_url == o.video_url &&
          description == o.description &&
          for_locations == o.for_locations &&
          clickthrough_url == o.clickthrough_url &&
          labels == o.labels &&
          photo_url == o.photo_url &&
          details == o.details &&
          alternate_text == o.alternate_text &&
          type == o.type &&
          id == o.id &&
          contents == o.contents &&
          name == o.name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [video_url, description, for_locations, clickthrough_url, labels, photo_url, details, alternate_text, type, id, contents, name].hash
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
