Rails.application.routes.draw do

  mount Blazer::Engine, at: "blazer"
  
  devise_for :users
  get 'login', to: 'pages#login'
  
  devise_for :employees
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 
  root to: 'en#en'
  get 'en' => 'en#en'
  get 'en/residential-buildings' => 'en#residential-buildings'
  get 'en/corporate-buildings' => 'en#corporate-buildings'

  get '/404', to: 'errors#not_found'
  get '/422', to: 'errors#unacceptable'
  get '/500', to: 'errors#server_error'

  mount Blazer::Engine, at: "blazer"

  resources :submissionforms
end
