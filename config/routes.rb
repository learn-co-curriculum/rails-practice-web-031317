Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index]
  root to: 'users#index'

  resources :posts, only: [:new, :create, :edit, :update]

end
