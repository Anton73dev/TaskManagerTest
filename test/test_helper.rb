require 'simplecov'
require 'simplecov-lcov'
# require 'coveralls'

p 111111111111111111111111111111111111
p Rails.root.join('coverage/lcov.info')

SimpleCov.start do
  SimpleCov::Formatter::LcovFormatter.config do |c|
    c.report_with_single_file = true
    c.single_report_path = Rails.root.join('coverage/lcov.info')
  end

  formatter SimpleCov::Formatter::LcovFormatter
end

# Coveralls.wear!

ENV['RAILS_ENV'] ||= 'CI'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  include FactoryBot::Syntax::Methods
  include AuthHelper
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
