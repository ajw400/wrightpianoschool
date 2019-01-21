Rails.application.routes.draw do

  devise_for :users
  mount Attachinary::Engine => "/attachinary"

  scope '(:locale)', locale: /en|nl/ do
    root to: 'pages#home'
    resources :teachers
    resources :messages, only: [:create]
    resource :pages, only: [] do
      member do
        get :about
        get :contact
        get :policy
        get :calendar
        get :download_policy
        get :download_calendar
        get :videos
      end
    end
    resources :paragraphs, only: [:create, :update, :destroy]
    resources :degrees, only: [:create, :update, :destroy]
    resources :students, only: [:new, :create, :update, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
