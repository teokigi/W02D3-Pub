class Customer

    attr_reader :name, :wallet

    def initialize(name,cash_on_hand)
#should have a name and a wallet
        @name = name
        @wallet = cash_on_hand
    end

    def remove_cash(deduct_amount)
        @wallet -= deduct_amount
    end

end
