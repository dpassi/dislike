Rails.application.routes.draw do
  get 'maps', to: "maps#index"
  get 'maps/show', to: "maps#show"
  get 'topics/display', to: "topics#display"
  get 'twitter/weighting', to: "twitter#weighting"

  resources :topics
  resources :votes

  devise_for :users
  root 'home#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
