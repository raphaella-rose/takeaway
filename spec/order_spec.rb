require 'order'

RSpec.describe Order do
  it "order returns empty array" do
    menu = double(:menu, all: [{name: "dish name1", price: "price1", quantity: 5},{name: "dish name2", price: "price2", quantity: 5}])
    order = Order.new(menu)
    expect(order.show_order).to eq []
  end

  it "adds dish to order" do
    menu = double(:menu, all: [{name: "dish name1", price: "price1", quantity: 5},{name: "dish name2", price: "price2", quantity: 5}])
    order = Order.new(menu)
    order.add({name: "dish name1", price: "price1", quantity: 5})
    expect(order.show_order).to eq [{name: "dish name1", price: "price1", quantity: 4}]
  end
  
  it "adds dishes to order then remove one" do
    menu = double(:menu, all: [{name: "dish name1", price: "price1", quantity: 5},{name: "dish name2", price: "price2", quantity: 5}])
    order = Order.new(menu)
    order.add({name: "dish name1", price: "price1", quantity: 5})
    order.add({name: "dish name2", price: "price2", quantity: 5})
    order.remove({name: "dish name2", price: "price2", quantity: 4})
    expect(order.show_order).to eq [{name: "dish name1", price: "price1", quantity: 4}]
  end



end