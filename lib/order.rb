class Order

  def initialize(menu)
    @menu = menu
    @order = []
  end

  def add()
    p @menu
  end

  def show_order()
    return @order
  end

end