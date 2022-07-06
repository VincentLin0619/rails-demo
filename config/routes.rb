Rails.application.routes.draw do
  devise_for :users, controllers: { session: "users/sessions", registrations: "users/registrations" }

  root "products#index"
  resources :products, only: [:index, :show]
  namespace :dashboard do
    namespace :admin do
      resources :users
    end
  end
end
