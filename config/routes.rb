Rails.application.routes.draw do
  root "products#index"
  
  resources :products do
    collection do 
      post 'sort'
      post 'search'
      post 'search_by_city'
      post 'search_for_city_category'
    end
  end
end
