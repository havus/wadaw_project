Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api, format: :json do
    namespace :v1 do
      resources :products, only: [:index, :show, :create, :update]
    end
  end
end
