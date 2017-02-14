Rails.application.routes.draw do
  root 'feeds#index'
  resources :feeds do
    member do
      resources :entries, only: [:index, :show]
    end
  end

  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/contact'
end
