Rails.application.routes.draw do
  resources :charges
  root 'application#hello'

end
