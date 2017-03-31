Rails.application.routes.draw do

  resources :products

  resources :orders, only: [:index, :show, :create, :destroy]

  get '/about' => 'static_pages#about'

  get '/contact' => 'static_pages#contact'

  get '/index' => 'static_pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#landing_page'
end
