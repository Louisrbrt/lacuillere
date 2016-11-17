Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # prefix                verb  URI                                       controller#action
  # restaurants           get   /restaurants                              restaurants#index
  # restaurant            get   /restaurants/:id                          restaurants#show
  # new_restaurant        get   /restaurants/new                          restaurants#new
  # restaurants           post  /restaurants                              restaurants#create
  # new_restaurant_review get   /restaurants/:restaurant_id/reviews/new   reviews#new
  # restaurant_reviews    post  /restaurants/:restaurant_id/reviews       reviews#create
  resources :restaurants, only: [ :index, :show, :new, :create ] do
    resources :reviews, only: [ :new, :create ]
  end
end
