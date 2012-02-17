Library::Application.routes.draw do
  
  resources :books do
    collection do
      get :search
    end
    resources :reservations do  #only: [:create, :new] do
      member do
        put :free
      end
    end
  end
  
  root :to => 'site#index'

end
