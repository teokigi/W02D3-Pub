require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new
require_relative('../customer.rb')
require_relative('../drink.rb')
require_relative('../pub.rb')
require_relative('../food.rb')

class CustomerTest < Minitest::Test
# should be able to buy a drink from the pub
#reduce money in wallet
#increase the money in the pubs till
    def setup

        @drink1 = Drink.new("Vodka",10,10)
        @drink2 = Drink.new("Beer",5,500)
        @drinks = [@drink1,@drink2]
        @food1 = Food.new("crisps",10,10)
        @food2 = Food.new("nuts",5,5)
        @foods = [@food1,@food2]
        @customer1 = Customer.new("Fred",100, 18)
        @customer2 = Customer.new("Frank", 100, 8)
        @customer3 = Customer.new("Fanny", 100, 19)
        @pub = Pub.new("The Kings Lost Arm",@drinks,@foods)
    end

    def test_001_get_name_of_customer
        assert_equal("Fred",@customer1.name)
    end

    def test_002_get_wallet_cash_of_customer
        assert_equal(100,@customer1.wallet)
    end

    def test_003_remove_cash_from_wallet
        @customer1.remove_cash(@drink1)
        assert_equal(90,@customer1.wallet)
    end

    def test_004_total_drinks
        assert_equal(0,@customer1.total_drinks)
    end

    def test_005_add_drink
        @customer1.add_drink(@drink1)
        assert_equal(1,@customer1.total_drinks)
    end

    def test_006_customer_buys_drink_from_pub
        @customer1.buy_drink(@pub, @drink1)

        assert_equal(90,@customer1.wallet)
        assert_equal(1,@customer1.total_drinks)
        assert_equal(1,@pub.total_drinks)
        assert_equal(10,@pub.till)
    end

    def test_007_customer_buys_drink_from_pub_underage
        @customer2.buy_drink(@pub, @drink1)

        assert_equal(100,@customer1.wallet)
        assert_equal(0,@customer1.total_drinks)
        assert_equal(2,@pub.total_drinks)
        assert_equal(0,@pub.till)
    end

    def test_008_check_customer_drunk_level
        assert_equal(0,@customer1.drunk_gauge)
    end

    def test_009_add_to_drunk_gauge_of_customer
        @customer1.add_drink(@drink1)
        assert_equal(10,@customer1.drunk_gauge)
    end

    def test_010_customer_buys_drink_from_pub_entoxicated
        @customer3.buy_drink(@pub, @drink2)
        @customer3.buy_drink(@pub, @drink2)

        assert_equal(1,@customer3.total_drinks)
    end

    def test_011_total_foods
        assert_equal(0,@customer1.total_foods)
    end

    def test_012_add_foods
        @customer1.add_food(@food1)
        assert_equal(1,@customer1.total_foods)
    end
end
