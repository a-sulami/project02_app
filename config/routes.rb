Rails.application.routes.draw do
  resources :last_episodes

  delete 'last_episodes/:id', to: 'last_episodes#destroy', as: "delete_epi"
  resources :last_episodes do
    resources :comments
  end
  get "last_episodes/new", to: "last_episodes#new"
  get "last_episodes/index", to: "last_episodes#index"
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy', as: 'destroy_user_session_via_get'
  end
  root "last_episodes#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
