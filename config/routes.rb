SocialDashboard::Application.routes.draw do
  root :to => 'pages#index'
  match '/index', to: 'pages#index'
end
