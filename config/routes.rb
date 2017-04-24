Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Commontator::Engine => '/commontator'
  devise_for :users, :controllers => { registrations: 'registrations' }

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

  root 'static_pages#index'
  get 'static_pages/contact'

end
