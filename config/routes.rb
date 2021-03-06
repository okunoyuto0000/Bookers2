Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'home#top'
  get 'home/about' => 'home#about'
  resources :books, only: [:create, :index, :show, :destroy, :edit, :update]
  resources :users, only: [:index, :show, :edit, :update]
end
