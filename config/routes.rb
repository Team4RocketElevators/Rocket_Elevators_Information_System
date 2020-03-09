Rails.application.routes.draw do
  root to: 'en#en'
  get 'en' => 'en#en'
  get 'en/residential-buildings' => 'en#residential-buildings'
  get 'en/corporate-buildings' => 'en#corporate-buildings'

  get '/404', to: 'errors#not_found'
  get '/422', to: 'errors#unacceptable'
  get '/500', to: 'errors#server_error'


  resources :submissionforms
end
