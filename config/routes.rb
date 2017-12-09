Rails.application.routes.draw do

  resources :clients
 root'pages#home'

  get 'contact' => 'pages#contact'

  get 'divers' => 'pages#divers'

  get 'presentation' => 'pages#presentation'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
