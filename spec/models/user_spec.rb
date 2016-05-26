require "rails_helper"

RSpec.describe User, :type => :model do
  it "orders by name" do
    david = User.create!(name: "David")
    andy = User.create!(name: "Andy")

    expect(User.ordered_by_name).to eq([andy, david])
  end
end
