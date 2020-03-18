require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new
require_relative('../customer.rb')
require_relative('../drink.rb')
require_relative('../pub.rb')

class CustomerTest < Minitest::Test
# should be able to buy a drink from the pub
#reduce money in wallet
#increase the money in the pubs till
    def setup

        @drink1 = Drink.new("Vodka",10)
        @drink2 = Drink.new("Beer",5)
        @drinks = [@drink1,@drink2]
        @customer1 = Customer.new("Fred",100)
    end

    def test_001_get_name_of_customer
        assert_equal("Fred",@customer1.name)
    end

    def test_002_get_wallet_cash_of_customer
        assert_equal(100,@customer1.wallet)
    end

    def test_003_remove_cash_from_wallet
        @customer1.remove_cash(5)
        assert_equal(95,@customer1.wallet)
    end

    def test_004_total_drinks
        assert_equal(0,@customer1.total_drinks)
    end

    def test_005_add_drink
        @customer1.add_drink(@drink1)
        assert_equal(1,@customer1.total_drinks)
    end

    def test_006_customer_buys_drink_from_pub

    end
end
