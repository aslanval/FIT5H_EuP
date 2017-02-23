Rails.application.routes.draw do
	get 'signup' => 'users#new'
	post 'rofl' => 'events#rofl'
	root 'users#index'
  resources :users do
  	resources :holidays
  end
  resources :departments
  resources :events
  resource :session
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
 