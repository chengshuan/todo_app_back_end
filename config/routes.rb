Rails.application.routes.draw do
get 'index',to:'todo#index'
get 'show/:id',to:'todo#show'
get 'construction',to:'todo#construction'
get 'todo/new', to:'todo#new' 
end