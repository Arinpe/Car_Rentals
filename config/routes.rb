Rails.application.routes.draw do
<<<<<<< HEAD
  root to: "api/v1/users#index"
  scope module: 'api' do
    namespace :v1 do
      resources :users, only: %i[create show]
      resources :cars, only: %i[index show]
      post 'appointments', to: 'users#new_appointment'
    end
  end
end
=======
  resource :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
end
>>>>>>> 8802620d73c5f55fb978631e92d12330e1d0a2b7
