require 'dish'

RSpec.describe Dish do
  it "returns dish name" do
    dish = Dish.new("dish_name","price")
    expect(dish.name).to eq "dish_name"
  end

  it "returns dish price" do
    dish = Dish.new("dish_name","price")
    expect(dish.price).to eq "price"
  end
end