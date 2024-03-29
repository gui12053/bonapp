require 'rails_helper'

describe Product do
  context "when the product has comments" do

    let(:product) { Product.create!(name: "cleanser") }

    let(:user) { User.create!(email: "test@gmail.com", password: "test123") }

    before do
      product.comments.create!(rating: 1, user: user, body: "Stop it!")
      product.comments.create!(rating: 3, user: user, body: "Almost mediocre")
      product.comments.create!(rating: 5, user: user, body: "We wan't more of it")
    end

    it "returns the average rating of all comments" do
      expect(product.average_rating).to eq 3
    end

    it "returns the lowest average rating comment" do
      expect(product.lowest_rating_comment.rating).to eq 1
    end

    it "is not valid without a name" do
      expect(Product.new(description: "Some text.")).not_to be_valid
    end

  end
end
