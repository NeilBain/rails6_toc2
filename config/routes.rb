Rails.application.routes.draw do
  get 'static/home'
  get 'static/about'
  get 'static/help'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	resources :projects do
		resources :tasks do
			get 'ranked', on: :member
		end
	end

	root to: 'static#home'
end
