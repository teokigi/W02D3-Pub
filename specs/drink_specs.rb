require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new
require_relative('../customer.rb')
require_relative('../drink.rb')
require_relative('../pub.rb')

class DrinkTest < Minitest::Test

    def setup
        @drink1 =  Drink.new("Vodka",10)

    end

    def test_001_get_drink_name
        assert_equal("Vodka",@drink1.name)
    end

    def test_002_get_drink_price
        assert_equal(10,@drink1.price)
    end
end
