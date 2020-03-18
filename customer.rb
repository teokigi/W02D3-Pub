class Customer

    attr_reader :name, :wallet

    def initialize(name,cash_on_hand)
#should have a name and a wallet
        @name = name
        @wallet = cash_on_hand
        @drinks = []
    end

    def remove_cash(deduct_amount)
        @wallet -= deduct_amount
    end

    def total_drinks
        return @drinks.length()
    end

    def add_drink(drink)
        @drinks.push(drink)
    end
end
