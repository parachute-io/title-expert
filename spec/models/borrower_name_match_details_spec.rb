=begin
#ACS Title Expert

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for TitleExpert::BorrowerNameMatchDetails
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BorrowerNameMatchDetails' do
  before do
    # run before each test
    @instance = TitleExpert::BorrowerNameMatchDetails.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BorrowerNameMatchDetails' do
    it 'should create an instact of BorrowerNameMatchDetails' do
      expect(@instance).to be_instance_of(TitleExpert::BorrowerNameMatchDetails)
    end
  end
  describe 'test attribute "match_type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Undefined", "Exact", "Alias", "MissingMiddleNames", "MissingProprietorMiddleNames", "Initials", "PossibleMarriage", "PossibleDivorce", "FuzzyMatch", "UnmatchedBorrower", "UnmatchedProprietor"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.match_type = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "borrower_index"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "borrower_name"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "proprietor_index"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "proprietor"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "fuzzy_match_score_percent"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

