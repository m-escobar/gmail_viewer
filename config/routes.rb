Rails.application.routes.draw do
  root to: 'gmail#index'

   get 'index', to: 'gmail#index'
   get 'show/:id', to: 'gmail#show', as: 'show_mail' 
end
