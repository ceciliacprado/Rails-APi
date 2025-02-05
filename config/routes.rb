# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  namespace :api, defaults: { format: :json },
                  constants: { subdomain: 'api' }, path: '/' do
    scope module: :v1, 
                constraints: ApiTest.new(version: 1, default: true) do
    end
  end
end
