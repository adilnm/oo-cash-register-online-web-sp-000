class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(discount=nil)
  @total=0
  @discount=discount
end

def add_item(title,price,quantity=nil)
  if(quantity)
  new_price=price*quantity
  @total+=new_price
else
  @total+=price
end
end

  def apply_discount
    
  end
end
