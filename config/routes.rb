Rails.application.routes.draw do
  get 'notifications/send_global'
  get 'notifications/send_direct'
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "users#new", as: "sign_up"
  resources :users

  post '/notifications/test', to: 'notifications#send_global', as: 'global_notification'

  root 'static_pages#index'

  mount ActionCable.server, at: '/cable'
end
