Rails.application.routes.draw do
  get 'home/index'
  post 'home/extensions'
  root 'home#index'
end