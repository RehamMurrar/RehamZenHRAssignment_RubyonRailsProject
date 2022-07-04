Rails.application.routes.draw do
  #get 'controls/login'

  root "home#home" #
  #root "job_posts#index"
  resources :job_posts do
    resources :job_applications
  end
  #resources :job_application_states

  resources :users
  match ':controller(/:action(/:id))',:via=> [:get ,:post]
  #resources :user_types
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
