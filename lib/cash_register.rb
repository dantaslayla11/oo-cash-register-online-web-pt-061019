class CashRegister 
  
  attr_accessor  :total, :discount, :last_transaction_amount, :items
  
  def initialize(discount = 0 )
     @discount = discount 
     @total = 0
     @items = []
     
  end 
  
  def add_item(item, price, quantity=1)
    @discount = @discount/100.0
    puts @discount
    @items.push(item)
    final = price * quantity
    @total += final
  end
  
end 
