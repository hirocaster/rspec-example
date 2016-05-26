require "rails_helper"

RSpec.describe Item, :type => :model do
  it "orders by name" do
    yakusou = Item.create!(name: "やくそう")
    hinokino_bou = Item.create!(name: "ひのきの棒")

    expect(Item.ordered_by_name).to eq([hinokino_bou, yakusou])
  end
end
