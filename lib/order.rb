class Order

  def initialize(menu)
    @menu = menu
    @order = []
  end

  def add(dish)
    @menu.all.each do |item|
      item.select do |k,v|
        if !(v.is_a?(Integer))
          if v.match?(dish[:name])
            dish[:quantity] -= 1
            @order << dish
          end
        end
      end
    end
  end

  def show_order()
    return @order
  end

end