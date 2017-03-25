Rails.application.routes.draw do
  get 'complaints/index'

  devise_for :users
  root 'static_pages#index'

  get 'static_pages/home'
  get 'static_pages/feeds'
  get 'static_pages/complaints'
  get 'static_pages/contact'

  resources :feeds do
    member do
      resources :entries, only: [:index, :show]
    end
  end

  resources :contacts do
    collection { post :import }
  end
end
