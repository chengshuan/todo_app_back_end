Rails.application.routes.draw do
root to: 'todo#index'
get 'show/:id',to:'todo#show'
get 'construction',to:'todo#construction'
get 'new', to:'todo#new' 
get 'create', to:'todo#create'
end