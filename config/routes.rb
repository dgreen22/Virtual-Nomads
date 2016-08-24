Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'home_pages#index'

get '/home' => 'home_pages#index'

get '/about-me' => 'home_pages#about'

get '/book-now' => 'prospects#new'

get '/suppliers' => 'home_pages#suppliers'

resources :prospects

end
