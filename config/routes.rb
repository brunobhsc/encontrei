Rails.application.routes.draw do
  root "products#index"
  
  devise_for :users
  
  resources :products do
  	resources :tags
  end
  
  resources :stores do
  	resources :tags
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
