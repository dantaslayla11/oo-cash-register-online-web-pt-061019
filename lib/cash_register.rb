class CashRegister 
  
  attr_accessor  :total, :discount, :last_transaction_amount, :items
  
  def initialize(discount = 0 )
     @discount = discount 
     @total = 0
     @items = []
     
  end 
  
  def add_item(item, price, quantity=1)
    @discount = @discount/100.0
    
    @items.push(item)
    final = price * quantity
    @total += final
  end
  
  def apply_discount
    if @discount != 0.0
      price_off = @total  * @discount;
      @total -= price_off.to_i
      return  "After the discount, the total comes to $#{@total}."
    end
    
  end
    
  
end 
