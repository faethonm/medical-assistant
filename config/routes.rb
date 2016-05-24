Rails.application.routes.draw do
  resources :appointments
  devise_for :users
  root 'home#index'
  get 'contact' => 'home#contact'

  resources :patients
end
