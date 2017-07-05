Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [ :index, :new, :create ]
  end
  resources :reviews, only: [ :show, :edit, :update, :destroy]
  root 'restaurants#index'
  # get "restaurants/:restaurant_id/reviews", to: "reviews#index"
  # #get "restaurants/:id",                    to: "restaurants#show"
  # get "reviews/:id", to: "reviews#show"
  # get "reviews/:id/edit", to: "reviews#edit"
end
