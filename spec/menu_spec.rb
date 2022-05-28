require 'menu'

RSpec.describe Menu do
  it "shows menu" do
    menu = Menu.new()
    dish_1 = double(:fake_dish, name: "dish name1", price: "price1")
    dish_2 = double(:fake_dish, name: "dish name2", price: "price2")
    menu.add(dish_1)
    menu.add(dish_2)
    expect(menu.all).to eq [["dish name1", "price1"],["dish name2", "price2"]]
  end


end