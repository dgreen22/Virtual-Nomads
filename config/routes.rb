Rails.application.routes.draw do
  get 'admin/name'

  get 'admin/email'

  get 'admin/login'

  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root 'home_pages#index'

	get '/home' => 'home_pages#index'

	get '/about-me' => 'home_pages#about'

	get '/book-now' => 'prospects#new'

	get '/travel-tales' => 'blog_posts#index'

	get '/virtual-nomads-tv' => 'video_posts#index'

	get '/admin' => 'devise/sessions#new'
	
	resources :prospects, :subscribers, :categories

	resources :blog_posts, :video_posts do
	  resources :comments
	end
end
