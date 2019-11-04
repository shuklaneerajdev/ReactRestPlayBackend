Rails.application.routes.draw do
  resources :comments, :defaults => {:format => :json}    
  resources :authors, :defaults => { :format => :json }
  resources :posts, :defaults => { :format => :json } do
    resources :comments, :defaults => {:format => :json}
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
