Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :issues do
    resources :posts
  end

  resources :posts do
    collection do
      get :search
      get :hot
    end
    member do
      post :like
      post :cancel_like
    end
  end

  namespace :account do
    resources :users do
      get :favorite
    end

    resources :posts do
      member do
        post :add_to_favorite_test
        get :add_to_favorite_test
        delete :remove_favorite_post
      end
    end
  end

  resources :jobs do
    collection do
      get :search
    end
  end

  root "welcome#index"

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

  resources :faqs
end
