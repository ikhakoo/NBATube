Rails.application.routes.draw do
  root 'tubes#index'
  resources :tubes

  # get 'tubes' => 'tubes#index'
  
  # post 'tubes' => 'tubes#create' 
  # get 'tubes/new' => 'tubes#new' 

  # get 'tubes/:id/edit' => "tubes#edit", as: "edit_tube"
  # patch 'tubes/:id' => "tubes#update"

  # delete 'tubes/:id' => 'tubes#destroy', as: "delete_tube"

  
end
