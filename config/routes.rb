Rails.application.routes.draw do
  root "pages#index"
  devise_for :users, controllers: { session: "users/sessions", registrations: "users/registrations" }

  namespace :dashboard do
    namespace :admin do
      resources :users
    end
  end
end
