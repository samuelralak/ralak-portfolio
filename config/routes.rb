Rails.application.routes.draw do
  devise_for :users, skip: [:registrations] 
  resources :projects, except: :index
  resources :project_images do
  	collection do
  		post :upload_multiple
  	end
  end

  root "projects#index"
end
