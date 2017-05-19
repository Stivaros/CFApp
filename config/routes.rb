Rails.application.routes.draw do
  
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}, controllers: { registrations: "user_registrations" }
  
  resources :users, :orders
  resources :products do
    resources :comments
  end

  get '/about' => 'static_pages#about'

  get '/contact' => 'static_pages#contact'

  post 'static_pages/contact_submission'

  get '/index' => 'static_pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#landing_page'
end
