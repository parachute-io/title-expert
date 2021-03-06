=begin
#ACS Title Expert

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for TitleExpert::Document
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Document' do
  before do
    # run before each test
    @instance = TitleExpert::Document.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Document' do
    it 'should create an instact of Document' do
      expect(@instance).to be_instance_of(TitleExpert::Document)
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

  describe 'test attribute "document_date"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "entry_numbers"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "plan_only"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "filed_under"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "register_description"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

