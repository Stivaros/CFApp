require 'rails_helper'

describe ProductsController, type: :controller do
  describe "GET #index" do
    it "renders the :index view" do
      get :index
      expect(response).to render_template('index')
    end
  end

  describe "GET #show" do
    before do
      @product = FactoryGirl.create(:product)
    end

    it "renders the #show view" do
      get :show, params: {id: @product.id }
      expect(response).to render_template('show')
    end
    
  end
  
end