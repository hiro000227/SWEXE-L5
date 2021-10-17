Rails.application.routes.draw do
    get 'top/main'
    post 'top/login' => 'top#login'
    get 'top/logout'
    root 'top#main'
     resources :users
     resources :tweets
     resources :likes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
