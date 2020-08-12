require 'resque/server'

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do
    resources :testing_queue, :only=> [:create]
  end

  mount Resque::Server.new, at: '/resque'

end
