=begin
#ACS Title Expert

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for TitleExpert::CharityCodeType
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CharityCodeType' do
  before do
    # run before each test
    @instance = TitleExpert::CharityCodeType.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CharityCodeType' do
    it 'should create an instact of CharityCodeType' do
      expect(@instance).to be_instance_of(TitleExpert::CharityCodeType)
    end
  end
  describe 'test attribute "value"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["C", "R", "S"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.value = value }.not_to raise_error
       #end
    end
  end

end

