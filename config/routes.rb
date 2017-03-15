Rails.application.routes.draw do
  root 'static_pages#index'

  get 'static_pages/home'
  get 'static_pages/about'
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
