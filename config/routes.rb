Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get 'landing', to: 'home#landing'

  devise_for :users
  get 'users/profile'
  root 'home#index'
  get 'users/profile', as: :user_root
  get 'courses', to: 'courses#index', as: :courses
  get 'course.:id(.:format)', to: 'courses#course', as: :course
  get 'lesson.:id(.:format)', to: 'courses#lesson', as: :lesson
  get 'hometasks', to: 'hometasks#index', as: :hometasks
  get 'hometask.:id(.:format)', to: 'hometasks#hometask', as: :hometask
  put 'hometask.:id(.:format)', to: 'hometasks#hometask_send', as: :hometask_send
  put 'hometasks', to: 'hometasks#hometask_new', as: :hometask_new

  get 'news', to: 'news#index', as: :news
  get 'new.:id(.:format)', to: 'news#new', as: :new
  get 'language/:language', to: 'application#set_language', as: :language
  get 'faq', to: 'faq#index', as: :faq
  get 'rules', to: 'home#rules', as: :rules

  post 'comment/new', to: 'courses#comment_new', as: :comments


end
