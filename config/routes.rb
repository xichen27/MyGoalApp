Rails.application.routes.draw do
  resources :users do
    resources :goals, only: [:index]
  end
  resource :session
  resources :goals, except: [:index]
end
