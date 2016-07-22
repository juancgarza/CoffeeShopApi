Rails.application.routes.draw do

  devise_for :users
  # Change the line below to handle every request through a subdomain
  #namespace :api, constraints: { subdomain: 'api' }, path: '/' do
  namespace :api, path: '/api' do
    api_version(:module => "V1", :header => {:name => "Accept",
                                             :value => "application/vnd.coffeeshopapi.com+json; version=1"},
                                             :defaults => {:format => :json}, :default => true) do

      resources :coffeeshops, only: [ :index , :show, :create, :update, :destroy]
    end
  end

end
