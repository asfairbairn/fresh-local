Rails.application.routes.draw do
  
  resources :cart_items, only: [:create, :show, :update, :destroy]
  resources :cart_details, only: [:create, :show] do
    resources :cart_items, only: [:create]
  end
  resources :reviews, only: [:create, :show, :destroy]
  resources :products
  resources :product_categories
  resources :users
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
