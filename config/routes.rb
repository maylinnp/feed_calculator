Rails.application.routes.draw do
  root "feeds#index"

  resources :feeds do
    resources :comments
  end
end
