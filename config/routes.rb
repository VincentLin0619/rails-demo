Rails.application.routes.draw do
  root "pages#index"
  devise_for :users, controllers: { session: "users/sessions", registrations: "users/registrations" }

  resources :products, only: [:index, :show]
  namespace :dashboard do
    namespace :admin do
      resources :users
    end
  end
end
