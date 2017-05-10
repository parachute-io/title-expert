=begin
#ACS Title Expert

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for TitleExpert::Q1ProprietorshipType
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Q1ProprietorshipType' do
  before do
    # run before each test
    @instance = TitleExpert::Q1ProprietorshipType.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Q1ProprietorshipType' do
    it 'should create an instact of Q1ProprietorshipType' do
      expect(@instance).to be_instance_of(TitleExpert::Q1ProprietorshipType)
    end
  end
  describe 'test attribute "current_proprietorship_date"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "items"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "items_element_name"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["CautionerParty", "RegisteredProprietorParty"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.items_element_name = value }.not_to raise_error
       #end
    end
  end

end
