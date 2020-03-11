Rails.application.routes.draw do
  get 'login', to: 'pages#login'
  devise_for :employees
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'en#en'
  get 'en' => 'en#en'
  get 'en/residential-buildings' => 'en#residential-buildings'
  get 'en/corporate-buildings' => 'en#corporate-buildings'

  %w( 404 422 500 ).each do |code|
    get code, :to => "errors#show", :code => code
  end


  resources :submissionforms
end
