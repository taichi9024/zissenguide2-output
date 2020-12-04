Rails.application.routes.draw do
  
  namespace :admin do
    get 'staff_events/index'
  end
  namespace :admin do
    root 'top#index'
    get "/login" => "sessions#new", as: :login
    post "/session" => "sessions#create", as: :session
    delete "/session" => "sessions#destroy"
    resources :staff_members do
      get "/detail" => "staff_events#detail"
    end  
    resources :staff_events , only:[:index]
  end
  namespace :staff, path: "" do
    root "top#index"
    get "/login" => "sessions#new", as: :login
    post "/session" => "sessions#create", as: :session
    delete "/session" => "sessions#destroy"
    resource :account , only:[:edit, :update]
  end
end
