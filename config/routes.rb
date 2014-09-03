Rails.application.routes.draw do

  resources :notifications, :only => [:new, :create]

  root 'notifications#new'

end
