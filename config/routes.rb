Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'gowns#homepage'

  resources :gowns 
  resources :users do
      # fav.lists and trialrequests are dependent on user
      # to access it will have to go through user:
          # for example  gowns/:gown_id/favourite_lists
    resources :favourite_lists
    resources :trial_requests
  end 

  resource :sessions, only: [:new, :create, :destroy]

  # resources :available_times
end
