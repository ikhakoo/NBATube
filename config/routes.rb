Rails.application.routes.draw do
  root 'tubes#index'
  resources :tubes

end
