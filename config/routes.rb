Rails.application.routes.draw do
  devise_for :users, contorollers: {
       sessions: 'users/sessions',registrations: 'user/registration'
     }

  root 'home#top'
  get 'home/about'
  resources :posts, only: [:new, :create, :index, :show]
  resources :users, only: [:new, :show, :index, :update, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
