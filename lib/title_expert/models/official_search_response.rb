=begin
#ACS Title Expert

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module TitleExpert
  # Details of an Official Search of Whole Request that has been isuued.
  class OfficialSearchResponse
    # Information about the client issuing the request
    attr_accessor :client_parameters

    # Information about the status of the rqeuest.
    attr_accessor :response_common

    # The title number of the property.
    attr_accessor :title_number

    # A description of the property (typically the address) for use by the LR if there is a problem identifying the property from the title number.
    attr_accessor :property_description

    # If \"Is First Registration\" is false, the date (format yyyy-mm-dd) falling within the defintition of search from date in rule 131 of the Land Registration rules 2003.
    attr_accessor :search_from

    attr_accessor :priority_code

    # Name(s) of the registered proprietor(s) as on the register required for OS1 OR the person who is applying for first registration, e.g. the owner (NOT the conveyancer sending the application). Maximum of 100 characters.
    attr_accessor :proprietor

    # The full name(s) of the registered proprietor(s) of the registered estate in the title, or the person(s) applying for first registration of the property. If there are more than two, enter the first two only. Maximum of 100 characters.
    attr_accessor :applicant_party

    # Whether to continue if the proprietor names do not match.
    attr_accessor :continue_if_name_mismatch

    # Whether to continue if there is \"developer title\".
    attr_accessor :continue_if_developer_title

    # Whether to continue if there are any pending searches of part.
    attr_accessor :continue_if_pending_searches_of_part

    # Optional details of where to send any non-electronic results (if they are not to be sent to the default address)
    attr_accessor :alternative_despatch_details

    # Details of the documents (if any) returned by the LRBG if the request succeeded.
    attr_accessor :returned_documents

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
        :'client_parameters' => :'ClientParameters',
        :'response_common' => :'ResponseCommon',
        :'title_number' => :'TitleNumber',
        :'property_description' => :'PropertyDescription',
        :'search_from' => :'SearchFrom',
        :'priority_code' => :'PriorityCode',
        :'proprietor' => :'Proprietor',
        :'applicant_party' => :'ApplicantParty',
        :'continue_if_name_mismatch' => :'ContinueIfNameMismatch',
        :'continue_if_developer_title' => :'ContinueIfDeveloperTitle',
        :'continue_if_pending_searches_of_part' => :'ContinueIfPendingSearchesOfPart',
        :'alternative_despatch_details' => :'AlternativeDespatchDetails',
        :'returned_documents' => :'ReturnedDocuments'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'client_parameters' => :'ClientParameters',
        :'response_common' => :'LrbgResponseCommon',
        :'title_number' => :'String',
        :'property_description' => :'String',
        :'search_from' => :'DateTime',
        :'priority_code' => :'String',
        :'proprietor' => :'String',
        :'applicant_party' => :'String',
        :'continue_if_name_mismatch' => :'BOOLEAN',
        :'continue_if_developer_title' => :'BOOLEAN',
        :'continue_if_pending_searches_of_part' => :'BOOLEAN',
        :'alternative_despatch_details' => :'AlternativeDespatchDetails',
        :'returned_documents' => :'ReturnedDocuments'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'ClientParameters')
        self.client_parameters = attributes[:'ClientParameters']
      end

      if attributes.has_key?(:'ResponseCommon')
        self.response_common = attributes[:'ResponseCommon']
      end

      if attributes.has_key?(:'TitleNumber')
        self.title_number = attributes[:'TitleNumber']
      end

      if attributes.has_key?(:'PropertyDescription')
        self.property_description = attributes[:'PropertyDescription']
      end

      if attributes.has_key?(:'SearchFrom')
        self.search_from = attributes[:'SearchFrom']
      end

      if attributes.has_key?(:'PriorityCode')
        self.priority_code = attributes[:'PriorityCode']
      end

      if attributes.has_key?(:'Proprietor')
        self.proprietor = attributes[:'Proprietor']
      end

      if attributes.has_key?(:'ApplicantParty')
        self.applicant_party = attributes[:'ApplicantParty']
      end

      if attributes.has_key?(:'ContinueIfNameMismatch')
        self.continue_if_name_mismatch = attributes[:'ContinueIfNameMismatch']
      end

      if attributes.has_key?(:'ContinueIfDeveloperTitle')
        self.continue_if_developer_title = attributes[:'ContinueIfDeveloperTitle']
      end

      if attributes.has_key?(:'ContinueIfPendingSearchesOfPart')
        self.continue_if_pending_searches_of_part = attributes[:'ContinueIfPendingSearchesOfPart']
      end

      if attributes.has_key?(:'AlternativeDespatchDetails')
        self.alternative_despatch_details = attributes[:'AlternativeDespatchDetails']
      end

      if attributes.has_key?(:'ReturnedDocuments')
        self.returned_documents = attributes[:'ReturnedDocuments']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @client_parameters.nil?
        invalid_properties.push("invalid value for 'client_parameters', client_parameters cannot be nil.")
      end

      if @response_common.nil?
        invalid_properties.push("invalid value for 'response_common', response_common cannot be nil.")
      end

      if @title_number.nil?
        invalid_properties.push("invalid value for 'title_number', title_number cannot be nil.")
      end

      if @property_description.nil?
        invalid_properties.push("invalid value for 'property_description', property_description cannot be nil.")
      end

      if @priority_code.nil?
        invalid_properties.push("invalid value for 'priority_code', priority_code cannot be nil.")
      end

      if @proprietor.nil?
        invalid_properties.push("invalid value for 'proprietor', proprietor cannot be nil.")
      end

      if @applicant_party.nil?
        invalid_properties.push("invalid value for 'applicant_party', applicant_party cannot be nil.")
      end

      if @continue_if_name_mismatch.nil?
        invalid_properties.push("invalid value for 'continue_if_name_mismatch', continue_if_name_mismatch cannot be nil.")
      end

      if @continue_if_developer_title.nil?
        invalid_properties.push("invalid value for 'continue_if_developer_title', continue_if_developer_title cannot be nil.")
      end

      if @continue_if_pending_searches_of_part.nil?
        invalid_properties.push("invalid value for 'continue_if_pending_searches_of_part', continue_if_pending_searches_of_part cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @client_parameters.nil?
      return false if @response_common.nil?
      return false if @title_number.nil?
      return false if @property_description.nil?
      return false if @priority_code.nil?
      priority_code_validator = EnumAttributeValidator.new('String', ["Purchase", "Lease", "Charge"])
      return false unless priority_code_validator.valid?(@priority_code)
      return false if @proprietor.nil?
      return false if @applicant_party.nil?
      return false if @continue_if_name_mismatch.nil?
      return false if @continue_if_developer_title.nil?
      return false if @continue_if_pending_searches_of_part.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] priority_code Object to be assigned
    def priority_code=(priority_code)
      validator = EnumAttributeValidator.new('String', ["Purchase", "Lease", "Charge"])
      unless validator.valid?(priority_code)
        fail ArgumentError, "invalid value for 'priority_code', must be one of #{validator.allowable_values}."
      end
      @priority_code = priority_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          client_parameters == o.client_parameters &&
          response_common == o.response_common &&
          title_number == o.title_number &&
          property_description == o.property_description &&
          search_from == o.search_from &&
          priority_code == o.priority_code &&
          proprietor == o.proprietor &&
          applicant_party == o.applicant_party &&
          continue_if_name_mismatch == o.continue_if_name_mismatch &&
          continue_if_developer_title == o.continue_if_developer_title &&
          continue_if_pending_searches_of_part == o.continue_if_pending_searches_of_part &&
          alternative_despatch_details == o.alternative_despatch_details &&
          returned_documents == o.returned_documents
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [client_parameters, response_common, title_number, property_description, search_from, priority_code, proprietor, applicant_party, continue_if_name_mismatch, continue_if_developer_title, continue_if_pending_searches_of_part, alternative_despatch_details, returned_documents].hash
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
