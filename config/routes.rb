BeastLogger::Application.routes.draw do


  resources :sessions do
    resources :climbs
  end


  devise_for :users

  root to: 'sessions#index'
end
