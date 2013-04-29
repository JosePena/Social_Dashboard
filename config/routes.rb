SocialDashboard::Application.routes.draw do
  root :to => 'pages#index'
  match '/index', to: 'pages#index'

match '/index', to: 'pages#index'
match '/mingoville', to: 'pages#mingoville'
match '/skolemat', to: 'pages#skolemat'
match '/mondiso', to: 'pages#mondiso'
match '/virtual_mingoville', to: 'pages#virtual_mingoville'
match '/classic_mingoville', to: 'pages#classic_mingoville'
match '/mingo_zone_distribution', to: 'pages#mingo_zone_distribution'
match '/mond_zone_distribution', to: 'pages#mond_zone_distribution'
match '/mingo_transactions', to: 'pages#mingo_transactions'
match '/skol_transactions', to: 'pages#skol_transactions'
match '/mond_transactions', to: 'pages#mond_transactions'
match '/skol_popular', to: 'pages#skol_popular'
match '/mond_popular', to: 'pages#mond_popular'
match '/update', to: 'pages#update'
end
