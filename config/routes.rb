Rails.application.routes.draw do
  resources :command_configs
  resource :session
  resources :passwords, param: :token
  
  get "up" => "rails/health#show", as: :rails_health_check
  get "/commands", to: "command#index"
  get "/commands/:id", to: "command#show"
  get "/lineage", to: "command#lineage"
  get "/configs", to: "command_configs#index"
  get "/configs/new", to: "command_configs#new"
  root "command_configs#index"
end
