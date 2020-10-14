Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  devise_for :users, contorollers: {
       sessions: 'users/sessions',registrations: 'user/registration'
     }

  root 'home#top'
  get 'home/about'
  resources :posts do
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
