SPEC_ROOT = File.dirname(__FILE__).freeze

require "rspec"
require "cfoundry"
require "cfoundry/test_support"
require "cf"
require "cf/test_support"

require "#{SPEC_ROOT}/../lib/tunnel-cf-plugin/plugin"

RSpec.configure do |c|
  c.include Fake::FakeMethods
  c.include ::FakeHomeDir
end
