require 'dish'

RSpec.describe Dish do
  it "returns dish name" do
    dish = Dish.new("dish_name","price",5)
    expect(dish.name).to eq "dish_name"
  end

  it "returns dish price" do
    dish = Dish.new("dish_name","price",5)
    expect(dish.price).to eq "price"
  end

  it "returns dish quantity" do
    dish = Dish.new("dish_name","price",5)
    expect(dish.quantity).to eq 5
  end
end