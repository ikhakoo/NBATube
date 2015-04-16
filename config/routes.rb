Rails.application.routes.draw do
  root 'tubes#index'
  get 'tubes' => 'tubes#index'
  
  post 'tubes' => 'tubes#create' # this is a new line of code
  get 'tubes/new' => 'tubes#new' # this is also a new line of code
end
