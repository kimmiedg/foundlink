Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root to: "v1/pages#index"
  namespace :v1 do
    resources :pages, only: [ :index ]
  end
end
