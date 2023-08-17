Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'login', to: 'lances#login'
    end
  end  
end
