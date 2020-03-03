Rails.application.routes.draw do
  root to: 'pages#admin'
  devise_for :views
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
