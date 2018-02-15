Rails.application.routes.draw do

  root 'home#index'

  get '/' => 'home#index'

  devise_for :users, controllers: {registrations: "registrations"}

  resources :events do
    resources :pictures
  end


  resources :teachers do
    resources :pictures
  end

  resources :charges
  resources :home, only: [:index]
  resources :campus, only: [:index]
  resources :admission, only: [:index]
  resources :schools, only: [:index]
  resources :contact, only: [:index]
  resources :academic, only: [:index]

  resources :conversations, only: [:create] do
    member do
      post :close
    end
    resources :messages, only: [:create]

  end
end