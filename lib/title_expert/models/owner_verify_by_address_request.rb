=begin
#ACS Title Expert

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module TitleExpert
  # Specification of the Online Ownership Verification to be performed.
  class OwnerVerifyByAddressRequest
    # Address search criteria of the property whose ownership is to be verified.
    attr_accessor :search_address

    # Optional string (maximum of 128 characters) for use by the client to identify this request. This will be truncated to 25 characters when sent to the LRBG.
    attr_accessor :reference

    # If provided (ISO8601/like format yyyy-MM-dd HH:mm:ss), specifies that if the final response has not been received from the LRBG before the Deadline is met, the Request will be marked as Expired and made available for immediate return (LRBG costs may still be incurred).
    attr_accessor :deadline

    # Specify the name of the entity whose ownership is to be verified.
    attr_accessor :name


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'search_address' => :'SearchAddress',
        :'reference' => :'Reference',
        :'deadline' => :'Deadline',
        :'name' => :'Name'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'search_address' => :'PropertyAddressSearch',
        :'reference' => :'String',
        :'deadline' => :'DateTime',
        :'name' => :'OwnerVerifyName'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'SearchAddress')
        self.search_address = attributes[:'SearchAddress']
      end

      if attributes.has_key?(:'Reference')
        self.reference = attributes[:'Reference']
      end

      if attributes.has_key?(:'Deadline')
        self.deadline = attributes[:'Deadline']
      end

      if attributes.has_key?(:'Name')
        self.name = attributes[:'Name']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @search_address.nil?
        invalid_properties.push("invalid value for 'search_address', search_address cannot be nil.")
      end

      if !@reference.nil? && @reference.to_s.length > 128
        invalid_properties.push("invalid value for 'reference', the character length must be smaller than or equal to 128.")
      end

      if !@reference.nil? && @reference.to_s.length < 0
        invalid_properties.push("invalid value for 'reference', the character length must be great than or equal to 0.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @search_address.nil?
      return false if !@reference.nil? && @reference.to_s.length > 128
      return false if !@reference.nil? && @reference.to_s.length < 0
      return false if @name.nil?
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] reference Value to be assigned
    def reference=(reference)

      if !reference.nil? && reference.to_s.length > 128
        fail ArgumentError, "invalid value for 'reference', the character length must be smaller than or equal to 128."
      end

      if !reference.nil? && reference.to_s.length < 0
        fail ArgumentError, "invalid value for 'reference', the character length must be great than or equal to 0."
      end

      @reference = reference
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          search_address == o.search_address &&
          reference == o.reference &&
          deadline == o.deadline &&
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
      [search_address, reference, deadline, name].hash
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
        temp_model = TitleExpert.const_get(type).new
        temp_model.build_from_hash(value)
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