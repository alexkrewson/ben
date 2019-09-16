Rails.application.routes.draw do
  resources :charges
  root to: 'charges#hello'

end
