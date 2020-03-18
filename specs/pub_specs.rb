require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new
require_relative('../customer.rb')
require_relative('../drink.rb')
require_relative('../pub.rb')

class PubTest < Minitest::Test
#increase the money in the pubs till
end
