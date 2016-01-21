Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get '/entry', to: 'home#entry', as: 'entry' 
  post '/entry', to: 'home#newentry'
end
