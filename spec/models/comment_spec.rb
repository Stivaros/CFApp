require 'rails_helper'

describe Comment do

  context "not given full information" do

    it "will not validate" do
      expect(Comment.new(positives: "Good", negatives: "Bad", rating: nil)).not_to be_valid
    end
    
  end

end