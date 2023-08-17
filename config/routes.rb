Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :profiles, only: [:index, :create, :show, :update]
      post 'login', to: 'lances#login'
    end
  end  
end
