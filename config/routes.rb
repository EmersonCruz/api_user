Rails.application.routes.draw do
  get 'sessions/new'

  get 'logins/index' ,to: 'logins#index', as: 'index_logins'
  
  get 'logins/loginConfirm' ,to: 'logins#loginConfirm', as: 'loginConfirm_logins'

  get '/users',to:'users#index', as: 'index_users'
  get '/users/new',to:'users#new', as: 'new_users'
  post '/users' ,to: 'users#create'
  get '/users/:id/edit' ,to: 'users#edit', as: 'edit_users'
  get '/users/:id' ,to: 'users#show', as: 'user'
  patch '/users/:id' ,to: 'users#update'
  put '/users/:id' ,to: 'users#update'
  delete 'users/:id' ,to: 'users#destroy', as: 'destroy_users'


  #get '/login',to:'users#login', as: 'login_users'
  resources :logins
  root 'logins#index'
  #resources :cursos
  #resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
