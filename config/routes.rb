Rails.application.routes.draw do
  get 'addresses/new'

  get 'addresses/create'

  resources :students do
    resources :addresses
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
