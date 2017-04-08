Rails.application.routes.draw do

  get 'main/show'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  get 'sessions/destroy'

  get '/main' => 'main#show'

  #get '/disliked'

  resources :dislikeds
  resources :dislikes
  resources :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#show'
end
