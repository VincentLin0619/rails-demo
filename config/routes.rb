Rails.application.routes.draw do
  get "/", to: "products#index"
  devise_for :users, controllers: { session: "users/sessions", registrations: "users/registrations" }

  resources :products, only: [:index, :show]
  namespace :dashboard do
    namespace :admin do
      resources :users
    end
  end
end
