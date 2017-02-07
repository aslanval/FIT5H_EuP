Rails.application.routes.draw do

  resources :categories
	root 'events#index'

	get 'signup' => 'users#new'

	resource :session
 	resources :users
	resources :events do
		resources :likes
 		resources :registrations
 	end

 #zeigt die events/index.html.erb an wenn localhost:3000 geöffnet wird
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get "events" => "events#index"
  #get "events/:id" => "events#show"
end 
 