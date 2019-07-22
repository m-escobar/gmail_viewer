Rails.application.routes.draw do
  root to: 'gmail#main'

  get 'index', to: 'gmail#mail'
  # get 'about', to: 'static#about'
  # get 'services', to: 'static#services'
  # get 'products', to: 'static#products'
  # get 'contact', to: 'static#contact'
end
