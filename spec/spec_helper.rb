require 'rspec'
require 'ruby_engine'

RSpec.configure do |config|
  config.expect_with(:rspec) { |c| c.syntax = :should }
end
