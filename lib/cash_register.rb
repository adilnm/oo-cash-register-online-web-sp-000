class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(discount=nil)
  @total=0
  @discount=discount
end

def add_item(title,price,quantity=nil)
  if(quantity)
  new_price=price*quantity
  self.total+=new_price
else
  self.total+=price
end
end

  def apply_discount
    self.total=(self.total-(self.total*self.discount)/100)
    
  end
end
