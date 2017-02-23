Rails.application.routes.draw do
  resources :overview
  resources :lendings
	root 'authors#index'
	resource :session
	resources :users
  resources :authors do
  	resources :books
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
