Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      namespace :users do
        post 'authenticate'
      end
      resources :users, only: %i[create destroy]
    end
  end
end
