Rails.application.routes.draw do
  root 'holidays#index'

  devise_for :users
  resources :holidays do
    resources :tour_comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
