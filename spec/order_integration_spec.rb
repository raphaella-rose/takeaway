require 'order'
require 'menu'
require 'dish'
require 'receipt'

RSpec.describe "integration" do
  it "shows menu" do
    menu = Menu.new()
    dish_1 = Dish.new("dish name1","price1",5)
    dish_2 = Dish.new("dish name2","price2",5)
    menu.add(dish_1)
    menu.add(dish_2)
    expect(menu.all).to eq [["dish name1", "price1", 5],["dish name2", "price2", 5]]
  end

  it "order returns empty array" do
    menu = Menu.new()
    dish_1 = Dish.new("dish name1","price1",5)
    dish_2 = Dish.new("dish name2","price2",5)
    menu.add(dish_1)
    menu.add(dish_2)
    order = Order.new(menu)
    expect(order.show_order).to eq []
  end

  xit "adds dish to order" do
    menu = Menu.new()
    dish_1 = Dish.new("dish name1","price1",5)
    dish_2 = Dish.new("dish name2","price2",5)
    menu.add(dish_1)
    menu.add(dish_2)
    order = Order.new(menu)
    order.add
    expect(order.show_order).to eq [["dish name1","price1", 5]]
  end






end