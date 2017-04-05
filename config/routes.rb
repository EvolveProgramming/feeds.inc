Rails.application.routes.draw do
  root 'static_pages#index'

  get 'static_pages/home'
  get 'static_pages/feeds'
  get 'static_pages/complaints'
  get 'static_pages/contact'

  devise_for :users
  
  resources :feeds do
    member do
      resources :entries, only: [:index, :show]
    end
  end

  resources :contacts do
    collection { post :import }
  end

  resources :complaints
  resources :parties
end
