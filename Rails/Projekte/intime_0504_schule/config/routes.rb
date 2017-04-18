Rails.application.routes.draw do
  root 'works#logging'
	get 'signup' => 'users#new'
  get 'calendar' => 'events#calendar'
  resource :session
  resources :departments
  resources :events
  resources :users do
    post 'start' => 'works#start'
    patch 'end' => 'works#end'
    resources :works
    end
end
 