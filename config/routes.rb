Rails.application.routes.draw do

  namespace :admin do
    root 'top#index'
  end
  namespace :staff do
    root "top#index"
  end
end
