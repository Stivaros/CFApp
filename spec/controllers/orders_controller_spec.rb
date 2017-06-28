require 'rails_helper'

describe OrdersController, type: :controller do
  before do
    @user1 = FactoryGirl.create(:user)
    @order = FactoryGirl.create(:order)
  end
  
  describe "GET #index" do

    context "User is logged in" do
      before do
        sign_in @user1
      end

      it "renders the :index view" do
        get :index
        expect(response).to render_template('index')
      end
    end

    context 'No user is logged in' do

      it 'redirects to login' do
        get :index
        expect(response).to redirect_to(new_user_session_path)
      end
    
    end
    
  end
  
end