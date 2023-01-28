Rails.application.routes.draw do
 root 'homes#top'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'home/about' => 'homes#about' 
  resources :books, only: [ :create, :index, :show,:edit,:update,:destroy]
  resources :users, only: [:index,:show, :edit, :update]
end
