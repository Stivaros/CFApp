require 'rails_helper'

describe User do

  context "not given valid email" do

    it "will not validate" do
      @user = FactoryGirl.build(:user, email: "invalid_email")
      expect(@user).not_to be_valid
    end
    
  end

end