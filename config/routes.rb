BeastLogger::Application.routes.draw do
  
 resources :seshes do
    resources :climbs
  end

  devise_for :users


 



  root to: 'home#index'
end
