Rails.application.routes.draw do
  devise_for :users

  resources :questions, only: [:index, :show, :new, :create]

  root 'questions#index'
end
