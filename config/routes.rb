Rails.application.routes.draw do
  devise_for :users, controllers: {
                       sessions: "users/sessions",
                       registrations: "users/registrations",
                       passwords: "users/passwords"
                   }

  resources :profiles, only: :index

  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  root 'categories#index'
end
