=begin
#ACS Title Expert

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for TitleExpert::OC2DocumentSpec
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OC2DocumentSpec' do
  before do
    # run before each test
    @instance = TitleExpert::OC2DocumentSpec.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OC2DocumentSpec' do
    it 'should create an instact of OC2DocumentSpec' do
      expect(@instance).to be_instance_of(TitleExpert::OC2DocumentSpec)
    end
  end
  describe 'test attribute "document_type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Abstract", "Agreement", "Assent", "Assignment", "Charge", "Conveyance", "Deed", "Indenture", "Lease", "Licence", "Plan", "SubCharge", "Transfer", "Other", "CommonholdCommunityStatement", "MemorandumAndArticlesOfAssociation", "SurrenderOfDevelopmentRights", "TerminationDocument"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.document_type = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "date"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "file_under"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "additional_information"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

