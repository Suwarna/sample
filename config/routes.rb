Rails.application.routes.draw do
  resources :tasks
  resources :developers
  devise_for :users do
  	get 'sign_in' => 'devise/sessions#new' #, :as => :new_session
    get 'sign_up' => 'devise/registrations#new' #, as => :new_registration

  end

	root 'projects#index'
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
