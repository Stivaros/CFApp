Rails.application.routes.draw do

  devise_for :users
  resources :users
  resources :products

  resources :orders

  get '/about' => 'static_pages#about'

  get '/contact' => 'static_pages#contact'

  post 'static_pages/contact_submission'

  get '/index' => 'static_pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#landing_page'
end
