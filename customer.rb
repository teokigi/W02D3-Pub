class Customer

    attr_reader :name, :wallet

    def initialize(name,cash_on_hand)
#should have a name and a wallet
        @name = name
        @wallet = cash_on_hand
        @drinks = []
    end

    def remove_cash(drink)
        @wallet -= drink.price
    end

    def total_drinks
        return @drinks.length()
    end

    def add_drink(drink)
        @drinks.push(drink)
    end

    def buy_drink(pub,drink)
        remove_cash(drink)
        add_drink(drink)
        pub.add_to_till(drink)
        pub.remove_drink(drink)
    end
end
