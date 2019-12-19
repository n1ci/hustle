Rails.application.routes.draw do
  resources :einwohners
  resources :stadts

  root 'stadts#index'

end
