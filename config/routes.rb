Rails.application.routes.draw do
  
  namespace :admin do
    root 'top#index'
    get "/login" => "sessions#new", as: :login
    post "/session" => "sessions#create", as: :session
    delete "/session" => "sessions#destroy"
    resources :staff_members
  end
  namespace :staff, path: "" do
    root "top#index"
    get "/login" => "sessions#new", as: :login
    post "/session" => "sessions#create", as: :session
    delete "/session" => "sessions#destroy"
    resource :account
  end
end
