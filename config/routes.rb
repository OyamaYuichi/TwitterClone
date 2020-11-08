Rails.application.routes.draw do
  root to: 'mouths#index'
  resources :mouths do
    collection do
      post :confirm
    end
  end
end
