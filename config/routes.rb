Rails.application.routes.draw do

  devise_for :users
  
  root 'static_pages#index'
  get 'static_pages/contact'


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
