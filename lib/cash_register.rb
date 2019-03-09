class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(discount=nil)
  @total=0
  @discount=discount
end

def add_item(title,price,quantity=nil)
  new_price=price*quantity
  @total+=new_price

  
end
end
