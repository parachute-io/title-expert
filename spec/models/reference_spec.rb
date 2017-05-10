=begin
#ACS Title Expert

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for TitleExpert::Reference
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Reference' do
  before do
    # run before each test
    @instance = TitleExpert::Reference.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Reference' do
    it 'should create an instact of Reference' do
      expect(@instance).to be_instance_of(TitleExpert::Reference)
    end
  end
  describe 'test attribute "target"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["None", "PropertyAddress", "Lease", "Proprietor", "RegisteredCharge", "ExtraTitleNumber"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.target = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "item_index"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "description"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

