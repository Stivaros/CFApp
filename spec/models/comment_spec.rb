require 'rails_helper'

describe Comment do

  context "not given full information" do

    it "will not validate" do
      @comment = FactoryGirl.build(:comment, rating: nil)
      expect(@comment).not_to be_valid
    end
    
  end

end