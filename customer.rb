class Customer

    attr_reader :name, :wallet, :drunk_gauge

    def initialize(name,cash_on_hand,age)
#should have a name and a wallet
        @name = name
        @wallet = cash_on_hand
        @drinks = []
        @age = age
        @drunk_gauge = 0
    end

    def remove_cash(drink)
        @wallet -= drink.price
    end

    def total_drinks
        return @drinks.length()
    end

    def add_drink(drink)
        @drinks.push(drink)
        @drunk_gauge += drink.alcohol_level
    end

    def buy_drink(pub,drink)
        if @age >= 18 && @drunk_gauge < 100
            remove_cash(drink)
            add_drink(drink)
            pub.add_to_till(drink)
            pub.remove_drink(drink)
        end
    end
end
