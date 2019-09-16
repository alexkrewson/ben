Rails.application.routes.draw do
  resources :charges
  root to: 'application#hello'

end
