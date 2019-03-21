require 'rails_helper'

describe Product do

  let(:product) { Product.create!(name: "race bike") }

  let(:user) { User.create!(email: "johannschmidt@gmail.com", password: "kaspar")}
  before do
    product.comments.create!(rating: 1, user: user, body: "Weird bike")
    product.comments.create!(rating: 3, user: user, body: "Mediocre bike")
    product.comments.create!(rating: 5, user: user, body: "Best bike ever")
  end
  it "returns the average rating of all commnents" do
    expect(product.average_rating).to eq 3
  end
  it "is not valid without a name" do
    expect(Product.new(description: "Best bike ever")).not_to be_valid
  end
end
