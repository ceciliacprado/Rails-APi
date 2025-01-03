Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  namespace :api, defaults: {format: :json}, 
                             constants: {subdomain: 'api'}, path: '/' do
  end 

end
