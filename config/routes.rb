Rails.application.routes.draw do
  devise_for :users
  resources :posts, only: %i[new create index destroy]
  root 'posts#index'
end
