Rails.application.routes.draw do
	resources :events do
 		resources :registrations
 	end

root 'events#index' #zeigt die events/index.html.erb an wenn localhost:3000 geöffnet wird
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get "events" => "events#index"
  #get "events/:id" => "events#show"
end
