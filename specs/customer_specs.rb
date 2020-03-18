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
end
