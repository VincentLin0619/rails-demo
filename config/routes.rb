Rails.application.routes.draw do
  devise_for :users, controllers: { session: "users/sessions", registrations: "users/registrations" }
  root "pages#index"
end
