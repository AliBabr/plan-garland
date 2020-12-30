Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
    authenticated :user do
      root "dashboard#index", as: :unauthenticated_root
    end
    unauthenticated do
      root "devise/sessions#new", as: :authenticated_root
    end
  end
  resources :designs
end
