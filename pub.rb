class Pub

    attr_reader :name, :till

    def initialize(name, drinks)
#should have a name, a till and a collection of drinks
        @name = name
        @drinks = drinks
        @till = 0
    end

    

end
