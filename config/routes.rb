Rails.application.routes.draw do
  resources :mouths do
    collection do
      post :confirm
    end
  end
end
