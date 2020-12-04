Rails.application.routes.draw do
  
  namespace :admin do
    root 'top#index'
    get "/login" => "sessions#new", as: :login
    post "/session" => "sessions#create", as: :session
    delete "/session" => "sessions#destroy"
  end
  namespace :staff, path: "" do
    root "top#index"
    get "/login" => "sessions#new", as: :login
    post "/session" => "sessions#create", as: :session
    delete "/session" => "sessions#destroy"
  end
end
