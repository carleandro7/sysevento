Rails.application.routes.draw do
  devise_for :users , 
  controllers: { 
    sessions: 'users/sessions'
  }, 
  path_names: { 
    sign_in: 'login', 
    sign_out: 'logout' 
  }
  devise_scope :users do
    get 'signin', to: 'users/sessions#new'
    get 'signout', to: 'users/registrations#destroy'
  end
  resources :inscricaos
  resources :eventos
  resources :users

  root "users#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
