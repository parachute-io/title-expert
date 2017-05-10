=begin
#ACS Title Expert

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for TitleExpert::BorrowerNameMatchIssue
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BorrowerNameMatchIssue' do
  before do
    # run before each test
    @instance = TitleExpert::BorrowerNameMatchIssue.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BorrowerNameMatchIssue' do
    it 'should create an instact of BorrowerNameMatchIssue' do
      expect(@instance).to be_instance_of(TitleExpert::BorrowerNameMatchIssue)
    end
  end
  describe 'test attribute "type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Undefined", "BorrowerProprietorCountsDiffer", "DuplicateBorrowerNames", "DuplicateProprietorNames", "InexactMatch", "UnmatchedBorrower", "UnmatchedProprietor"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.type = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "message"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "details_index"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "issue_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
