=begin
#ACS Title Expert

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module TitleExpert

  class Q1RegisterEntryIndicatorsType
    attr_accessor :agreed_notice_indicator

    attr_accessor :bankruptcy_indicator

    attr_accessor :caution_indicator

    attr_accessor :ccbi_indicator

    attr_accessor :chargee_indicator

    attr_accessor :charge_indicator

    attr_accessor :charge_related_restriction_indicator

    attr_accessor :charge_restriction_indicator

    attr_accessor :creditors_notice_indicator

    attr_accessor :death_of_proprietor_indicator

    attr_accessor :deed_of_postponement_indicator

    attr_accessor :discount_charge_indicator

    attr_accessor :equitable_charge_indicator

    attr_accessor :green_out_entry_indicator

    attr_accessor :home_rights_change_of_address_indicator

    attr_accessor :home_rights_indicator

    attr_accessor :lease_hold_title_indicator

    attr_accessor :multiple_charge_indicator

    attr_accessor :non_charge_restriction_indicator

    attr_accessor :noted_charge_indicator

    attr_accessor :price_paid_indicator

    attr_accessor :property_description_notes_indicator

    attr_accessor :rent_charge_indicator

    attr_accessor :right_of_pre_emption_indicator

    attr_accessor :schedule_of_leases_indicator

    attr_accessor :sub_charge_indicator

    attr_accessor :unidentified_entry_indicator

    attr_accessor :unilateral_notice_beneficiary_indicator

    attr_accessor :unilateral_notice_indicator

    attr_accessor :vendors_lien_indicator


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'agreed_notice_indicator' => :'AgreedNoticeIndicator',
        :'bankruptcy_indicator' => :'BankruptcyIndicator',
        :'caution_indicator' => :'CautionIndicator',
        :'ccbi_indicator' => :'CCBIIndicator',
        :'chargee_indicator' => :'ChargeeIndicator',
        :'charge_indicator' => :'ChargeIndicator',
        :'charge_related_restriction_indicator' => :'ChargeRelatedRestrictionIndicator',
        :'charge_restriction_indicator' => :'ChargeRestrictionIndicator',
        :'creditors_notice_indicator' => :'CreditorsNoticeIndicator',
        :'death_of_proprietor_indicator' => :'DeathOfProprietorIndicator',
        :'deed_of_postponement_indicator' => :'DeedOfPostponementIndicator',
        :'discount_charge_indicator' => :'DiscountChargeIndicator',
        :'equitable_charge_indicator' => :'EquitableChargeIndicator',
        :'green_out_entry_indicator' => :'GreenOutEntryIndicator',
        :'home_rights_change_of_address_indicator' => :'HomeRightsChangeOfAddressIndicator',
        :'home_rights_indicator' => :'HomeRightsIndicator',
        :'lease_hold_title_indicator' => :'LeaseHoldTitleIndicator',
        :'multiple_charge_indicator' => :'MultipleChargeIndicator',
        :'non_charge_restriction_indicator' => :'NonChargeRestrictionIndicator',
        :'noted_charge_indicator' => :'NotedChargeIndicator',
        :'price_paid_indicator' => :'PricePaidIndicator',
        :'property_description_notes_indicator' => :'PropertyDescriptionNotesIndicator',
        :'rent_charge_indicator' => :'RentChargeIndicator',
        :'right_of_pre_emption_indicator' => :'RightOfPreEmptionIndicator',
        :'schedule_of_leases_indicator' => :'ScheduleOfLeasesIndicator',
        :'sub_charge_indicator' => :'SubChargeIndicator',
        :'unidentified_entry_indicator' => :'UnidentifiedEntryIndicator',
        :'unilateral_notice_beneficiary_indicator' => :'UnilateralNoticeBeneficiaryIndicator',
        :'unilateral_notice_indicator' => :'UnilateralNoticeIndicator',
        :'vendors_lien_indicator' => :'VendorsLienIndicator'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'agreed_notice_indicator' => :'IndicatorType1',
        :'bankruptcy_indicator' => :'IndicatorType1',
        :'caution_indicator' => :'IndicatorType1',
        :'ccbi_indicator' => :'IndicatorType1',
        :'chargee_indicator' => :'IndicatorType1',
        :'charge_indicator' => :'IndicatorType1',
        :'charge_related_restriction_indicator' => :'IndicatorType1',
        :'charge_restriction_indicator' => :'IndicatorType1',
        :'creditors_notice_indicator' => :'IndicatorType1',
        :'death_of_proprietor_indicator' => :'IndicatorType1',
        :'deed_of_postponement_indicator' => :'IndicatorType1',
        :'discount_charge_indicator' => :'IndicatorType1',
        :'equitable_charge_indicator' => :'IndicatorType1',
        :'green_out_entry_indicator' => :'IndicatorType1',
        :'home_rights_change_of_address_indicator' => :'IndicatorType1',
        :'home_rights_indicator' => :'IndicatorType1',
        :'lease_hold_title_indicator' => :'IndicatorType1',
        :'multiple_charge_indicator' => :'IndicatorType1',
        :'non_charge_restriction_indicator' => :'IndicatorType1',
        :'noted_charge_indicator' => :'IndicatorType1',
        :'price_paid_indicator' => :'IndicatorType1',
        :'property_description_notes_indicator' => :'IndicatorType1',
        :'rent_charge_indicator' => :'IndicatorType1',
        :'right_of_pre_emption_indicator' => :'IndicatorType1',
        :'schedule_of_leases_indicator' => :'IndicatorType1',
        :'sub_charge_indicator' => :'IndicatorType1',
        :'unidentified_entry_indicator' => :'IndicatorType1',
        :'unilateral_notice_beneficiary_indicator' => :'IndicatorType1',
        :'unilateral_notice_indicator' => :'IndicatorType1',
        :'vendors_lien_indicator' => :'IndicatorType1'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'AgreedNoticeIndicator')
        self.agreed_notice_indicator = attributes[:'AgreedNoticeIndicator']
      end

      if attributes.has_key?(:'BankruptcyIndicator')
        self.bankruptcy_indicator = attributes[:'BankruptcyIndicator']
      end

      if attributes.has_key?(:'CautionIndicator')
        self.caution_indicator = attributes[:'CautionIndicator']
      end

      if attributes.has_key?(:'CCBIIndicator')
        self.ccbi_indicator = attributes[:'CCBIIndicator']
      end

      if attributes.has_key?(:'ChargeeIndicator')
        self.chargee_indicator = attributes[:'ChargeeIndicator']
      end

      if attributes.has_key?(:'ChargeIndicator')
        self.charge_indicator = attributes[:'ChargeIndicator']
      end

      if attributes.has_key?(:'ChargeRelatedRestrictionIndicator')
        self.charge_related_restriction_indicator = attributes[:'ChargeRelatedRestrictionIndicator']
      end

      if attributes.has_key?(:'ChargeRestrictionIndicator')
        self.charge_restriction_indicator = attributes[:'ChargeRestrictionIndicator']
      end

      if attributes.has_key?(:'CreditorsNoticeIndicator')
        self.creditors_notice_indicator = attributes[:'CreditorsNoticeIndicator']
      end

      if attributes.has_key?(:'DeathOfProprietorIndicator')
        self.death_of_proprietor_indicator = attributes[:'DeathOfProprietorIndicator']
      end

      if attributes.has_key?(:'DeedOfPostponementIndicator')
        self.deed_of_postponement_indicator = attributes[:'DeedOfPostponementIndicator']
      end

      if attributes.has_key?(:'DiscountChargeIndicator')
        self.discount_charge_indicator = attributes[:'DiscountChargeIndicator']
      end

      if attributes.has_key?(:'EquitableChargeIndicator')
        self.equitable_charge_indicator = attributes[:'EquitableChargeIndicator']
      end

      if attributes.has_key?(:'GreenOutEntryIndicator')
        self.green_out_entry_indicator = attributes[:'GreenOutEntryIndicator']
      end

      if attributes.has_key?(:'HomeRightsChangeOfAddressIndicator')
        self.home_rights_change_of_address_indicator = attributes[:'HomeRightsChangeOfAddressIndicator']
      end

      if attributes.has_key?(:'HomeRightsIndicator')
        self.home_rights_indicator = attributes[:'HomeRightsIndicator']
      end

      if attributes.has_key?(:'LeaseHoldTitleIndicator')
        self.lease_hold_title_indicator = attributes[:'LeaseHoldTitleIndicator']
      end

      if attributes.has_key?(:'MultipleChargeIndicator')
        self.multiple_charge_indicator = attributes[:'MultipleChargeIndicator']
      end

      if attributes.has_key?(:'NonChargeRestrictionIndicator')
        self.non_charge_restriction_indicator = attributes[:'NonChargeRestrictionIndicator']
      end

      if attributes.has_key?(:'NotedChargeIndicator')
        self.noted_charge_indicator = attributes[:'NotedChargeIndicator']
      end

      if attributes.has_key?(:'PricePaidIndicator')
        self.price_paid_indicator = attributes[:'PricePaidIndicator']
      end

      if attributes.has_key?(:'PropertyDescriptionNotesIndicator')
        self.property_description_notes_indicator = attributes[:'PropertyDescriptionNotesIndicator']
      end

      if attributes.has_key?(:'RentChargeIndicator')
        self.rent_charge_indicator = attributes[:'RentChargeIndicator']
      end

      if attributes.has_key?(:'RightOfPreEmptionIndicator')
        self.right_of_pre_emption_indicator = attributes[:'RightOfPreEmptionIndicator']
      end

      if attributes.has_key?(:'ScheduleOfLeasesIndicator')
        self.schedule_of_leases_indicator = attributes[:'ScheduleOfLeasesIndicator']
      end

      if attributes.has_key?(:'SubChargeIndicator')
        self.sub_charge_indicator = attributes[:'SubChargeIndicator']
      end

      if attributes.has_key?(:'UnidentifiedEntryIndicator')
        self.unidentified_entry_indicator = attributes[:'UnidentifiedEntryIndicator']
      end

      if attributes.has_key?(:'UnilateralNoticeBeneficiaryIndicator')
        self.unilateral_notice_beneficiary_indicator = attributes[:'UnilateralNoticeBeneficiaryIndicator']
      end

      if attributes.has_key?(:'UnilateralNoticeIndicator')
        self.unilateral_notice_indicator = attributes[:'UnilateralNoticeIndicator']
      end

      if attributes.has_key?(:'VendorsLienIndicator')
        self.vendors_lien_indicator = attributes[:'VendorsLienIndicator']
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
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          agreed_notice_indicator == o.agreed_notice_indicator &&
          bankruptcy_indicator == o.bankruptcy_indicator &&
          caution_indicator == o.caution_indicator &&
          ccbi_indicator == o.ccbi_indicator &&
          chargee_indicator == o.chargee_indicator &&
          charge_indicator == o.charge_indicator &&
          charge_related_restriction_indicator == o.charge_related_restriction_indicator &&
          charge_restriction_indicator == o.charge_restriction_indicator &&
          creditors_notice_indicator == o.creditors_notice_indicator &&
          death_of_proprietor_indicator == o.death_of_proprietor_indicator &&
          deed_of_postponement_indicator == o.deed_of_postponement_indicator &&
          discount_charge_indicator == o.discount_charge_indicator &&
          equitable_charge_indicator == o.equitable_charge_indicator &&
          green_out_entry_indicator == o.green_out_entry_indicator &&
          home_rights_change_of_address_indicator == o.home_rights_change_of_address_indicator &&
          home_rights_indicator == o.home_rights_indicator &&
          lease_hold_title_indicator == o.lease_hold_title_indicator &&
          multiple_charge_indicator == o.multiple_charge_indicator &&
          non_charge_restriction_indicator == o.non_charge_restriction_indicator &&
          noted_charge_indicator == o.noted_charge_indicator &&
          price_paid_indicator == o.price_paid_indicator &&
          property_description_notes_indicator == o.property_description_notes_indicator &&
          rent_charge_indicator == o.rent_charge_indicator &&
          right_of_pre_emption_indicator == o.right_of_pre_emption_indicator &&
          schedule_of_leases_indicator == o.schedule_of_leases_indicator &&
          sub_charge_indicator == o.sub_charge_indicator &&
          unidentified_entry_indicator == o.unidentified_entry_indicator &&
          unilateral_notice_beneficiary_indicator == o.unilateral_notice_beneficiary_indicator &&
          unilateral_notice_indicator == o.unilateral_notice_indicator &&
          vendors_lien_indicator == o.vendors_lien_indicator
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [agreed_notice_indicator, bankruptcy_indicator, caution_indicator, ccbi_indicator, chargee_indicator, charge_indicator, charge_related_restriction_indicator, charge_restriction_indicator, creditors_notice_indicator, death_of_proprietor_indicator, deed_of_postponement_indicator, discount_charge_indicator, equitable_charge_indicator, green_out_entry_indicator, home_rights_change_of_address_indicator, home_rights_indicator, lease_hold_title_indicator, multiple_charge_indicator, non_charge_restriction_indicator, noted_charge_indicator, price_paid_indicator, property_description_notes_indicator, rent_charge_indicator, right_of_pre_emption_indicator, schedule_of_leases_indicator, sub_charge_indicator, unidentified_entry_indicator, unilateral_notice_beneficiary_indicator, unilateral_notice_indicator, vendors_lien_indicator].hash
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
