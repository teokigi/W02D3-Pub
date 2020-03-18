class Drink

    attr_reader :name, :price, :alcohol_level

    def initialize(name, price, alcohol_level)
#Should have a name and a price
        @name = name
        @price = price
        @alcohol_level = alcohol_level
    end

end
