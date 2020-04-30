Rails.application.routes.draw do
  resources :posts, only: %i[index create] do
    resources :likes, only: :create
    resources :reposts, only: :create
  end

  root to: 'posts#index'
end
