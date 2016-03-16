Rails.application.routes.draw do
  resources :projects, except: :index
  root "projects#index"
end
