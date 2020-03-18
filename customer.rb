class Customer

    attr_reader :name, :wallet, :drunk_gauge

    def initialize(name,cash_on_hand,age)
#should have a name and a wallet
        @name = name
        @wallet = cash_on_hand
        @drinks = []
        @age = age
        @drunk_gauge = 0
        @foods = []
    end

    def remove_cash(item)
        @wallet -= item.price
    end

    def total_drinks
        return @drinks.length
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

    def total_foods
        return @foods.length
    end

    def add_food(food)
        @foods.push(food)
        @drunk_gauge -= food.rejuvenation_level
    end
end
