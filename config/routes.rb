Rails.application.routes.draw do

  namespace :staff do
    resources :accounts, except: %i(edit update destroy)
    get '/', to: 'accounts#index'
  end

  resources :organizations
  resources :accounts
end
