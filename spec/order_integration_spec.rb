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
    expect(menu.all).to eq [{name: "dish name1", price: "price1", quantity: 5},{name: "dish name2", price: "price2", quantity: 5}]
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

  it "adds dish to order" do
    menu = Menu.new()
    dish_1 = Dish.new("dish name1","price1",5)
    dish_2 = Dish.new("dish name2","price2",5)
    menu.add(dish_1)
    menu.add(dish_2)
    order = Order.new(menu)
    order.add({name: "dish name1", price: "price1", quantity: 5})
    expect(order.show_order).to eq [{name: "dish name1", price: "price1", quantity: 4}]
  end






end