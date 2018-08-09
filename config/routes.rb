Rails.application.routes.draw do
  get 'home/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "home#index"

  namespace 'api' do
    namespace 'v1' do
      resources :spots
      post 'auth_user' => 'authentication#authenticate_user' #'controlador#método'
      post 'sign_up' => 'registration#create'
      
    end
  end
end
