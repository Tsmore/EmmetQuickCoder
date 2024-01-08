Rails.application.routes.draw do


  namespace :public do
    get 'users/show'
  end
  devise_for :users, controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  devise_for :admin, controllers: {
    sessions: "admin/sessions"
  }

  scope module: :public do
    root to: 'homes#top'
    resources :users, only: [:show, :update, :destroy]
  end

end
