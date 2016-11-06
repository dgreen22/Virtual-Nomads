Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root 'home_pages#index'

	get '/home' => 'home_pages#index'

	get '/about-me' => 'home_pages#about'

	get '/book-now' => 'prospects#new'

	get '/blogs' => 'blog_posts#index'

	get '/videos' => 'video_posts#index'

	get '/admin' => 'devise/sessions#new'
	
	resources :prospects, :subscribers, :categories

	resources :blog_posts, :video_posts do
	  resources :comments
	end
end
