Rails.application.routes.draw do

  namespace :api do
  namespace :v1 do
    get 'branches/index'
    end
  end

  namespace :api do
  namespace :v1 do
    get 'branches/show'
    end
  end

  namespace :api do
  namespace :v1 do
    get 'branches/create'
    end
  end

  namespace :api do
  namespace :v1 do
    get 'branches/update'
    end
  end

  namespace :api do
  namespace :v1 do
    get 'branches/destroy'
    end
  end

  # Change the line below to handle every request through a subdomain
  #namespace :api, constraints: { subdomain: 'api' }, path: '/' do
  namespace :api, path: '/api' do
    api_version(:module => "V1", :header => {:name => "Accept",
                                             :value => "application/vnd.coffeeshopapi.com+json; version=1"},
                                             :defaults => {:format => :json}, :default => true) do

      resources :coffeeshops, only: [:index, :show, :create, :update, :destroy]
    end
  end

end
