require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new
require_relative('../customer.rb')
require_relative('../drink.rb')
require_relative('../pub.rb')
require_relative('../food.rb')

class PubTest < Minitest::Test
#increase the money in the pubs till
    def setup
        @drink1 = Drink.new("Vodka",10,10)
        @drink2 = Drink.new("Beer",20,5)
        @drink3 = Drink.new("Gin",5,30)
        @drinks = [@drink1,@drink2,@drink3]
        @food1 = Food.new("crisps",10,10)
        @food2 = Food.new("nuts",5,50)
        @foods = [@food1,@food2]
        @customer = Customer.new("Frank",100,18)
        @pub = Pub.new("The Kings Lost Arm", @drinks, @foods)

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

    def test_004_add_drink_to_till
        @pub.add_to_till(@drink1)
        assert_equal(10,@pub.total_cash)
    end

    def test_005_remove_drink
        drink = @pub.remove_drink(@drink1)
        assert_equal("Vodka",drink.name)
    end

    def test006_get_total_foods
        assert_equal(2,@pub.total_foods)
    end

    def test_007_add_food_to_till
        @pub.add_to_till(@food1)
        assert_equal(10,@pub.total_cash)
    end

    def test_008_remove_food
        food = @pub.remove_food(@food1)
        assert_equal("crisps",food.name)
    end
end
