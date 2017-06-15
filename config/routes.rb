Rails.application.routes.draw do
  get 'home/index'
  post 'home/custom_calculations'
  post 'home/extensions'
  root 'home#index'
end