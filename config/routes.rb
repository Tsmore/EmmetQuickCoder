Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  devise_for :admin, controllers: {
    sessions: "admin/sessions"
  }

  scope module: :public do
    root to: 'homes#top'
    resources :users, only: [:show, :update, :destroy] do
      resources :user_progresses, only: [:create, :update]
    end
    get 'lessons/beginner', to: 'lessons#beginner', as: 'beginner_lessons'
    get 'lessons/intermediate', to: 'lessons#intermediate', as: 'intermediate_lessons'
    get 'lessons/advanced', to: 'lessons#advanced', as: 'advanced_lessons'
    resources :lessons, only: [:index, :show]
  end

  namespace :admin do
    get 'dashboard' => 'homes#top', as: 'dashboard'
    resources :users, only: [:index, :destroy]
    resources :lessons
    resources :lesson_pages
  end

end
