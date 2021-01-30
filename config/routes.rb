Rails.application.routes.draw do
  devise_for :users

  #resources :users, only: [:index, :show, :new, :create, :destooy, :edit]
  root to: "prototypes#index"
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy] do
  resources :comments, only: :create

  end
 resources :users, only: :show
  
end