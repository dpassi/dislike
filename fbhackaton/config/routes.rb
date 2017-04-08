Rails.application.routes.draw do
  resources :dislikeds
  resources :dislikes
  resources :users
  root 'bubbles#index'
  resources :bubbles do
    post :up_quantity,  on: :collection
  end
  
  get "bubbles/get_quantity.json", to: "bubbles#get_quantity"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
