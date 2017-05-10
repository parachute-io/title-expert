=begin
#ACS Title Expert

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module TitleExpert
  # Represents the specification of a document to be retrieved as part of an OC2 request
  class OC2DocumentSpec
    # The type of document. Must be specified.
    attr_accessor :document_type

    # The date of the document (in the format yyyy-mm-dd), or null for the most recent version.
    attr_accessor :date

    # Null unless the document is filed under a different (from the title number of the request) title number.
    attr_accessor :file_under

    # Null unless DocumentType is Other, when it must be a non-empty string describing the document.
    attr_accessor :additional_information

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
        :'document_type' => :'DocumentType',
        :'date' => :'Date',
        :'file_under' => :'FileUnder',
        :'additional_information' => :'AdditionalInformation'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'document_type' => :'String',
        :'date' => :'DateTime',
        :'file_under' => :'String',
        :'additional_information' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'DocumentType')
        self.document_type = attributes[:'DocumentType']
      end

      if attributes.has_key?(:'Date')
        self.date = attributes[:'Date']
      end

      if attributes.has_key?(:'FileUnder')
        self.file_under = attributes[:'FileUnder']
      end

      if attributes.has_key?(:'AdditionalInformation')
        self.additional_information = attributes[:'AdditionalInformation']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @document_type.nil?
        invalid_properties.push("invalid value for 'document_type', document_type cannot be nil.")
      end

      if !@file_under.nil? && @file_under !~ Regexp.new(/^[A-Z]{0,3}[0-9]{1,6}[TZ]?$/)
        invalid_properties.push("invalid value for 'file_under', must conform to the pattern /^[A-Z]{0,3}[0-9]{1,6}[TZ]?$/.")
      end

      if !@additional_information.nil? && @additional_information !~ Regexp.new(/.*\\S.*/)
        invalid_properties.push("invalid value for 'additional_information', must conform to the pattern /.*\\S.*/.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @document_type.nil?
      document_type_validator = EnumAttributeValidator.new('String', ["Abstract", "Agreement", "Assent", "Assignment", "Charge", "Conveyance", "Deed", "Indenture", "Lease", "Licence", "Plan", "SubCharge", "Transfer", "Other", "CommonholdCommunityStatement", "MemorandumAndArticlesOfAssociation", "SurrenderOfDevelopmentRights", "TerminationDocument"])
      return false unless document_type_validator.valid?(@document_type)
      return false if !@file_under.nil? && @file_under !~ Regexp.new(/^[A-Z]{0,3}[0-9]{1,6}[TZ]?$/)
      return false if !@additional_information.nil? && @additional_information !~ Regexp.new(/.*\\S.*/)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] document_type Object to be assigned
    def document_type=(document_type)
      validator = EnumAttributeValidator.new('String', ["Abstract", "Agreement", "Assent", "Assignment", "Charge", "Conveyance", "Deed", "Indenture", "Lease", "Licence", "Plan", "SubCharge", "Transfer", "Other", "CommonholdCommunityStatement", "MemorandumAndArticlesOfAssociation", "SurrenderOfDevelopmentRights", "TerminationDocument"])
      unless validator.valid?(document_type)
        fail ArgumentError, "invalid value for 'document_type', must be one of #{validator.allowable_values}."
      end
      @document_type = document_type
    end

    # Custom attribute writer method with validation
    # @param [Object] file_under Value to be assigned
    def file_under=(file_under)

      if !file_under.nil? && file_under !~ Regexp.new(/^[A-Z]{0,3}[0-9]{1,6}[TZ]?$/)
        fail ArgumentError, "invalid value for 'file_under', must conform to the pattern /^[A-Z]{0,3}[0-9]{1,6}[TZ]?$/."
      end

      @file_under = file_under
    end

    # Custom attribute writer method with validation
    # @param [Object] additional_information Value to be assigned
    def additional_information=(additional_information)

      if !additional_information.nil? && additional_information !~ Regexp.new(/.*\\S.*/)
        fail ArgumentError, "invalid value for 'additional_information', must conform to the pattern /.*\\S.*/."
      end

      @additional_information = additional_information
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          document_type == o.document_type &&
          date == o.date &&
          file_under == o.file_under &&
          additional_information == o.additional_information
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [document_type, date, file_under, additional_information].hash
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
