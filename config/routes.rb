Rails.application.routes.draw do

  devise_for :users

  root 'feeds#index'
  get 'static_pages/contact'

  resources :stories
  delete '/logout', to: 'sessions#destroy', as: :logout
  get '/auth/:provider/callback', to: 'sessions#create'

root to: 'stories#index'


  resources :feeds do
    member do
      resources :entries, only: [:index, :show]
    end
  end

  resources :complaints

  resources :contacts do
    collection { post :import }
  end
end
