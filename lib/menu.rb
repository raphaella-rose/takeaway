class Menu

  def initialize()
    @dishes = []
  
  end

  def add(dish)
    @dishes << {name: dish.name, price: dish.price, quantity: dish.quantity}
  end
  
  def all()
    return @dishes
  end

end