Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do 
      resources :languages
    end 
  end
  namespace :api do
    namespace :v1 do
      resources :quiz_translations
    end
  end
  namespace :api do
    namespace :v1 do
      resources :quizzes
    end 
  end 
  namespace :api do
    namespace :v1 do
      resources :translations
    end
  end
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end 
end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html




