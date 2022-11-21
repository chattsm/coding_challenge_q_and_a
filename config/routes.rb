Rails.application.routes.draw do
  resources :questions, only: [:index, :show, :new, :create]

  root 'questions#index'
end
