require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new
require_relative('../customer.rb')
require_relative('../drink.rb')
require_relative('../pub.rb')

class PubTest < Minitest::Test
#increase the money in the pubs till
    def setup
        @drink1 = Drink.new("Vodka",10)
        @drink2 = Drink.new("Beer",20)
        @drink3 = Drink.new("Gin",5)
        @drinks = [@drink1,@drink2,@drink3]
        @pub = Pub.new("The Kings Lost Arm", @drinks)
    end

    def test_001_get_name_of_pub
        assert_equal("The Kings Lost Arm", @pub.name)
    end

    def test_002_get_till_amount
        assert_equal(0, @pub.till)
    end

    def test_003_get_total_drinks
        assert_equal(3,@pub.total_drinks)
    end
end
