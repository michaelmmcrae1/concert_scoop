ConcertScoopServer::Application.routes.draw do
  devise_for :users, :controllers => {:omniauth_callbacks => "users/omniauth_callbacks"}

  root :to => 'welcome#home'
  resources :concerts
  match 'auth/:provider/callback', to: 'sessions#create'
end
