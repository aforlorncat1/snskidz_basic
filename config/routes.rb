Rails.application.routes.draw do 
  root 'pages#home'
 resources :car_seat_items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 get 'pages/about_us'

  get 'pages/articles'

get 'pages/seat_type'
  

end
