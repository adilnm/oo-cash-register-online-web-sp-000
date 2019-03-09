class CashRegister
  
  attr_accessor :total, :discount
  @@all=[]
  def initialize(discount=nil)
  @total=0
  @discount=discount
end

def add_item(title,price,quantity=nil)
  if(quantity)
  new_price=price*quantity
  self.total+=new_price
  @@all << title
else
  self.total+=price
  @@all << title
end
end

  def apply_discount
    if(self.discount)
    self.total=(self.total-(self.total*self.discount)/100)
    "After the discount, the total comes to $#{self.total}."
  else
    "There is no discount to apply."
  end
  end
  
  def items
    @@all
  end
end
