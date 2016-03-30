Rails.application.routes.draw do

  devise_for :users
    resources :users
    resources :my_meetings
    resources :meetings

  root to: 'my_meetings#index'
    get '/profile', to: 'users#show'
    get '/profile', :action=>"show", :controller=>"devise/users"
    get '/my_meetings', :action=>"index", :controller=>"my_meetings"
    get '/meetings', :action=>"index", :controller=>"meetings"
    get '/calendar', :action=>"show", :controller=>"my_meetings"
end
