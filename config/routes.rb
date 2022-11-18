Rails.application.routes.draw do
  get 'questions/index'
  root 'questions#index'
end
