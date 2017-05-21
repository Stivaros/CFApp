require 'rails_helper'

describe User do

  context "not given valid email" do

    it "will not validate" do
      expect(User.new(email:"test", password: "password")).not_to be_valid
    end
    
  end

end