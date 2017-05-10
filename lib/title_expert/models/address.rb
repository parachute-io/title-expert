=begin
#ACS Title Expert

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module TitleExpert
  # Represents an address extracted from the RES data
  class Address
    # Individual lines of the address excluding the postcode and with blank/empty lines removed. If there are no lines then this is an empty array rather than null.
    attr_accessor :lines

    attr_accessor :postcode

    # A single-line version of the address obtained by concatenating all the lines and the postcode using space (not comma) as a separator.
    attr_accessor :single_line

    # A normalised version of the address (without the postcode) useful for comparing addresses while ignoring insignificant differences, such as using \"Rd\"/\"Road\".
    attr_accessor :normalised

    # A normalised version of the address but with the county (if any) and postcode removed (useful for comparing addresses where counties are sometimes omitted).
    attr_accessor :normalised_no_county

    # A normalised version of the \"first line\" of the address, where the \"first line\" is basically the property name and/or number and the street, which is NOT necessarily the same as Lines[0]. Useful for comparing addresses based on \"first line and postcode\". The algorithm used to extract the \"first line\" uses various heuristics and is not guaranteed to always give a correct result, but it errs in including too much of the address rather than too little.
    attr_accessor :logical_first_line


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'lines' => :'Lines',
        :'postcode' => :'Postcode',
        :'single_line' => :'SingleLine',
        :'normalised' => :'Normalised',
        :'normalised_no_county' => :'NormalisedNoCounty',
        :'logical_first_line' => :'LogicalFirstLine'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'lines' => :'Array<String>',
        :'postcode' => :'String',
        :'single_line' => :'String',
        :'normalised' => :'String',
        :'normalised_no_county' => :'String',
        :'logical_first_line' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Lines')
        if (value = attributes[:'Lines']).is_a?(Array)
          self.lines = value
        end
      end

      if attributes.has_key?(:'Postcode')
        self.postcode = attributes[:'Postcode']
      end

      if attributes.has_key?(:'SingleLine')
        self.single_line = attributes[:'SingleLine']
      end

      if attributes.has_key?(:'Normalised')
        self.normalised = attributes[:'Normalised']
      end

      if attributes.has_key?(:'NormalisedNoCounty')
        self.normalised_no_county = attributes[:'NormalisedNoCounty']
      end

      if attributes.has_key?(:'LogicalFirstLine')
        self.logical_first_line = attributes[:'LogicalFirstLine']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @lines.nil?
        invalid_properties.push("invalid value for 'lines', lines cannot be nil.")
      end

      if @single_line.nil?
        invalid_properties.push("invalid value for 'single_line', single_line cannot be nil.")
      end

      if @normalised.nil?
        invalid_properties.push("invalid value for 'normalised', normalised cannot be nil.")
      end

      if @normalised_no_county.nil?
        invalid_properties.push("invalid value for 'normalised_no_county', normalised_no_county cannot be nil.")
      end

      if @logical_first_line.nil?
        invalid_properties.push("invalid value for 'logical_first_line', logical_first_line cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @lines.nil?
      return false if @single_line.nil?
      return false if @normalised.nil?
      return false if @normalised_no_county.nil?
      return false if @logical_first_line.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          lines == o.lines &&
          postcode == o.postcode &&
          single_line == o.single_line &&
          normalised == o.normalised &&
          normalised_no_county == o.normalised_no_county &&
          logical_first_line == o.logical_first_line
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [lines, postcode, single_line, normalised, normalised_no_county, logical_first_line].hash
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