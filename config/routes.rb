Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :issues do
    resources :posts
  end

  resources :jobs

  root 'welcome#index'

  namespace :admin do
    resources :users do
      post :change
    end
    resources :jobs

    resources :issues do
      resources :posts
    end
    
    resources :posts

  end

end
