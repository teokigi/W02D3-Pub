class Pub

    attr_reader :name, :till

    def initialize(name, drinks, foods)
#should have a name, a till and a collection of drinks
        @name = name
        @drinks = drinks
        @till = 0
        @food = foods
    end

    def total_drinks
        return @drinks.length
    end

    def add_to_till(item)
        @till += item.price
    end

    def total_cash
        return @till
    end

    def remove_drink(drink)
        return @drinks.delete(drink)
    end

    def total_foods
        return @food.length
    end

    def remove_food(food)
        return @food.delete(food)
    end
end
