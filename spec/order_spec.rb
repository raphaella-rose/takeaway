require 'order'

RSpec.describe Order do
  it "order returns empty array" do
    menu = double(:menu, all: [["dish name1", "price1"],["dish name2", "price2"]])
    order = Order.new(menu)
    expect(order.show_order).to eq []
  end

  xit "adds dish to order" do
    menu = double(:menu, all: [["dish name1", "price1"],["dish name2", "price2"]])
    order = Order.new(menu)
    order.add
    expect(order.show_order).to eq [["dish name1", "price1"]]
  end


end