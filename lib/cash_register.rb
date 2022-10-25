class CashRegister
    attr_accessor :items, :discount, :total, :amount
    def initialize(discount = 0)
        @items = []
        @discount = discount
        @total = 0
    end
    def add_item(item, price, quantity = 1)
        @last_transaction = price * quantity
        @total += @last_transaction
        quantity.times do
            @items << item
    end
end
    def apply_discount
        @discount > 0 ? "After the discount, the total comes to $#{@total -= @total * @discount / 100}." : "There is no discount to apply."
    end
    def void_last_transaction
        @total -= @last_transaction
    end
    end 