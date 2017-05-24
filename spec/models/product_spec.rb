require 'rails_helper'

describe Product do

  context "when the Product has comments" do
    before do
      @product = Product.create!(name: "Light Revamp")
      @user = FactoryGirl.create(:user)
      @comments = @product.comments.create!(rating: 1, user: @user, positives: "Good", negatives: "Worst")
      @comments = @product.comments.create!(rating: 3, user: @user, positives: "Good", negatives: "Bad")
      @comments = @product.comments.create!(rating: 5, user: @user, positives: "Best", negatives: "Bad")
    end

    it "returns the average of all comments" do
      expect(@product.average_rating).to eq 3
    end

    it "when not valid" do
      expect(Product.new(description: "Thorough check")).not_to be_valid
    end

  end

end