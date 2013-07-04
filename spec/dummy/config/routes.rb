Rails.application.routes.draw do

  mount BadgesEngine::Engine => '/badges', :as => 'badges'
  
  resources :users
  match '/dummy/assertions/new', to: 'badges_engine/assertions#new'
  match '/dummy/assertions', to: 'badges_engine/assertions#index'
  match '/dummy/assertions/callback', to: 'badges_engine/assertions#bake_callback'
  resource :session
  get 'sessions/home'
  root :to=>'users#index'
end
