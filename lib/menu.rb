class Menu

  def initialize()
    @dishes = []
  
  end

  def add(dish)
    @dishes << [dish.name, dish.price]
  end
  
  def all()
    return @dishes
  end

end